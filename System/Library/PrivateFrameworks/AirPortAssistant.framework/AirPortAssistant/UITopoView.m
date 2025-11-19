@interface UITopoView
- (CGSize)intrinsicContentSize;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation UITopoView

- (void)dealloc
{
  objc_msgSend_setNetTopoMiniStaticLayout_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = UITopoView;
  [(UITopoView *)&v3 dealloc];
}

- (CGSize)intrinsicContentSize
{
  v3 = objc_msgSend_layer(self, a2, v2);
  objc_msgSend_bounds(v3, v4, v5);
  v7 = v6;
  v8 = *MEMORY[0x277D77260];
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_msgSend_frame(self, a2, v3);
  v10 = v9;
  v12 = v11;
  v21.receiver = self;
  v21.super_class = UITopoView;
  [(UITopoView *)&v21 setFrame:x, y, width, height];
  if (width != v10 || height != v12)
  {
    if (objc_msgSend_netTopoMiniStaticLayout(self, v13, v14))
    {
      v18 = objc_msgSend_netTopoMiniStaticLayout(self, v16, v17);
      objc_msgSend_performLayout(v18, v19, v20);
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_msgSend_bounds(self, a2, v3);
  v10 = v9;
  v12 = v11;
  v21.receiver = self;
  v21.super_class = UITopoView;
  [(UITopoView *)&v21 setBounds:x, y, width, height];
  if (width != v10 || height != v12)
  {
    if (objc_msgSend_netTopoMiniStaticLayout(self, v13, v14))
    {
      v18 = objc_msgSend_netTopoMiniStaticLayout(self, v16, v17);
      objc_msgSend_performLayout(v18, v19, v20);
    }
  }
}

@end