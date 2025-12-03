@interface CMPednetResponse
- (void)errorStringLength:(unsigned int *)length;
- (void)getMachContinuousTimestamp:(unint64_t *)timestamp;
- (void)getType:(char *)type;
- (void)writePredictionValuesToBuffer:(float *)buffer :(int64_t)a4;
@end

@implementation CMPednetResponse

- (void)getType:(char *)type
{
  v5 = *(*(type metadata accessor for CoreMotionPednet_Response(0) - 8) + 64);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v8();
  v10 = *(v7 + 1);
  v11 = v7[16];
  sub_100009878(v7, type metadata accessor for CoreMotionPednet_Response);
  v12 = CoreMotionPednet_Response.TypeEnum.rawValue.getter(v10, v11);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 <= 0xFF)
  {
    *type = v12;

    return;
  }

  __break(1u);
}

- (void)getMachContinuousTimestamp:(unint64_t *)timestamp
{
  v5 = *(*(type metadata accessor for CoreMotionPednet_Response(0) - 8) + 64);
  __chkstk_darwin();
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v8();
  v10 = *v7;
  sub_100009878(v7, type metadata accessor for CoreMotionPednet_Response);
  *timestamp = v10;
}

- (void)writePredictionValuesToBuffer:(float *)buffer :(int64_t)a4
{
  v7 = *(*(type metadata accessor for CoreMotionPednet_Response(0) - 8) + 64);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v10();
  v12 = *(v9 + 3);

  sub_100009878(v9, type metadata accessor for CoreMotionPednet_Response);
  if ((a4 - 0x2000000000000000) >> 62 == 3)
  {
    memcpy(buffer, (v12 + 32), 4 * a4);
  }

  else
  {
    __break(1u);
  }
}

- (void)errorStringLength:(unsigned int *)length
{
  v5 = *(*(type metadata accessor for CoreMotionPednet_Response(0) - 8) + 64);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v8();
  CoreMotionPednet_Response.errorMessage.getter();
  sub_100009878(v7, type metadata accessor for CoreMotionPednet_Response);
  v10 = sub_10000DE44();

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v10))
  {
    *length = v10;

    return;
  }

  __break(1u);
}

@end