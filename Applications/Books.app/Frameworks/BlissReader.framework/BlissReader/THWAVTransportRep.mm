@interface THWAVTransportRep
- (id)transportLayout;
- (void)addChildViewsToArray:(id)a3;
- (void)viewScaleDidChange;
- (void)willAddChildView:(id)a3 toView:(id)a4;
- (void)willBeRemoved;
- (void)willRemoveChildView:(id)a3;
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

- (void)addChildViewsToArray:(id)a3
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

      [a3 addObjectsFromArray:v7];
    }
  }
}

- (void)willAddChildView:(id)a3 toView:(id)a4
{
  [a4 addSubview:a3];

  [(THWAVTransportRep *)self setChildViewSuperview:a4];
}

- (void)willRemoveChildView:(id)a3
{
  objc_opt_class();
  [(THWAVTransportRep *)self layout];
  if (([objc_msgSend(objc_msgSend(objc_msgSend(TSUDynamicCast() "transportController")] & 1) != 0 || (v5 = -[THWAVTransportRep childViewSuperview](self, "childViewSuperview"), v5 == objc_msgSend(a3, "superview")))
  {

    [a3 removeFromSuperview];
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