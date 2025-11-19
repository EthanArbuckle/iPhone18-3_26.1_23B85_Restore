@interface GCVirtualControllerImpl
@end

@implementation GCVirtualControllerImpl

void __52___GCVirtualControllerImpl_connectWithReplyHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    v3 = [(_GCVirtualControllerImpl *)v2 findKeyWindow];
    v4 = v3;
    if (!v3)
    {
      __52___GCVirtualControllerImpl_connectWithReplyHandler___block_invoke_cold_1(a1, &v12, &v13);
      return;
    }

    [v3 bounds];
    [*(*(a1 + 32) + 24) setFrame:?];
    [*(*(a1 + 32) + 24) setAutoresizingMask:18];
    v5 = [v4 rootViewController];
    v6 = [v5 view];
    [v6 addSubview:*(*(a1 + 32) + 24)];

    v2 = *(a1 + 32);
  }

  v7 = *(v2 + 16);
  _publishCustomController();
  v8 = GCLookupService();
  v9 = [*(*(a1 + 32) + 8) elements];
  GCAnalyticsSendVirtualControllerConnectedEvent(v8, v9, [*(*(a1 + 32) + 8) isHidden]);

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 16);

    v11();
  }
}

id __38___GCVirtualControllerImpl_disconnect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  _unpublishCustomController();
  v3 = *(a1 + 40);

  return [v3 removeFromSuperview];
}

void __61___GCVirtualControllerImpl_Internal__refreshViewForKeyWindow__block_invoke(uint64_t a1)
{
  explicit = atomic_load_explicit(&s_connected, memory_order_acquire);
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (explicit == v2)
  {
    __61___GCVirtualControllerImpl_Internal__refreshViewForKeyWindow__block_invoke_cold_1(v2, v3);
  }
}

void __60___GCVirtualControllerImpl_Internal__forceVirtualController__block_invoke(id a1, NSNotification *a2)
{
  v2 = NSSelectorFromString(@"refreshViewForKeyWindow");
  if (objc_opt_respondsToSelector())
  {
    v3 = forceVirtualController_ForcedVirtualController;

    [v3 performSelector:v2];
  }
}

void __52___GCVirtualControllerImpl_connectWithReplyHandler___block_invoke_cold_1(uint64_t a1, NSErrorUserInfoKey *a2, void *a3)
{
  atomic_store(0, &s_connected);
  if (*(a1 + 40))
  {
    *a2 = NSLocalizedDescriptionKey;
    *a3 = @"Virtual game controller setup failed.";
    a2[1] = NSLocalizedFailureReasonErrorKey;
    a3[1] = @"No UIKit window found.";
    v4 = [NSDictionary dictionaryWithObjects:"dictionaryWithObjects:forKeys:count:" forKeys:? count:?];
    v5 = [NSError gc_VirtualControllerError:v4 userInfo:?];

    (*(*(a1 + 40) + 16))();
  }
}

void __61___GCVirtualControllerImpl_Internal__refreshViewForKeyWindow__block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  [*(a1 + 24) removeFromSuperview];
  v3 = [(_GCVirtualControllerImpl *)*a2 findKeyWindow];
  v6 = v3;
  if (v3)
  {
    v4 = [v3 rootViewController];
    v5 = [v4 view];
    [v5 addSubview:*(*a2 + 24)];
  }

  else
  {
    [*a2 disconnect];
  }
}

@end