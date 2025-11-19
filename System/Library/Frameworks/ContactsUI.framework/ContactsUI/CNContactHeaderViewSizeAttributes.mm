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
- (double)navbarTitleOffsetWithPercentMax:(double)a3;
- (double)photoBottomMarginWithPercentMax:(double)a3;
- (double)photoHeightWithPercentMax:(double)a3;
- (double)photoTopMarginWithPercentMax:(double)a3;
@end

@implementation CNContactHeaderViewSizeAttributes

- (double)navbarTitleOffsetWithPercentMax:(double)a3
{
  [(CNContactHeaderViewSizeAttributes *)self minNavbarTitleOffset];
  v6 = v5;
  [(CNContactHeaderViewSizeAttributes *)self maxNavbarTitleOffset];

  [(CNContactHeaderViewSizeAttributes *)self valueBetweenMin:v6 max:v7 percentMax:a3];
  return result;
}

- (double)photoBottomMarginWithPercentMax:(double)a3
{
  [(CNContactHeaderViewSizeAttributes *)self photoMinBottomMargin];
  v6 = v5;
  [(CNContactHeaderViewSizeAttributes *)self photoMaxBottomMargin];

  [(CNContactHeaderViewSizeAttributes *)self valueBetweenMin:v6 max:v7 percentMax:a3];
  return result;
}

- (double)photoTopMarginWithPercentMax:(double)a3
{
  [(CNContactHeaderViewSizeAttributes *)self photoMinTopMargin];
  v6 = v5;
  [(CNContactHeaderViewSizeAttributes *)self photoMaxTopMargin];

  [(CNContactHeaderViewSizeAttributes *)self valueBetweenMin:v6 max:v7 percentMax:a3];
  return result;
}

- (double)photoHeightWithPercentMax:(double)a3
{
  [(CNContactHeaderViewSizeAttributes *)self photoMinHeight];
  v6 = v5;
  [(CNContactHeaderViewSizeAttributes *)self photoMaxHeight];

  [(CNContactHeaderViewSizeAttributes *)self valueBetweenMin:v6 max:v7 percentMax:a3];
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
  v2 = [a1 staticEditingAttributes];
  [v2 minNavbarTitleOffset];
  [v2 setMinNavbarTitleOffset:v3 + 26.0];
  [v2 maxNavbarTitleOffset];
  [v2 setMaxNavbarTitleOffset:v4 + 26.0];

  return v2;
}

+ (id)staticCollapsedDisplayAttributesWithNavBar
{
  v2 = [a1 staticCollapsedDisplayAttributes];
  [v2 minNavbarTitleOffset];
  [v2 setMinNavbarTitleOffset:v3 + 26.0];
  [v2 maxNavbarTitleOffset];
  [v2 setMaxNavbarTitleOffset:v4 + 26.0];

  return v2;
}

+ (id)staticDisplayAttributesWithNavBar
{
  v2 = [a1 staticDisplayAttributes];
  [v2 minNavbarTitleOffset];
  [v2 setMinNavbarTitleOffset:v3 + 26.0];
  [v2 maxNavbarTitleOffset];
  [v2 setMaxNavbarTitleOffset:v4 + 26.0];

  return v2;
}

+ (id)displayAttributesWithNavBar
{
  v2 = [a1 defaultAttributes];
  [v2 minNavbarTitleOffset];
  [v2 setMinNavbarTitleOffset:v3 + 20.0];
  [v2 maxNavbarTitleOffset];
  [v2 setMaxNavbarTitleOffset:v4 + 20.0];

  return v2;
}

+ (id)editingAttributesWithNavBar
{
  v2 = [a1 editingAttributes];
  [v2 minNavbarTitleOffset];
  [v2 setMinNavbarTitleOffset:v3 + 20.0];
  [v2 maxNavbarTitleOffset];
  [v2 setMaxNavbarTitleOffset:v4 + 20.0];

  return v2;
}

+ (id)staticEditingAttributes
{
  v2 = [a1 editingAttributes];
  [v2 setPhotoMinHeight:40.0];
  [v2 setPhotoMaxHeight:175.0];
  [v2 setPhotoMaxHeightLowQuality:86.0];
  [v2 setPhotoMaxTopMargin:0.0];
  [v2 setPhotoMinTopMargin:0.0];
  [v2 setPhotoMaxBottomMargin:24.0];
  [v2 setPhotoMinBottomMargin:24.0];
  [v2 setPosterMaxHeight:250.0];

  return v2;
}

+ (id)staticCollapsedDisplayAttributes
{
  v2 = [a1 defaultAttributes];
  [v2 setPhotoMinTopMargin:2.0];
  [v2 setPhotoMinBottomMargin:6.0];
  [v2 setHeaderBottomMargin:16.0];

  return v2;
}

+ (id)staticDisplayAttributes
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [a1 defaultAttributes];
  v6 = v5;
  v7 = 70.0;
  if (v4 == 1)
  {
    v8 = 29.0;
  }

  else
  {
    v7 = 0.0;
    v8 = 26.0;
  }

  [v5 setPhotoMinTopMargin:v7];
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
  v2 = [a1 defaultAttributes];
  [v2 setPhotoMaxHeight:168.0];
  [v2 setPhotoMaxTopMargin:40.0];
  [v2 setPhotoMinBottomMargin:12.0];
  [v2 setPhotoMaxBottomMargin:24.0];

  return v2;
}

+ (id)defaultAttributes
{
  v2 = objc_alloc_init(CNContactHeaderViewSizeAttributes);

  return v2;
}

@end