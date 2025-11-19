@interface APSOffloadHeuristics
+ (APSOffloadHeuristics)shared;
- (BOOL)canOffloadOnInterface:(int64_t)a3;
- (void)addDelegate:(id)a3;
- (void)connectionAttemptFailedWithError:(id)a3 interface:(int64_t)a4;
- (void)connectionDisconnectWithAPSReason:(unsigned int)a3 interface:(int64_t)a4;
- (void)connectionDisconnectWithError:(id)a3 interface:(int64_t)a4;
- (void)directConnectionAttemptedOnInterface:(int64_t)a3;
- (void)keepAliveSendOnInterface:(int64_t)a3 interval:(int64_t)a4;
- (void)offloadConnectionAttemptedOnInterface:(int64_t)a3;
- (void)offloadKeepAlivePerformedOnInterface:(int64_t)a3 interval:(int64_t)a4;
- (void)receivedBytes:(int64_t)a3 onInterface:(int64_t)a4;
- (void)sentBytes:(int64_t)a3 onInterface:(int64_t)a4;
@end

@implementation APSOffloadHeuristics

+ (APSOffloadHeuristics)shared
{
  if (sub_100013188())
  {
    if (qword_1001BFBE0 != -1)
    {
      swift_once();
    }

    v2 = qword_1001C0450;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)addDelegate:(id)a3
{
  v4 = *((swift_isaMask & self->super.isa) + 0x70);
  swift_unknownObjectRetain();
  v5 = self;
  v6 = v4(v10);
  v8 = v7;
  swift_unknownObjectRetain();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v6(v10, 0);
  swift_unknownObjectRelease();
}

- (BOOL)canOffloadOnInterface:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = OffloadHeuristics.canOffload(onInterface:)(a3);

  return a3 & 1;
}

- (void)offloadConnectionAttemptedOnInterface:(int64_t)a3
{
  v4 = self;
  OffloadHeuristics.offloadConnectionAttempted(onInterface:)(a3);
}

- (void)directConnectionAttemptedOnInterface:(int64_t)a3
{
  v4 = self;
  OffloadHeuristics.directConnectionAttempted(onInterface:)(a3);
}

- (void)connectionAttemptFailedWithError:(id)a3 interface:(int64_t)a4
{
  v6 = self;
  v7 = a3;
  OffloadHeuristics.connectionAttemptFailed(error:interface:)(a3, a4);
}

- (void)connectionDisconnectWithError:(id)a3 interface:(int64_t)a4
{
  v7 = a3;
  v6 = self;
  OffloadHeuristics.connectionDisconnect(withError:interface:)(v7, a4);
}

- (void)connectionDisconnectWithAPSReason:(unsigned int)a3 interface:(int64_t)a4
{
  v6 = self;
  OffloadHeuristics.connectionDisconnect(withAPSReason:interface:)(a3, a4);
}

- (void)keepAliveSendOnInterface:(int64_t)a3 interval:(int64_t)a4
{
  v6 = self;
  OffloadHeuristics.keepAliveSend(onInterface:interval:)(a3, a4);
}

- (void)offloadKeepAlivePerformedOnInterface:(int64_t)a3 interval:(int64_t)a4
{
  v6 = self;
  OffloadHeuristics.offloadKeepAlivePerformed(onInterface:interval:)(a3, a4);
}

- (void)receivedBytes:(int64_t)a3 onInterface:(int64_t)a4
{
  v6 = self;
  OffloadHeuristics.received(bytes:onInterface:)(a3, a4);
}

- (void)sentBytes:(int64_t)a3 onInterface:(int64_t)a4
{
  v6 = self;
  OffloadHeuristics.sent(bytes:onInterface:)(a3, a4);
}

@end