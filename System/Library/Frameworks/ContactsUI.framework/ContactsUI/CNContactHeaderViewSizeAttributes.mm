@interface CNContactHeaderViewSizeAttributes
+ (id)defaultAttributes;
+ (id)displayAttributesWithNavBar;
+ (id)editingAttributes;
+ (id)editingAttributesWithNavBar;
+ (id)staticCollapsedDisplayAttributes;
+ (id)staticCollapsedDisplayAttributesWithNavBar;
+ (id)staticDisplayAttributes;
+ (id)staticDisplayAttributesWithNavBar;
+ (id)staticEditingAttributes;
+ (id)staticEditingAttributesWithNavBar;
- (CNContactHeaderViewSizeAttributes)init;
- (double)maxHeight;
- (double)minHeight;
- (double)navbarTitleOffsetWithPercentMax:(double)max;
- (double)photoBottomMarginWithPercentMax:(double)max;
- (double)photoHeightWithPercentMax:(double)max;
- (double)photoTopMarginWithPercentMax:(double)max;
@end

@implementation CNContactHeaderViewSizeAttributes

- (double)navbarTitleOffsetWithPercentMax:(double)max
{
  [(CNContactHeaderViewSizeAttributes *)self minNavbarTitleOffset];
  v6 = v5;
  [(CNContactHeaderViewSizeAttributes *)self maxNavbarTitleOffset];

  [(CNContactHeaderViewSizeAttributes *)self valueBetweenMin:v6 max:v7 percentMax:max];
  return result;
}

- (double)photoBottomMarginWithPercentMax:(double)max
{
  [(CNContactHeaderViewSizeAttributes *)self photoMinBottomMargin];
  v6 = v5;
  [(CNContactHeaderViewSizeAttributes *)self photoMaxBottomMargin];

  [(CNContactHeaderViewSizeAttributes *)self valueBetweenMin:v6 max:v7 percentMax:max];
  return result;
}

- (double)photoTopMarginWithPercentMax:(double)max
{
  [(CNContactHeaderViewSizeAttributes *)self photoMinTopMargin];
  v6 = v5;
  [(CNContactHeaderViewSizeAttributes *)self photoMaxTopMargin];

  [(CNContactHeaderViewSizeAttributes *)self valueBetweenMin:v6 max:v7 percentMax:max];
  return result;
}

- (double)photoHeightWithPercentMax:(double)max
{
  [(CNContactHeaderViewSizeAttributes *)self photoMinHeight];
  v6 = v5;
  [(CNContactHeaderViewSizeAttributes *)self photoMaxHeight];

  [(CNContactHeaderViewSizeAttributes *)self valueBetweenMin:v6 max:v7 percentMax:max];
  return result;
}

- (double)maxHeight
{
  [(CNContactHeaderViewSizeAttributes *)self _maxHeight];
  if (v3 == 0.0)
  {
    [(CNContactHeaderViewSizeAttributes *)self photoMaxTopMargin];
    v5 = v4;
    [(CNContactHeaderViewSizeAttributes *)self photoMaxHeight];
    v7 = v5 + v6;
    [(CNContactHeaderViewSizeAttributes *)self photoMaxBottomMargin];
    [(CNContactHeaderViewSizeAttributes *)self set_maxHeight:v7 + v8];
  }

  [(CNContactHeaderViewSizeAttributes *)self _maxHeight];
  return result;
}

- (double)minHeight
{
  [(CNContactHeaderViewSizeAttributes *)self _minHeight];
  if (v3 == 0.0)
  {
    [(CNContactHeaderViewSizeAttributes *)self photoMinTopMargin];
    v5 = v4;
    [(CNContactHeaderViewSizeAttributes *)self photoMinHeight];
    v7 = v5 + v6;
    [(CNContactHeaderViewSizeAttributes *)self photoMinBottomMargin];
    [(CNContactHeaderViewSizeAttributes *)self set_minHeight:v7 + v8];
  }

  [(CNContactHeaderViewSizeAttributes *)self _minHeight];
  return result;
}

- (CNContactHeaderViewSizeAttributes)init
{
  v3.receiver = self;
  v3.super_class = CNContactHeaderViewSizeAttributes;
  result = [(CNContactHeaderViewSizeAttributes *)&v3 init];
  *&result->_photoMinHeight = xmmword_199E43DD0;
  *&result->_photoMinTopMargin = xmmword_199E43DE0;
  result->_photoMinBottomMargin = 6.0;
  *&result->_photoMaxBottomMargin = xmmword_199E43DF0;
  result->_headerBottomMargin = 0.0;
  result->_posterMaxHeight = 0.0;
  result->_maxNavbarTitleOffset = 0.0;
  return result;
}

+ (id)staticEditingAttributesWithNavBar
{
  staticEditingAttributes = [self staticEditingAttributes];
  [staticEditingAttributes minNavbarTitleOffset];
  [staticEditingAttributes setMinNavbarTitleOffset:v3 + 26.0];
  [staticEditingAttributes maxNavbarTitleOffset];
  [staticEditingAttributes setMaxNavbarTitleOffset:v4 + 26.0];

  return staticEditingAttributes;
}

+ (id)staticCollapsedDisplayAttributesWithNavBar
{
  staticCollapsedDisplayAttributes = [self staticCollapsedDisplayAttributes];
  [staticCollapsedDisplayAttributes minNavbarTitleOffset];
  [staticCollapsedDisplayAttributes setMinNavbarTitleOffset:v3 + 26.0];
  [staticCollapsedDisplayAttributes maxNavbarTitleOffset];
  [staticCollapsedDisplayAttributes setMaxNavbarTitleOffset:v4 + 26.0];

  return staticCollapsedDisplayAttributes;
}

+ (id)staticDisplayAttributesWithNavBar
{
  staticDisplayAttributes = [self staticDisplayAttributes];
  [staticDisplayAttributes minNavbarTitleOffset];
  [staticDisplayAttributes setMinNavbarTitleOffset:v3 + 26.0];
  [staticDisplayAttributes maxNavbarTitleOffset];
  [staticDisplayAttributes setMaxNavbarTitleOffset:v4 + 26.0];

  return staticDisplayAttributes;
}

+ (id)displayAttributesWithNavBar
{
  defaultAttributes = [self defaultAttributes];
  [defaultAttributes minNavbarTitleOffset];
  [defaultAttributes setMinNavbarTitleOffset:v3 + 20.0];
  [defaultAttributes maxNavbarTitleOffset];
  [defaultAttributes setMaxNavbarTitleOffset:v4 + 20.0];

  return defaultAttributes;
}

+ (id)editingAttributesWithNavBar
{
  editingAttributes = [self editingAttributes];
  [editingAttributes minNavbarTitleOffset];
  [editingAttributes setMinNavbarTitleOffset:v3 + 20.0];
  [editingAttributes maxNavbarTitleOffset];
  [editingAttributes setMaxNavbarTitleOffset:v4 + 20.0];

  return editingAttributes;
}

+ (id)staticEditingAttributes
{
  editingAttributes = [self editingAttributes];
  [editingAttributes setPhotoMinHeight:40.0];
  [editingAttributes setPhotoMaxHeight:175.0];
  [editingAttributes setPhotoMaxHeightLowQuality:86.0];
  [editingAttributes setPhotoMaxTopMargin:0.0];
  [editingAttributes setPhotoMinTopMargin:0.0];
  [editingAttributes setPhotoMaxBottomMargin:24.0];
  [editingAttributes setPhotoMinBottomMargin:24.0];
  [editingAttributes setPosterMaxHeight:250.0];

  return editingAttributes;
}

+ (id)staticCollapsedDisplayAttributes
{
  defaultAttributes = [self defaultAttributes];
  [defaultAttributes setPhotoMinTopMargin:2.0];
  [defaultAttributes setPhotoMinBottomMargin:6.0];
  [defaultAttributes setHeaderBottomMargin:16.0];

  return defaultAttributes;
}

+ (id)staticDisplayAttributes
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  defaultAttributes = [self defaultAttributes];
  v6 = defaultAttributes;
  v7 = 70.0;
  if (userInterfaceIdiom == 1)
  {
    v8 = 29.0;
  }

  else
  {
    v7 = 0.0;
    v8 = 26.0;
  }

  [defaultAttributes setPhotoMinTopMargin:v7];
  [v6 setPhotoMinBottomMargin:v8];
  [v6 setPhotoMinBottomMarginLowQuality:11.0];
  [v6 setPhotoMinTopMarginPadCompact:0.0];
  [v6 setPhotoMinBottomMarginPadCompact:26.0];
  [v6 setPhotoMinBottomMarginPhoneLandscape:21.0];
  [v6 setPhotoMinHeight:88.0];
  [v6 setPhotoMaxHeight:320.0];
  [v6 setPhotoMaxHeightLowQuality:86.0];
  [v6 setPhotoMaxHeightPhoneLandscape:108.0];
  [v6 setPhotoMaxHeightPadCompact:140.0];
  [v6 setHeaderBottomMargin:17.0];

  return v6;
}

+ (id)editingAttributes
{
  defaultAttributes = [self defaultAttributes];
  [defaultAttributes setPhotoMaxHeight:168.0];
  [defaultAttributes setPhotoMaxTopMargin:40.0];
  [defaultAttributes setPhotoMinBottomMargin:12.0];
  [defaultAttributes setPhotoMaxBottomMargin:24.0];

  return defaultAttributes;
}

+ (id)defaultAttributes
{
  v2 = objc_alloc_init(CNContactHeaderViewSizeAttributes);

  return v2;
}

@end