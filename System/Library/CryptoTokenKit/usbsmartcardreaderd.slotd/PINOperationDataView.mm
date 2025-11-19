@interface PINOperationDataView
- (PINOperationDataView)initWithData:(id)a3;
- (PINOperationDataView)initWithLength:(unint64_t)a3;
- (unsigned)lengthByte;
- (unsigned)nodeAddressByte;
- (unsigned)protocolControlByte;
@end

@implementation PINOperationDataView

- (PINOperationDataView)initWithLength:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = PINOperationDataView;
  return [(TKDataView *)&v4 initWithLength:a3];
}

- (PINOperationDataView)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = PINOperationDataView;
  return [(TKDataView *)&v4 initWithData:a3];
}

- (unsigned)nodeAddressByte
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CCIDDefinitions.m" lineNumber:957 description:@"Have to be implement in derived class"];

  return 0;
}

- (unsigned)protocolControlByte
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CCIDDefinitions.m" lineNumber:966 description:@"Have to be implement in derived class"];

  return 0;
}

- (unsigned)lengthByte
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CCIDDefinitions.m" lineNumber:975 description:@"Have to be implement in derived class"];

  return 0;
}

@end