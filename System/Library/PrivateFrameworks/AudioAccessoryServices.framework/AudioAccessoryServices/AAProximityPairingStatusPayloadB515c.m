@interface AAProximityPairingStatusPayloadB515c
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadB515c

- (id)describeProperties
{
  v6.receiver = self;
  v6.super_class = AAProximityPairingStatusPayloadB515c;
  v3 = [(AAProximityPairingStatusPayloadB515 *)&v6 describeProperties];
  [(AAProximityPairingStatusPayloadB515c *)self usbAudioConnected];
  NSAppendPrintF_safe();
  v4 = v3;

  return v3;
}

@end