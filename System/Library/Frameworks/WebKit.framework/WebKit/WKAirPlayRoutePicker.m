@interface WKAirPlayRoutePicker
- (void)dealloc;
- (void)showFromView:(id)a3 routeSharingPolicy:(unsigned __int8)a4 routingContextUID:(id)a5 hasVideo:(BOOL)a6;
@end

@implementation WKAirPlayRoutePicker

- (void)dealloc
{
  [(MPMediaControlsViewController *)self->_actionSheet.m_ptr dismissViewControllerAnimated:0 completion:0];
  v3.receiver = self;
  v3.super_class = WKAirPlayRoutePicker;
  [(WKAirPlayRoutePicker *)&v3 dealloc];
}

- (void)showFromView:(id)a3 routeSharingPolicy:(unsigned __int8)a4 routingContextUID:(id)a5 hasVideo:(BOOL)a6
{
  if (!self->_actionSheet.m_ptr)
  {
    v6 = a6;
    v8 = a4;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3812000000;
    v19 = __Block_byref_object_copy__8;
    v20 = __Block_byref_object_dispose__8;
    v22 = [objc_alloc(off_1ED63B788()) initWithName:@"WebKit - HTML media element showing AirPlay route picker"];
    [v17[6] setDiscoveryMode:3];
    if ([_MergedGlobals_34() instancesRespondToSelector:sel_setSortByIsVideoRoute_])
    {
      v11 = [objc_alloc(_MergedGlobals_34()) init];
      [v11 setSortByIsVideoRoute:v6];
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_alloc(off_1ED63B790()) initWithConfiguration:v11];
    m_ptr = self->_actionSheet.m_ptr;
    self->_actionSheet.m_ptr = v12;
    if (m_ptr)
    {
    }

    if (objc_opt_respondsToSelector())
    {
      [(MPMediaControlsViewController *)self->_actionSheet.m_ptr setOverrideRouteSharingPolicy:v8 routingContextUID:a5];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__WKAirPlayRoutePicker_showFromView_routeSharingPolicy_routingContextUID_hasVideo___block_invoke;
    v15[3] = &unk_1E7633A18;
    v15[4] = self;
    v15[5] = &v16;
    [(MPMediaControlsViewController *)self->_actionSheet.m_ptr setDidDismissHandler:v15];
    [objc_msgSend(a3 "_wk_viewControllerForFullScreenPresentation")];
    if (v11)
    {
    }

    _Block_object_dispose(&v16, 8);
    v14 = v22;
    v22 = 0;
    if (v14)
    {
    }
  }
}

void __83__WKAirPlayRoutePicker_showFromView_routeSharingPolicy_routingContextUID_hasVideo___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 48) setDiscoveryMode:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v3)
  {
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
  if (v5)
  {
  }
}

@end