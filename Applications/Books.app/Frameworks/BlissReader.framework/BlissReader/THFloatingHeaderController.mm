@interface THFloatingHeaderController
- (void)dealloc;
- (void)layoutHeaders;
- (void)reloadData;
- (void)setHeaderHidden:(BOOL)hidden;
@end

@implementation THFloatingHeaderController

- (void)dealloc
{
  self->_headersData = 0;

  self->_headersView = 0;
  v3.receiver = self;
  v3.super_class = THFloatingHeaderController;
  [(THFloatingHeaderController *)&v3 dealloc];
}

- (void)reloadData
{
  if ([(THFloatingHeaderController *)self headersData])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    headersData = [(THFloatingHeaderController *)self headersData];
    v4 = [(NSMutableArray *)headersData countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v28;
      do
      {
        v7 = 0;
        do
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(headersData);
          }

          [objc_msgSend(*(*(&v27 + 1) + 8 * v7) valueForKey:{@"layer", "removeFromSuperlayer"}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)headersData countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)[(THFloatingHeaderController *)self headersData] removeAllObjects];
  }

  else
  {
    [(THFloatingHeaderController *)self setHeadersData:+[NSMutableArray array]];
    superview = [(UITableView *)[(THFloatingHeaderController *)self tableView] superview];
    safeAreaLayoutGuide = [superview safeAreaLayoutGuide];
    v10 = [UIView alloc];
    [(UITableView *)[(THFloatingHeaderController *)self tableView] frame];
    -[THFloatingHeaderController setHeadersView:](self, "setHeadersView:", [v10 initWithFrame:?]);
    [(UIView *)[(THFloatingHeaderController *)self headersView] setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)[(THFloatingHeaderController *)self headersView] setBackgroundColor:+[UIColor clearColor]];
    [(UIView *)[(THFloatingHeaderController *)self headersView] setClipsToBounds:1];
    [(UIView *)[(THFloatingHeaderController *)self headersView] setUserInteractionEnabled:0];
    [superview addSubview:{-[THFloatingHeaderController headersView](self, "headersView")}];
    v34[0] = [(NSLayoutYAxisAnchor *)[(UIView *)[(THFloatingHeaderController *)self headersView] topAnchor] constraintEqualToAnchor:[(UITableView *)[(THFloatingHeaderController *)self tableView] topAnchor]];
    v34[1] = -[NSLayoutYAxisAnchor constraintEqualToAnchor:](-[UIView bottomAnchor](-[THFloatingHeaderController headersView](self, "headersView"), "bottomAnchor"), "constraintEqualToAnchor:", [superview bottomAnchor]);
    v34[2] = -[NSLayoutXAxisAnchor constraintEqualToAnchor:](-[UIView leadingAnchor](-[THFloatingHeaderController headersView](self, "headersView"), "leadingAnchor"), "constraintEqualToAnchor:", [safeAreaLayoutGuide leadingAnchor]);
    v34[3] = -[NSLayoutXAxisAnchor constraintEqualToAnchor:](-[UIView trailingAnchor](-[THFloatingHeaderController headersView](self, "headersView"), "trailingAnchor"), "constraintEqualToAnchor:", [safeAreaLayoutGuide trailingAnchor]);
    [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v34 count:4]];
    if ([(UITableView *)[(THFloatingHeaderController *)self tableView] _shouldReverseLayoutDirection])
    {
      v11 = *&CATransform3DIdentity.m33;
      *&v31.m31 = *&CATransform3DIdentity.m31;
      *&v31.m33 = v11;
      v12 = *&CATransform3DIdentity.m43;
      *&v31.m41 = *&CATransform3DIdentity.m41;
      *&v31.m43 = v12;
      v13 = *&CATransform3DIdentity.m13;
      *&v31.m11 = *&CATransform3DIdentity.m11;
      *&v31.m13 = v13;
      v14 = *&CATransform3DIdentity.m23;
      *&v31.m21 = *&CATransform3DIdentity.m21;
      *&v31.m23 = v14;
      CATransform3DScale(&v32, &v31, -1.0, 1.0, 1.0);
      layer = [(UIView *)[(THFloatingHeaderController *)self headersView] layer];
      v31 = v32;
      [(CALayer *)layer setSublayerTransform:&v31];
    }
  }

  v16 = [(THFloatingHeaderControllerProtocol *)[(THFloatingHeaderController *)self delegate] numberOfFloatingHeaders:self];
  if (v16)
  {
    v17 = v16;
    for (i = 0; i != v17; ++i)
    {
      v19 = +[NSMutableDictionary dictionary];
      v20 = [(THFloatingHeaderControllerProtocol *)[(THFloatingHeaderController *)self delegate] layerForFloatingHeaderAtIndex:i forController:self];
      v21 = [(THFloatingHeaderControllerProtocol *)[(THFloatingHeaderController *)self delegate] rowNumberForFloatingHeaderAtIndex:i forController:self];
      v22 = [(THFloatingHeaderControllerProtocol *)[(THFloatingHeaderController *)self delegate] numberOfRowsForFloatingHeaderAtIndex:i forController:self];
      [(CALayer *)[(UIView *)[(THFloatingHeaderController *)self headersView] layer] addSublayer:v20];
      [v19 setValue:v20 forKey:@"layer"];
      [(UITableView *)[(THFloatingHeaderController *)self tableView] rowHeight];
      v24 = v23 * v21;
      *&v24 = v24;
      [v19 setValue:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v24), @"miny"}];
      [(UITableView *)[(THFloatingHeaderController *)self tableView] rowHeight];
      v26 = v25 * (v22 + v21 - 1);
      *&v26 = v26;
      [v19 setValue:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v26), @"maxy"}];
      [(NSMutableArray *)[(THFloatingHeaderController *)self headersData] addObject:v19];
    }
  }

  [(THFloatingHeaderController *)self layoutHeaders];
}

- (void)layoutHeaders
{
  [(UITableView *)[(THFloatingHeaderController *)self tableView] contentOffset];
  v4 = v3;
  [(UITableView *)[(THFloatingHeaderController *)self tableView] contentSize];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  headersData = [(THFloatingHeaderController *)self headersData];
  v6 = [(NSMutableArray *)headersData countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(headersData);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        [objc_msgSend(v10 valueForKey:{@"miny", "floatValue"}];
        v12 = v11;
        [objc_msgSend(v10 valueForKey:{@"maxy", "floatValue"}];
        v14 = v12 - v4;
        v15 = v13 - v4;
        if (v12 - v4 > 0.0)
        {
          v16 = 1;
        }

        else
        {
          v14 = v15;
          v16 = v15 <= 0.0;
        }

        if (v16)
        {
          v17 = v14;
        }

        else
        {
          v17 = 0.0;
        }

        v18 = [v10 valueForKey:@"layer"];
        [v18 setPosition:{0.0, v17}];
        [v18 removeAllAnimations];
      }

      v7 = [(NSMutableArray *)headersData countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  +[CATransaction commit];
}

- (void)setHeaderHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  headersView = [(THFloatingHeaderController *)self headersView];

  [(UIView *)headersView setHidden:hiddenCopy];
}

@end