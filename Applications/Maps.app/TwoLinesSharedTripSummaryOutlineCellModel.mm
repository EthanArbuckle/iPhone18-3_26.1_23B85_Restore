@interface TwoLinesSharedTripSummaryOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesSharedTripSummaryOutlineCellModel)initWithSharedTripSummary:(id)summary accessoryModels:(id)models backgroundModel:(id)model;
@end

@implementation TwoLinesSharedTripSummaryOutlineCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = TwoLinesSharedTripSummaryOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v13 isEqual:v6])
    {
      sharedTripSummary = [(TwoLinesSharedTripSummaryOutlineCellModel *)v6 sharedTripSummary];
      v8 = sharedTripSummary;
      if (sharedTripSummary == self->_sharedTripSummary || [(SharedTripSummary *)sharedTripSummary isEqual:?])
      {
        accessoryModels = [(TwoLinesSharedTripSummaryOutlineCellModel *)v6 accessoryModels];
        v10 = accessoryModels;
        if (accessoryModels == self->_accessoryModels)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSArray *)accessoryModels isEqual:?];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TwoLinesSharedTripSummaryOutlineCellModel)initWithSharedTripSummary:(id)summary accessoryModels:(id)models backgroundModel:(id)model
{
  summaryCopy = summary;
  modelsCopy = models;
  modelCopy = model;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100F94E54;
  v16[3] = &unk_10165F728;
  objc_copyWeak(&v17, &location);
  v15.receiver = self;
  v15.super_class = TwoLinesSharedTripSummaryOutlineCellModel;
  v12 = [(TwoLinesBasicOutlineCellModel *)&v15 initWithBackgroundModel:modelCopy contentModelBlock:v16];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sharedTripSummary, summary);
    objc_storeStrong(&v13->_accessoryModels, models);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

@end