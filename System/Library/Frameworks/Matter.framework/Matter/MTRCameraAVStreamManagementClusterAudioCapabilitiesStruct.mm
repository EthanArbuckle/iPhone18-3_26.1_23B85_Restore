@interface MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct
- (MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct

- (MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct)init
{
  v12.receiver = self;
  v12.super_class = MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct;
  v2 = [(MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct *)&v12 init];
  v3 = v2;
  if (v2)
  {
    maxNumberOfChannels = v2->_maxNumberOfChannels;
    v2->_maxNumberOfChannels = &unk_284C3E588;

    array = [MEMORY[0x277CBEA60] array];
    supportedCodecs = v3->_supportedCodecs;
    v3->_supportedCodecs = array;

    array2 = [MEMORY[0x277CBEA60] array];
    supportedSampleRates = v3->_supportedSampleRates;
    v3->_supportedSampleRates = array2;

    array3 = [MEMORY[0x277CBEA60] array];
    supportedBitDepths = v3->_supportedBitDepths;
    v3->_supportedBitDepths = array3;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct);
  maxNumberOfChannels = [(MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct *)self maxNumberOfChannels];
  [(MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct *)v4 setMaxNumberOfChannels:maxNumberOfChannels];

  supportedCodecs = [(MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct *)self supportedCodecs];
  [(MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct *)v4 setSupportedCodecs:supportedCodecs];

  supportedSampleRates = [(MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct *)self supportedSampleRates];
  [(MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct *)v4 setSupportedSampleRates:supportedSampleRates];

  supportedBitDepths = [(MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct *)self supportedBitDepths];
  [(MTRCameraAVStreamManagementClusterAudioCapabilitiesStruct *)v4 setSupportedBitDepths:supportedBitDepths];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: maxNumberOfChannels:%@ supportedCodecs:%@; supportedSampleRates:%@; supportedBitDepths:%@; >", v5, self->_maxNumberOfChannels, self->_supportedCodecs, self->_supportedSampleRates, self->_supportedBitDepths];;

  return v6;
}

@end