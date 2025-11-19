@interface AUVerticalTabView
- (NSArray)accessibilityElements;
- (_TtC12CoreAudioKit17AUVerticalTabView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AUVerticalTabView

- (_TtC12CoreAudioKit17AUVerticalTabView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_horizontal) = 0;
  v7 = MEMORY[0x277D84F90];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs) = MEMORY[0x277D84F90];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_accessibleElements) = v7;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex) = -1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_numActiveTabs) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_maxTabDimension) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabDimension) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AUVerticalTabView();
  return [(AUVerticalTabView *)&v9 initWithFrame:x, y, width, height];
}

- (NSArray)accessibilityElements
{
  v2 = self;
  v3 = sub_237122830();

  if (v3)
  {
    v4 = sub_23719661C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2371235F4();
}

@end