@interface MTRSoftwareDiagnosticsClusterSoftwareFaultEvent
- (MTRSoftwareDiagnosticsClusterSoftwareFaultEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRSoftwareDiagnosticsClusterSoftwareFaultEvent

- (MTRSoftwareDiagnosticsClusterSoftwareFaultEvent)init
{
  v8.receiver = self;
  v8.super_class = MTRSoftwareDiagnosticsClusterSoftwareFaultEvent;
  v2 = [(MTRSoftwareDiagnosticsClusterSoftwareFaultEvent *)&v8 init];
  v3 = v2;
  if (v2)
  {
    id = v2->_id;
    v2->_id = &unk_284C3E588;

    name = v3->_name;
    v3->_name = 0;

    faultRecording = v3->_faultRecording;
    v3->_faultRecording = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRSoftwareDiagnosticsClusterSoftwareFaultEvent);
  v5 = [(MTRSoftwareDiagnosticsClusterSoftwareFaultEvent *)self id];
  [(MTRSoftwareDiagnosticsClusterSoftwareFaultEvent *)v4 setId:v5];

  name = [(MTRSoftwareDiagnosticsClusterSoftwareFaultEvent *)self name];
  [(MTRSoftwareDiagnosticsClusterSoftwareFaultEvent *)v4 setName:name];

  faultRecording = [(MTRSoftwareDiagnosticsClusterSoftwareFaultEvent *)self faultRecording];
  [(MTRSoftwareDiagnosticsClusterSoftwareFaultEvent *)v4 setFaultRecording:faultRecording];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  id = self->_id;
  name = self->_name;
  v8 = [(NSData *)self->_faultRecording base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: id:%@ name:%@; faultRecording:%@; >", v5, id, name, v8];;

  return v9;
}

@end