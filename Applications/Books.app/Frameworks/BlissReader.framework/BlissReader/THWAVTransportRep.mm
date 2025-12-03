@interface THWAVTransportRep
- (id)transportLayout;
- (void)addChildViewsToArray:(id)array;
- (void)viewScaleDidChange;
- (void)willAddChildView:(id)view toView:(id)toView;
- (void)willBeRemoved;
- (void)willRemoveChildView:(id)view;
@end

@implementation THWAVTransportRep

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = THWAVTransportRep;
  [(THWAVTransportRep *)&v3 willBeRemoved];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

- (id)transportLayout
{
  objc_opt_class();
  [(THWAVTransportRep *)self layout];

  return TSUDynamicCast();
}

- (void)addChildViewsToArray:(id)array
{
  objc_opt_class();
  [(THWAVTransportRep *)self layout];
  v5 = TSUDynamicCast();
  [objc_msgSend(v5 "transportController")];
  [v5 layoutTransportUI];
  v6 = [objc_msgSend(objc_msgSend(v5 "transportController")];
  if (v6)
  {
    v7 = v6;
    if ([v6 count])
    {

      [array addObjectsFromArray:v7];
    }
  }
}

- (void)willAddChildView:(id)view toView:(id)toView
{
  [toView addSubview:view];

  [(THWAVTransportRep *)self setChildViewSuperview:toView];
}

- (void)willRemoveChildView:(id)view
{
  objc_opt_class();
  [(THWAVTransportRep *)self layout];
  if (([objc_msgSend(objc_msgSend(objc_msgSend(TSUDynamicCast() "transportController")] & 1) != 0 || (v5 = -[THWAVTransportRep childViewSuperview](self, "childViewSuperview"), v5 == objc_msgSend(view, "superview")))
  {

    [view removeFromSuperview];
  }
}

- (void)viewScaleDidChange
{
  v3.receiver = self;
  v3.super_class = THWAVTransportRep;
  [(THWAVTransportRep *)&v3 viewScaleDidChange];
  objc_opt_class();
  [(THWAVTransportRep *)self layout];
  [objc_msgSend(TSUDynamicCast() "transportController")];
}

@end