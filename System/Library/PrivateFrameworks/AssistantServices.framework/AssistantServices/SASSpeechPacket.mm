@interface SASSpeechPacket
- (id)description;
@end

@implementation SASSpeechPacket

- (id)description
{
  v3 = objc_opt_class();
  packets = [(SASSpeechPacket *)self packets];
  v5 = [packets count];
  packetNumber = [(SASSpeechPacket *)self packetNumber];
  aceId = [(SASSpeechPacket *)self aceId];
  refId = [(SASSpeechPacket *)self refId];
  v9 = [NSString stringWithFormat:@"[%@ count:%tu total:%ld\n  aceId: %@\n  refId: %@]", v3, v5, packetNumber, aceId, refId];

  return v9;
}

@end