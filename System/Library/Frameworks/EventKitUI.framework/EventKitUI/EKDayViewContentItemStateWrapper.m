@interface EKDayViewContentItemStateWrapper
+ (id)wrapperWithContentItem:(id)a3 viewContent:(id)a4;
- (BOOL)isDimmed;
- (BOOL)isSelected;
- (CGRect)backgroundRect;
- (EKDayViewContentItemStateWrapper)initWithContentItem:(id)a3 viewContent:(id)a4;
- (int64_t)horizontalSizeClass;
- (int64_t)userInterfaceStyle;
@end

@implementation EKDayViewContentItemStateWrapper

- (BOOL)isSelected
{
  v2 = [(EKDayViewContentItem *)self->_item view];
  v3 = [v2 selected];

  return v3;
}

- (BOOL)isDimmed
{
  if ([(EKDayViewContentItem *)self->_item isProposedTime])
  {
    return 1;
  }

  v4 = [(EKDayViewContentItem *)self->_item event];
  v5 = [(EKDayViewContent *)self->_content dimmedOccurrence];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (CGRect)backgroundRect
{
  [(EKDayViewContentItem *)self->_item stagedFrame];
  v4 = v3;
  [(EKDayViewContentItem *)self->_item stagedFrame];
  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  result.size.height = v5;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (int64_t)userInterfaceStyle
{
  v2 = [(EKDayViewContent *)self->_content traitCollection];
  v3 = [v2 userInterfaceStyle];

  return v3;
}

- (int64_t)horizontalSizeClass
{
  v2 = [(EKDayViewContent *)self->_content traitCollection];
  v3 = [v2 horizontalSizeClass];

  return v3;
}

+ (id)wrapperWithContentItem:(id)a3 viewContent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[EKDayViewContentItemStateWrapper alloc] initWithContentItem:v6 viewContent:v5];

  return v7;
}

- (EKDayViewContentItemStateWrapper)initWithContentItem:(id)a3 viewContent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EKDayViewContentItemStateWrapper;
  v9 = [(EKDayViewContentItemStateWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, a3);
    objc_storeStrong(&v10->_content, a4);
  }

  return v10;
}

@end