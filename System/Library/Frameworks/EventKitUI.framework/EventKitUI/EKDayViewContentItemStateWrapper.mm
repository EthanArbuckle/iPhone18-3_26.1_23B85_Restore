@interface EKDayViewContentItemStateWrapper
+ (id)wrapperWithContentItem:(id)item viewContent:(id)content;
- (BOOL)isDimmed;
- (BOOL)isSelected;
- (CGRect)backgroundRect;
- (EKDayViewContentItemStateWrapper)initWithContentItem:(id)item viewContent:(id)content;
- (int64_t)horizontalSizeClass;
- (int64_t)userInterfaceStyle;
@end

@implementation EKDayViewContentItemStateWrapper

- (BOOL)isSelected
{
  view = [(EKDayViewContentItem *)self->_item view];
  selected = [view selected];

  return selected;
}

- (BOOL)isDimmed
{
  if ([(EKDayViewContentItem *)self->_item isProposedTime])
  {
    return 1;
  }

  event = [(EKDayViewContentItem *)self->_item event];
  dimmedOccurrence = [(EKDayViewContent *)self->_content dimmedOccurrence];
  v6 = [event isEqual:dimmedOccurrence];

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
  traitCollection = [(EKDayViewContent *)self->_content traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

- (int64_t)horizontalSizeClass
{
  traitCollection = [(EKDayViewContent *)self->_content traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  return horizontalSizeClass;
}

+ (id)wrapperWithContentItem:(id)item viewContent:(id)content
{
  contentCopy = content;
  itemCopy = item;
  v7 = [[EKDayViewContentItemStateWrapper alloc] initWithContentItem:itemCopy viewContent:contentCopy];

  return v7;
}

- (EKDayViewContentItemStateWrapper)initWithContentItem:(id)item viewContent:(id)content
{
  itemCopy = item;
  contentCopy = content;
  v12.receiver = self;
  v12.super_class = EKDayViewContentItemStateWrapper;
  v9 = [(EKDayViewContentItemStateWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, item);
    objc_storeStrong(&v10->_content, content);
  }

  return v10;
}

@end