@interface SidebarTextField
- (BOOL)endEditing:(BOOL)editing;
- (UIFocusEffect)focusEffect;
- (_TtC5Books16SidebarTextField)initWithCoder:(id)coder;
- (_TtC5Books16SidebarTextField)initWithFrame:(CGRect)frame;
@end

@implementation SidebarTextField

- (UIFocusEffect)focusEffect
{
  v2 = [objc_allocWithZone(UIFocusHaloEffect) init];

  return v2;
}

- (BOOL)endEditing:(BOOL)editing
{
  editingCopy = editing;
  selfCopy = self;
  [(SidebarTextField *)selfCopy setUserInteractionEnabled:0];
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for SidebarTextField();
  LOBYTE(editingCopy) = [(SidebarTextField *)&v6 endEditing:editingCopy];

  return editingCopy;
}

- (_TtC5Books16SidebarTextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SidebarTextField();
  return [(SidebarTextField *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5Books16SidebarTextField)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SidebarTextField();
  coderCopy = coder;
  v5 = [(SidebarTextField *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end