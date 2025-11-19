@interface COSBeamBridgeUserStudyController
+ (id)sharedController;
- (BOOL)continueUserStudyPhase;
- (COSBeamBridgeUserStudyController)init;
- (void)overrideWristAndCrownChoices;
@end

@implementation COSBeamBridgeUserStudyController

+ (id)sharedController
{
  if (qword_1002BD6B0 != -1)
  {
    sub_10018B148();
  }

  v3 = qword_1002BD6A8;

  return v3;
}

- (COSBeamBridgeUserStudyController)init
{
  v5.receiver = self;
  v5.super_class = COSBeamBridgeUserStudyController;
  v2 = [(COSBeamBridgeUserStudyController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSBeamBridgeUserStudyController *)v2 startNewUserStudy];
  }

  return v3;
}

- (void)overrideWristAndCrownChoices
{
  orientation = self->_orientation;
  if (orientation > 9)
  {
    v3 = -1;
    v4 = -1;
  }

  else
  {
    v3 = qword_1001C6CD0[orientation];
    v4 = qword_1001C6D20[orientation];
  }

  v5 = +[COSInternalUserStudyDataManager sharedManager];
  [v5 setCrownChoice:v3];

  v6 = +[COSInternalUserStudyDataManager sharedManager];
  [v6 setWristChoice:v4];
}

- (BOOL)continueUserStudyPhase
{
  ++self->_orientation;
  v3 = sub_10002D0E8();
  orientation = self->_orientation;
  if (v3)
  {
    if ((orientation & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      orientation = 4;
      goto LABEL_6;
    }

    if ((orientation & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      orientation = 10;
LABEL_6:
      self->_orientation = orientation;
    }
  }

  v5 = orientation < 10;
  [(COSBeamBridgeUserStudyController *)self overrideWristAndCrownChoices];
  return v5;
}

@end