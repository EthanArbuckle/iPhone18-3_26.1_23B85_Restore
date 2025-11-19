@interface SidebarTextField
- (BOOL)endEditing:(BOOL)a3;
- (UIFocusEffect)focusEffect;
- (_TtC5Books16SidebarTextField)initWithCoder:(id)a3;
- (_TtC5Books16SidebarTextField)initWithFrame:(CGRect)a3;
@end

@implementation SidebarTextField

- (UIFocusEffect)focusEffect
{
  v2 = [objc_allocWithZone(UIFocusHaloEffect) init];

  return v2;
}

- (BOOL)endEditing:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  [(SidebarTextField *)v4 setUserInteractionEnabled:0];
  v6.receiver = v4;
  v6.super_class = type metadata accessor for SidebarTextField();
  LOBYTE(v3) = [(SidebarTextField *)&v6 endEditing:v3];

  return v3;
}

- (_TtC5Books16SidebarTextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SidebarTextField();
  return [(SidebarTextField *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5Books16SidebarTextField)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SidebarTextField();
  v4 = a3;
  v5 = [(SidebarTextField *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end