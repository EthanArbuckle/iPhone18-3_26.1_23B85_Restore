@interface FREditorialOverrideItem
- (FREditorialOverrideItem)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 subtitleColorString:(id)a6 actionUrlString:(id)a7;
@end

@implementation FREditorialOverrideItem

- (FREditorialOverrideItem)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 subtitleColorString:(id)a6 actionUrlString:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007572C();
  }

  v29.receiver = self;
  v29.super_class = FREditorialOverrideItem;
  v17 = [(FREditorialOverrideItem *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v13 copy];
    title = v17->_title;
    v17->_title = v20;

    v22 = [v14 copy];
    subtitle = v17->_subtitle;
    v17->_subtitle = v22;

    v24 = [v15 copy];
    subtitleColorString = v17->_subtitleColorString;
    v17->_subtitleColorString = v24;

    v26 = [v16 copy];
    actionUrlString = v17->_actionUrlString;
    v17->_actionUrlString = v26;
  }

  return v17;
}

@end