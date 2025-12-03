@interface APSOffloadHeuristics
+ (APSOffloadHeuristics)shared;
- (BOOL)canOffloadOnInterface:(int64_t)interface;
- (void)addDelegate:(id)delegate;
- (void)connectionAttemptFailedWithError:(id)error interface:(int64_t)interface;
- (void)connectionDisconnectWithAPSReason:(unsigned int)reason interface:(int64_t)interface;
- (void)connectionDisconnectWithError:(id)error interface:(int64_t)interface;
- (void)directConnectionAttemptedOnInterface:(int64_t)interface;
- (void)keepAliveSendOnInterface:(int64_t)interface interval:(int64_t)interval;
- (void)offloadConnectionAttemptedOnInterface:(int64_t)interface;
- (void)offloadKeepAlivePerformedOnInterface:(int64_t)interface interval:(int64_t)interval;
- (void)receivedBytes:(int64_t)bytes onInterface:(int64_t)interface;
- (void)sentBytes:(int64_t)bytes onInterface:(int64_t)interface;
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

- (void)addDelegate:(id)delegate
{
  v4 = *((swift_isaMask & self->super.isa) + 0x70);
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (BOOL)canOffloadOnInterface:(int64_t)interface
{
  selfCopy = self;
  LOBYTE(interface) = OffloadHeuristics.canOffload(onInterface:)(interface);

  return interface & 1;
}

- (void)offloadConnectionAttemptedOnInterface:(int64_t)interface
{
  selfCopy = self;
  OffloadHeuristics.offloadConnectionAttempted(onInterface:)(interface);
}

- (void)directConnectionAttemptedOnInterface:(int64_t)interface
{
  selfCopy = self;
  OffloadHeuristics.directConnectionAttempted(onInterface:)(interface);
}

- (void)connectionAttemptFailedWithError:(id)error interface:(int64_t)interface
{
  selfCopy = self;
  errorCopy = error;
  OffloadHeuristics.connectionAttemptFailed(error:interface:)(error, interface);
}

- (void)connectionDisconnectWithError:(id)error interface:(int64_t)interface
{
  errorCopy = error;
  selfCopy = self;
  OffloadHeuristics.connectionDisconnect(withError:interface:)(errorCopy, interface);
}

- (void)connectionDisconnectWithAPSReason:(unsigned int)reason interface:(int64_t)interface
{
  selfCopy = self;
  OffloadHeuristics.connectionDisconnect(withAPSReason:interface:)(reason, interface);
}

- (void)keepAliveSendOnInterface:(int64_t)interface interval:(int64_t)interval
{
  selfCopy = self;
  OffloadHeuristics.keepAliveSend(onInterface:interval:)(interface, interval);
}

- (void)offloadKeepAlivePerformedOnInterface:(int64_t)interface interval:(int64_t)interval
{
  selfCopy = self;
  OffloadHeuristics.offloadKeepAlivePerformed(onInterface:interval:)(interface, interval);
}

- (void)receivedBytes:(int64_t)bytes onInterface:(int64_t)interface
{
  selfCopy = self;
  OffloadHeuristics.received(bytes:onInterface:)(bytes, interface);
}

- (void)sentBytes:(int64_t)bytes onInterface:(int64_t)interface
{
  selfCopy = self;
  OffloadHeuristics.sent(bytes:onInterface:)(bytes, interface);
}

@end