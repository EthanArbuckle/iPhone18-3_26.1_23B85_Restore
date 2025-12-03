@interface TTRComplicationPresenter
+ (Class)templateGeneratorClassForComplicationFamily:(int64_t)family;
+ (id)templateGeneratorForComplicationFamily:(int64_t)family;
- (NSURL)launchURLForTimelineEntries;
- (TTRComplicationPresenter)initWithModelSource:(id)source router:(id)router complicationFamily:(int64_t)family;
- (TTRComplicationPresenterDelegate)delegate;
- (void)complicationTimelineModelSourceModelDidChange:(id)change;
- (void)pauseViewModelUpdates;
- (void)resumeViewModelUpdates;
- (void)setViewModel:(id)model;
@end

@implementation TTRComplicationPresenter

- (TTRComplicationPresenter)initWithModelSource:(id)source router:(id)router complicationFamily:(int64_t)family
{
  sourceCopy = source;
  routerCopy = router;
  v19.receiver = self;
  v19.super_class = TTRComplicationPresenter;
  v11 = [(TTRComplicationPresenter *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_modelSource, source);
    [(TTRComplicationTimelineModelSource *)v12->_modelSource setDelegate:v12];
    objc_storeStrong(&v12->_router, router);
    v13 = [objc_opt_class() templateGeneratorForComplicationFamily:family];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = +[REMLog ui];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_7B7C(family, v16);
      }

      v15 = objc_alloc_init(TTREmptyComplicationTemplateGenerator);
    }

    templateGenerator = v12->_templateGenerator;
    v12->_templateGenerator = v15;

    [(TTRComplicationPresenter *)v12 complicationTimelineModelSourceModelDidChange:v12->_modelSource];
  }

  return v12;
}

- (void)complicationTimelineModelSourceModelDidChange:(id)change
{
  changeCopy = change;
  v5 = [TTRComplicationTimelineViewModel alloc];
  model = [changeCopy model];

  templateGenerator = [(TTRComplicationPresenter *)self templateGenerator];
  v7 = [(TTRComplicationTimelineViewModel *)v5 initWithTimelineModel:model templateGenerator:templateGenerator];
  [(TTRComplicationPresenter *)self setViewModel:v7];
}

- (void)pauseViewModelUpdates
{
  modelSource = [(TTRComplicationPresenter *)self modelSource];
  [modelSource pauseUpdates];
}

- (void)resumeViewModelUpdates
{
  modelSource = [(TTRComplicationPresenter *)self modelSource];
  [modelSource resumeUpdates];
}

- (NSURL)launchURLForTimelineEntries
{
  viewModel = [(TTRComplicationPresenter *)self viewModel];
  v4 = +[NSDate date];
  v5 = [viewModel entriesInSameDayAsDate:v4 limit:1];

  router = [(TTRComplicationPresenter *)self router];
  v7 = [router launchURLForTimelineWithEntryCount:{objc_msgSend(v5, "count")}];

  return v7;
}

+ (Class)templateGeneratorClassForComplicationFamily:(int64_t)family
{
  if (NTKComplicationFamilyUtilitarianLargeNarrow == family)
  {
    v4 = off_10300;
    goto LABEL_3;
  }

  if (family <= 0xC && ((0x1FDFu >> family) & 1) != 0)
  {
    v4 = (&off_104C0)[family];
LABEL_3:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  v6 = 0;

  return v6;
}

+ (id)templateGeneratorForComplicationFamily:(int64_t)family
{
  v3 = objc_alloc_init([self templateGeneratorClassForComplicationFamily:family]);

  return v3;
}

- (void)setViewModel:(id)model
{
  objc_storeStrong(&self->_viewModel, model);
  delegate = [(TTRComplicationPresenter *)self delegate];
  [delegate complicationPresenterDidUpdateViewModel:self];
}

- (TTRComplicationPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end