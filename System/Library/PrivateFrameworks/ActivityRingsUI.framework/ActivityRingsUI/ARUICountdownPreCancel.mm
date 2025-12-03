@interface ARUICountdownPreCancel
- (id)identifier;
- (void)applyToCountdownView:(id)view completion:(id)completion;
@end

@implementation ARUICountdownPreCancel

- (id)identifier
{
  v2 = objc_opt_class();

  return [v2 identifier];
}

- (void)applyToCountdownView:(id)view completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  ringGroup = [viewCopy ringGroup];
  [ringGroup zRotation];
  v8 = ARUIFloatGreater(v7, 0.0);

  ringGroup2 = [viewCopy ringGroup];
  ringGroup3 = ringGroup2;
  if (v8)
  {
    [ringGroup2 setZRotation:0.0];

    ringGroup3 = [viewCopy ringGroup];
    LODWORD(v11) = 1.0;
    [ringGroup3 setPercentage:0 ofRingAtIndex:v11];
  }

  else
  {
    [ringGroup2 removeAllAnimations];
  }

  ringGroup4 = [viewCopy ringGroup];

  LODWORD(v13) = 1051931443;
  [ringGroup4 setEmptyOpacity:v13];

  v14 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v14 = completionCopy;
  }
}

@end