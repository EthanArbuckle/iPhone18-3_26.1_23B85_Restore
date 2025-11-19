@interface THWAVTransportLayout
- (id)computeLayoutGeometry;
- (void)dealloc;
- (void)layoutTransportUI;
- (void)parentDidChange;
- (void)validate;
@end

@implementation THWAVTransportLayout

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = THWAVTransportLayout;
  [(THWAVTransportLayout *)&v2 dealloc];
}

- (id)computeLayoutGeometry
{
  v3 = [TSDLayoutGeometry alloc];
  [-[THWAVTransportLayout parent](self "parent")];
  v5 = v4;
  v6 = *&CGAffineTransformIdentity.c;
  v9[0] = *&CGAffineTransformIdentity.a;
  v9[1] = v6;
  v9[2] = *&CGAffineTransformIdentity.tx;
  return [v3 initWithSize:v9 transform:{v7, v5}];
}

- (void)parentDidChange
{
  v3.receiver = self;
  v3.super_class = THWAVTransportLayout;
  [(THWAVTransportLayout *)&v3 parentDidChange];
  if ([(THWAVTransportLayout *)self parent])
  {
    [(THWAVTransportController *)[(THWAVTransportLayout *)self transportController] wasAddedToCanvas];
  }
}

- (void)validate
{
  v3.receiver = self;
  v3.super_class = THWAVTransportLayout;
  [(THWAVTransportLayout *)&v3 validate];
  [(THWAVTransportLayout *)self layoutTransportUI];
}

- (void)layoutTransportUI
{
  if ([(THWAVTransportController *)[(THWAVTransportLayout *)self transportController] transportUI])
  {
    v3 = [-[THWAVTransportLayout layoutController](self "layoutController")];
    [(THWAVTransportLayout *)self frameInRoot];
    [v3 convertUnscaledToBoundsRect:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(THWAVTransportUI *)[(THWAVTransportController *)[(THWAVTransportLayout *)self transportController] transportUI] layoutRect];
    v19.origin.x = v12;
    v19.origin.y = v13;
    v19.size.width = v14;
    v19.size.height = v15;
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    if (!CGRectEqualToRect(v18, v19))
    {
      [(THWAVTransportUI *)[(THWAVTransportController *)[(THWAVTransportLayout *)self transportController] transportUI] setLayoutRect:v5, v7, v9, v11];
      [(THWAVTransportUI *)[(THWAVTransportController *)[(THWAVTransportLayout *)self transportController] transportUI] willLayout];
      [(THWAVTransportUI *)[(THWAVTransportController *)[(THWAVTransportLayout *)self transportController] transportUI] layout];
      v16 = [(THWAVTransportController *)[(THWAVTransportLayout *)self transportController] transportUI];

      [(THWAVTransportUI *)v16 didLayout];
    }
  }
}

@end