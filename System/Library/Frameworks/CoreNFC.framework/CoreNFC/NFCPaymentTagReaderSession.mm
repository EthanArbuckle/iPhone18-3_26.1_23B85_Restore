@interface NFCPaymentTagReaderSession
+ (BOOL)readingAvailable;
- (NFCPaymentTagReaderSession)initWithDelegate:(id)delegate queue:(id)queue;
- (NFCPaymentTagReaderSession)initWithDelegate:(id)delegate sessionDelegateType:(int64_t)type queue:(id)queue pollMethod:(unint64_t)method sessionType:(unint64_t)sessionType sessionConfig:(unint64_t)config;
- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)option delegate:(id)delegate delegateType:(int64_t)type sessionType:(unint64_t)sessionType queue:(id)queue;
- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)option delegate:(id)delegate queue:(id)queue;
- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)option swiftDelegate:(id)delegate sessionType:(unint64_t)type queue:(id)queue;
- (NFCPaymentTagReaderSession)initWithSwiftDelegate:(id)delegate queue:(id)queue;
@end

@implementation NFCPaymentTagReaderSession

- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)option delegate:(id)delegate queue:(id)queue
{
  v6.receiver = self;
  v6.super_class = NFCPaymentTagReaderSession;
  return [(NFCTagReaderSession *)&v6 initWithPollingOption:option delegate:delegate delegateType:2 sessionType:5 queue:queue];
}

- (NFCPaymentTagReaderSession)initWithDelegate:(id)delegate queue:(id)queue
{
  v5.receiver = self;
  v5.super_class = NFCPaymentTagReaderSession;
  return [(NFCTagReaderSession *)&v5 initWithPollingOption:1 delegate:delegate delegateType:2 sessionType:5 queue:queue];
}

- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)option delegate:(id)delegate delegateType:(int64_t)type sessionType:(unint64_t)sessionType queue:(id)queue
{
  swift_unknownObjectRetain();
  queueCopy = queue;
  sub_2372D11F4();
  swift_unknownObjectRelease();
  sub_2372A636C(v17, v17[3]);
  v13 = sub_2372D1274();
  v16.receiver = self;
  v16.super_class = NFCPaymentTagReaderSession;
  v14 = [(NFCTagReaderSession *)&v16 initWithPollingOption:option delegate:v13 delegateType:type sessionType:sessionType queue:queueCopy];

  swift_unknownObjectRelease();
  sub_237296020(v17);
  return v14;
}

- (NFCPaymentTagReaderSession)initWithSwiftDelegate:(id)delegate queue:(id)queue
{
  v9.receiver = self;
  v9.super_class = NFCPaymentTagReaderSession;
  delegateCopy = delegate;
  queueCopy = queue;
  result = [(NFCTagReaderSession *)&v9 initWithPollingOption:1 swiftDelegate:delegateCopy sessionType:5 queue:queueCopy];
  if (result)
  {
    v8 = result;

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)option swiftDelegate:(id)delegate sessionType:(unint64_t)type queue:(id)queue
{
  swift_unknownObjectRetain();
  queueCopy = queue;
  sub_2372D11F4();
  swift_unknownObjectRelease();
  sub_2372A636C(v15, v15[3]);
  v11 = sub_2372D1274();
  v14.receiver = self;
  v14.super_class = NFCPaymentTagReaderSession;
  v12 = [(NFCTagReaderSession *)&v14 initWithPollingOption:option swiftDelegate:v11 sessionType:type queue:queueCopy];

  swift_unknownObjectRelease();
  sub_237296020(v15);
  if (v12)
  {
  }

  return v12;
}

+ (BOOL)readingAvailable
{
  v2 = objc_opt_self();

  return [v2 featureAvailable_];
}

- (NFCPaymentTagReaderSession)initWithDelegate:(id)delegate sessionDelegateType:(int64_t)type queue:(id)queue pollMethod:(unint64_t)method sessionType:(unint64_t)sessionType sessionConfig:(unint64_t)config
{
  swift_unknownObjectRetain();
  sub_2372D11F4();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end