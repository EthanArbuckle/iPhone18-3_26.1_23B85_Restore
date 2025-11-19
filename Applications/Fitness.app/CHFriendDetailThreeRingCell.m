@interface CHFriendDetailThreeRingCell
- (CHFriendDetailThreeRingCell)initWithFrame:(CGRect)a3;
- (double)preferredHeight;
- (double)preferredWidth;
- (void)_setupCell;
- (void)layoutSubviews;
- (void)setActivitySummary:(id)a3 animated:(BOOL)a4;
- (void)setHidden:(BOOL)a3;
- (void)setIsStandalonePhoneFitnessMode:(BOOL)a3;
@end

@implementation CHFriendDetailThreeRingCell

- (void)_setupCell
{
  v3 = [ARUIRingsView alloc];
  v4 = [ARUIRingGroup activityRingGroupForRingType:3];
  v5 = [v4 forCompanion];
  v6 = [v3 initWithRingGroup:v5];
  ringsView = self->_ringsView;
  self->_ringsView = v6;

  v8 = [(ARUIRingsView *)self->_ringsView ringGroup];
  [v8 setGroupDiameter:5.62950094e14];

  v9 = [(ARUIRingsView *)self->_ringsView ringGroup];
  LODWORD(v10) = 13.0;
  [v9 setThickness:v10];

  v11 = [(ARUIRingsView *)self->_ringsView ringGroup];
  LODWORD(v12) = 1071225242;
  [v11 setInterspacing:v12];

  v13 = +[UIColor clearColor];
  [(ARUIRingsView *)self->_ringsView setBackgroundColor:v13];

  v14 = self->_ringsView;

  [(CHFriendDetailThreeRingCell *)self addSubview:v14];
}

- (CHFriendDetailThreeRingCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CHFriendDetailThreeRingCell;
  v3 = [(CHFriendDetailThreeRingCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setActivitySummary:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_isFriendHidingDataFromMe = 0;
  objc_storeStrong(&self->_activitySummary, a3);
  v7 = a3;
  [(ARUIRingsView *)self->_ringsView hk_configureWithActivitySummary:v7 animated:v4];
}

- (void)setHidden:(BOOL)a3
{
  self->_isFriendHidingDataFromMe = a3;
  if (a3)
  {
    activitySummary = self->_activitySummary;
    self->_activitySummary = 0;

    ringsView = self->_ringsView;

    [(ARUIRingsView *)ringsView hk_configureWithActivitySummary:0 animated:0];
  }
}

- (void)setIsStandalonePhoneFitnessMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(ARUIRingsView *)self->_ringsView ringGroup];
  [v4 setIsStandalonePhoneFitnessMode:v3];
}

@end