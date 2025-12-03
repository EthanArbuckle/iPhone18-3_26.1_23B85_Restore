@interface NSLayoutXAxisAnchor
- (id)_maps_constraintWithRHDAnchor:(id)anchor relation:(int64_t)relation constant:(double)constant priority:(float)priority;
@end

@implementation NSLayoutXAxisAnchor

- (id)_maps_constraintWithRHDAnchor:(id)anchor relation:(int64_t)relation constant:(double)constant priority:(float)priority
{
  anchorCopy = anchor;
  item = [(NSLayoutXAxisAnchor *)self item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = item;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    window = [v13 window];
    if ([window _car_isHybridInstrumentCluster])
    {
      window2 = [v13 window];
      v16 = [window2 _car_hybridInstrumentClusterAlignment] == 2;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = +[MapsExternalDevice sharedInstance];
  rightHandDrive = [v17 rightHandDrive];

  if ((rightHandDrive & 1) != 0 || v16)
  {
    constant = -constant;
    if (relation == -1)
    {
LABEL_18:
      v20 = [(NSLayoutXAxisAnchor *)self constraintGreaterThanOrEqualToAnchor:anchorCopy constant:constant];
      goto LABEL_20;
    }

    if (relation == 1)
    {
LABEL_17:
      v20 = [(NSLayoutXAxisAnchor *)self constraintLessThanOrEqualToAnchor:anchorCopy constant:constant];
LABEL_20:
      v21 = v20;
      goto LABEL_21;
    }
  }

  switch(relation)
  {
    case 1:
      goto LABEL_18;
    case 0:
      v20 = [(NSLayoutXAxisAnchor *)self constraintEqualToAnchor:anchorCopy constant:constant];
      goto LABEL_20;
    case -1:
      goto LABEL_17;
  }

  v21 = 0;
LABEL_21:
  *&v19 = priority;
  [v21 setPriority:v19];

  return v21;
}

@end