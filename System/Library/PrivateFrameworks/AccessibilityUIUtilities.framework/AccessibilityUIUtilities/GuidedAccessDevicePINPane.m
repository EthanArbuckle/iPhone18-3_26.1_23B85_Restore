@interface GuidedAccessDevicePINPane
- (void)layoutSubviews;
@end

@implementation GuidedAccessDevicePINPane

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = GuidedAccessDevicePINPane;
  [(DevicePINPane *)&v29 layoutSubviews];
  v3 = [(GuidedAccessDevicePINPane *)self safeUIViewForKey:@"_keypadContainerView"];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(GuidedAccessDevicePINPane *)self frame];
  v11 = v10;
  [v3 frame];
  v13 = v12;
  v14 = [(GuidedAccessDevicePINPane *)self safeUIViewForKey:@"_pinView"];
  v15 = [MEMORY[0x1E69DC938] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = v14 == 0;
  }

  if (!v17)
  {
    [v14 frame];
    v28 = v18;
    v20 = v19;
    v22 = v21;
    v23 = v7;
    v25 = v24 + -50.0;
    v5 = v5 + -50.0;
    v9 = v9 + 50.0;
    v26 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [v3 setBackgroundColor:v26];

    v27 = v25;
    v7 = v23;
    [v14 setFrame:{v28, v20, v22, v27}];
  }

  [v3 setFrame:{v11 * 0.5 - v13 * 0.5, v5, v7, v9}];
}

@end