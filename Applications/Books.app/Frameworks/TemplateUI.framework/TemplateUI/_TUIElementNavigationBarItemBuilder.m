@interface _TUIElementNavigationBarItemBuilder
- (void)addAttributedString:(id)a3 forRole:(id)a4;
- (void)addImageModel:(id)a3 forRole:(id)a4;
@end

@implementation _TUIElementNavigationBarItemBuilder

- (void)addAttributedString:(id)a3 forRole:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || ([v6 isEqualToString:@"title"] & 1) != 0)
  {
    v8 = &OBJC_IVAR____TUIElementNavigationBarItemBuilder__attributedTitle;
LABEL_4:
    v9 = [v12 copy];
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

- (void)addImageModel:(id)a3 forRole:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || [v6 isEqualToString:@"image"])
  {
    v8 = [v10 image];
    image = self->_image;
    self->_image = v8;
  }
}

@end