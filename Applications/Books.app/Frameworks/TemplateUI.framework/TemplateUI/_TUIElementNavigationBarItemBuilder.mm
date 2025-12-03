@interface _TUIElementNavigationBarItemBuilder
- (void)addAttributedString:(id)string forRole:(id)role;
- (void)addImageModel:(id)model forRole:(id)role;
@end

@implementation _TUIElementNavigationBarItemBuilder

- (void)addAttributedString:(id)string forRole:(id)role
{
  stringCopy = string;
  roleCopy = role;
  v7 = roleCopy;
  if (!roleCopy || ([roleCopy isEqualToString:@"title"] & 1) != 0)
  {
    v8 = &OBJC_IVAR____TUIElementNavigationBarItemBuilder__attributedTitle;
LABEL_4:
    v9 = [stringCopy copy];
    v10 = *v8;
    v11 = *(&self->super.super.super.isa + v10);
    *(&self->super.super.super.isa + v10) = v9;

    goto LABEL_5;
  }

  if ([v7 isEqualToString:@"placeholder"])
  {
    v8 = &OBJC_IVAR____TUIElementNavigationBarItemBuilder__placeholderText;
    goto LABEL_4;
  }

LABEL_5:
}

- (void)addImageModel:(id)model forRole:(id)role
{
  modelCopy = model;
  roleCopy = role;
  v7 = roleCopy;
  if (!roleCopy || [roleCopy isEqualToString:@"image"])
  {
    image = [modelCopy image];
    image = self->_image;
    self->_image = image;
  }
}

@end