@interface ProgressInfo
- (id)description;
@end

@implementation ProgressInfo

- (id)description
{
  if ([(ASDProgress *)self->_asdProgress phase]== 2)
  {
    v17.receiver = self;
    v17.super_class = ProgressInfo;
    v3 = [(ProgressInfo *)&v17 description];
    bundleID = self->_bundleID;
    progressPercentage = self->_progressPercentage;
    [(ASDProgress *)self->_asdProgress throughput];
    v7 = v6;
    secondsRemaining = [(ASDProgress *)self->_asdProgress secondsRemaining];
    v9 = sub_100404660(self, [(ASDProgress *)self->_asdProgress phase]);
    [NSString stringWithFormat:@"%@: {bundleID = %@; fractionCompleted = %.3f; throughput = %.0f; remaining = %ld phase = %@}", v3, bundleID, *&progressPercentage, v7, secondsRemaining, v9];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ProgressInfo;
    v3 = [(ProgressInfo *)&v16 description];
    v10 = self->_bundleID;
    v11 = self->_progressPercentage;
    v9 = sub_100404660(self, [(ASDProgress *)self->_asdProgress phase]);
    [NSString stringWithFormat:@"%@: {bundleID = %@; fractionCompleted = %.3f; phase = %@}", v3, v10, *&v11, v9, v14, v15];
  }
  v12 = ;

  return v12;
}

@end