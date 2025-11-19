@interface TTRComplicationPresenter
+ (Class)templateGeneratorClassForComplicationFamily:(int64_t)a3;
+ (id)templateGeneratorForComplicationFamily:(int64_t)a3;
- (NSURL)launchURLForTimelineEntries;
- (TTRComplicationPresenter)initWithModelSource:(id)a3 router:(id)a4 complicationFamily:(int64_t)a5;
- (TTRComplicationPresenterDelegate)delegate;
- (void)complicationTimelineModelSourceModelDidChange:(id)a3;
- (void)pauseViewModelUpdates;
- (void)resumeViewModelUpdates;
- (void)setViewModel:(id)a3;
@end

@implementation TTRComplicationPresenter

- (TTRComplicationPresenter)initWithModelSource:(id)a3 router:(id)a4 complicationFamily:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = TTRComplicationPresenter;
  v11 = [(TTRComplicationPresenter *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_modelSource, a3);
    [(TTRComplicationTimelineModelSource *)v12->_modelSource setDelegate:v12];
    objc_storeStrong(&v12->_router, a4);
    v13 = [objc_opt_class() templateGeneratorForComplicationFamily:a5];
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
        sub_7B7C(a5, v16);
      }

      v15 = objc_alloc_init(TTREmptyComplicationTemplateGenerator);
    }

    templateGenerator = v12->_templateGenerator;
    v12->_templateGenerator = v15;

    [(TTRComplicationPresenter *)v12 complicationTimelineModelSourceModelDidChange:v12->_modelSource];
  }

  return v12;
}

- (void)complicationTimelineModelSourceModelDidChange:(id)a3
{
  v4 = a3;
  v5 = [TTRComplicationTimelineViewModel alloc];
  v8 = [v4 model];

  v6 = [(TTRComplicationPresenter *)self templateGenerator];
  v7 = [(TTRComplicationTimelineViewModel *)v5 initWithTimelineModel:v8 templateGenerator:v6];
  [(TTRComplicationPresenter *)self setViewModel:v7];
}

- (void)pauseViewModelUpdates
{
  v2 = [(TTRComplicationPresenter *)self modelSource];
  [v2 pauseUpdates];
}

- (void)resumeViewModelUpdates
{
  v2 = [(TTRComplicationPresenter *)self modelSource];
  [v2 resumeUpdates];
}

- (NSURL)launchURLForTimelineEntries
{
  v3 = [(TTRComplicationPresenter *)self viewModel];
  v4 = +[NSDate date];
  v5 = [v3 entriesInSameDayAsDate:v4 limit:1];

  v6 = [(TTRComplicationPresenter *)self router];
  v7 = [v6 launchURLForTimelineWithEntryCount:{objc_msgSend(v5, "count")}];

  return v7;
}

+ (Class)templateGeneratorClassForComplicationFamily:(int64_t)a3
{
  if (NTKComplicationFamilyUtilitarianLargeNarrow == a3)
  {
    v4 = off_10300;
    goto LABEL_3;
  }

  if (a3 <= 0xC && ((0x1FDFu >> a3) & 1) != 0)
  {
    v4 = (&off_104C0)[a3];
LABEL_3:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  v6 = 0;

  return v6;
}

+ (id)templateGeneratorForComplicationFamily:(int64_t)a3
{
  v3 = objc_alloc_init([a1 templateGeneratorClassForComplicationFamily:a3]);

  return v3;
}

- (void)setViewModel:(id)a3
{
  objc_storeStrong(&self->_viewModel, a3);
  v4 = [(TTRComplicationPresenter *)self delegate];
  [v4 complicationPresenterDidUpdateViewModel:self];
}

- (TTRComplicationPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end