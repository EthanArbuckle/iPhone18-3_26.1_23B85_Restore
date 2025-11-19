@interface NFCPaymentTagReaderSession
+ (BOOL)readingAvailable;
- (NFCPaymentTagReaderSession)initWithDelegate:(id)a3 queue:(id)a4;
- (NFCPaymentTagReaderSession)initWithDelegate:(id)a3 sessionDelegateType:(int64_t)a4 queue:(id)a5 pollMethod:(unint64_t)a6 sessionType:(unint64_t)a7 sessionConfig:(unint64_t)a8;
- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)a3 delegate:(id)a4 delegateType:(int64_t)a5 sessionType:(unint64_t)a6 queue:(id)a7;
- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)a3 delegate:(id)a4 queue:(id)a5;
- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)a3 swiftDelegate:(id)a4 sessionType:(unint64_t)a5 queue:(id)a6;
- (NFCPaymentTagReaderSession)initWithSwiftDelegate:(id)a3 queue:(id)a4;
@end

@implementation NFCPaymentTagReaderSession

- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)a3 delegate:(id)a4 queue:(id)a5
{
  v6.receiver = self;
  v6.super_class = NFCPaymentTagReaderSession;
  return [(NFCTagReaderSession *)&v6 initWithPollingOption:a3 delegate:a4 delegateType:2 sessionType:5 queue:a5];
}

- (NFCPaymentTagReaderSession)initWithDelegate:(id)a3 queue:(id)a4
{
  v5.receiver = self;
  v5.super_class = NFCPaymentTagReaderSession;
  return [(NFCTagReaderSession *)&v5 initWithPollingOption:1 delegate:a3 delegateType:2 sessionType:5 queue:a4];
}

- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)a3 delegate:(id)a4 delegateType:(int64_t)a5 sessionType:(unint64_t)a6 queue:(id)a7
{
  swift_unknownObjectRetain();
  v12 = a7;
  sub_2372D11F4();
  swift_unknownObjectRelease();
  sub_2372A636C(v17, v17[3]);
  v13 = sub_2372D1274();
  v16.receiver = self;
  v16.super_class = NFCPaymentTagReaderSession;
  v14 = [(NFCTagReaderSession *)&v16 initWithPollingOption:a3 delegate:v13 delegateType:a5 sessionType:a6 queue:v12];

  swift_unknownObjectRelease();
  sub_237296020(v17);
  return v14;
}

- (NFCPaymentTagReaderSession)initWithSwiftDelegate:(id)a3 queue:(id)a4
{
  v9.receiver = self;
  v9.super_class = NFCPaymentTagReaderSession;
  v5 = a3;
  v6 = a4;
  result = [(NFCTagReaderSession *)&v9 initWithPollingOption:1 swiftDelegate:v5 sessionType:5 queue:v6];
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

- (NFCPaymentTagReaderSession)initWithPollingOption:(int64_t)a3 swiftDelegate:(id)a4 sessionType:(unint64_t)a5 queue:(id)a6
{
  swift_unknownObjectRetain();
  v10 = a6;
  sub_2372D11F4();
  swift_unknownObjectRelease();
  sub_2372A636C(v15, v15[3]);
  v11 = sub_2372D1274();
  v14.receiver = self;
  v14.super_class = NFCPaymentTagReaderSession;
  v12 = [(NFCTagReaderSession *)&v14 initWithPollingOption:a3 swiftDelegate:v11 sessionType:a5 queue:v10];

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

- (NFCPaymentTagReaderSession)initWithDelegate:(id)a3 sessionDelegateType:(int64_t)a4 queue:(id)a5 pollMethod:(unint64_t)a6 sessionType:(unint64_t)a7 sessionConfig:(unint64_t)a8
{
  swift_unknownObjectRetain();
  sub_2372D11F4();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end