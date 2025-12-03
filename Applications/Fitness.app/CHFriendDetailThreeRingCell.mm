@interface CHFriendDetailThreeRingCell
- (CHFriendDetailThreeRingCell)initWithFrame:(CGRect)frame;
- (double)preferredHeight;
- (double)preferredWidth;
- (void)_setupCell;
- (void)layoutSubviews;
- (void)setActivitySummary:(id)summary animated:(BOOL)animated;
- (void)setHidden:(BOOL)hidden;
- (void)setIsStandalonePhoneFitnessMode:(BOOL)mode;
@end

@implementation CHFriendDetailThreeRingCell

- (void)_setupCell
{
  v3 = [ARUIRingsView alloc];
  v4 = [ARUIRingGroup activityRingGroupForRingType:3];
  forCompanion = [v4 forCompanion];
  v6 = [v3 initWithRingGroup:forCompanion];
  ringsView = self->_ringsView;
  self->_ringsView = v6;

  ringGroup = [(ARUIRingsView *)self->_ringsView ringGroup];
  [ringGroup setGroupDiameter:5.62950094e14];

  ringGroup2 = [(ARUIRingsView *)self->_ringsView ringGroup];
  LODWORD(v10) = 13.0;
  [ringGroup2 setThickness:v10];

  ringGroup3 = [(ARUIRingsView *)self->_ringsView ringGroup];
  LODWORD(v12) = 1071225242;
  [ringGroup3 setInterspacing:v12];

  v13 = +[UIColor clearColor];
  [(ARUIRingsView *)self->_ringsView setBackgroundColor:v13];

  v14 = self->_ringsView;

  [(CHFriendDetailThreeRingCell *)self addSubview:v14];
}

- (CHFriendDetailThreeRingCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHFriendDetailThreeRingCell;
  v3 = [(CHFriendDetailThreeRingCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHFriendDetailThreeRingCell *)v3 _setupCell];
  }

  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CHFriendDetailThreeRingCell;
  [(CHFriendDetailThreeRingCell *)&v5 layoutSubviews];
  if (self->_isFriendHidingDataFromMe)
  {
    v3 = 48.0;
  }

  else
  {
    v3 = 128.0;
  }

  [(ARUIRingsView *)self->_ringsView setFrame:17.0, 21.0, v3, v3];
  if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:0]== 1)
  {
    ringsView = self->_ringsView;
    v4 = [NSArray arrayWithObjects:&ringsView count:1];
    [(CHFriendDetailThreeRingCell *)self ch_transformViewsForRightToLeftLanguages:v4];
  }
}

- (double)preferredHeight
{
  result = 149.0;
  if (self->_isFriendHidingDataFromMe)
  {
    return 69.0;
  }

  return result;
}

- (double)preferredWidth
{
  result = 162.0;
  if (self->_isFriendHidingDataFromMe)
  {
    return 82.0;
  }

  return result;
}

- (void)setActivitySummary:(id)summary animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_isFriendHidingDataFromMe = 0;
  objc_storeStrong(&self->_activitySummary, summary);
  summaryCopy = summary;
  [(ARUIRingsView *)self->_ringsView hk_configureWithActivitySummary:summaryCopy animated:animatedCopy];
}

- (void)setHidden:(BOOL)hidden
{
  self->_isFriendHidingDataFromMe = hidden;
  if (hidden)
  {
    activitySummary = self->_activitySummary;
    self->_activitySummary = 0;

    ringsView = self->_ringsView;

    [(ARUIRingsView *)ringsView hk_configureWithActivitySummary:0 animated:0];
  }
}

- (void)setIsStandalonePhoneFitnessMode:(BOOL)mode
{
  modeCopy = mode;
  ringGroup = [(ARUIRingsView *)self->_ringsView ringGroup];
  [ringGroup setIsStandalonePhoneFitnessMode:modeCopy];
}

@end