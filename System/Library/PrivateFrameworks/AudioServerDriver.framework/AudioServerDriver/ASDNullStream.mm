@interface ASDNullStream
- (id)readInputBlock;
@end

@implementation ASDNullStream

- (id)readInputBlock
{
  v2 = [(ASDStream *)self physicalFormat];
  v3 = [v2 bytesPerFrame];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__ASDNullStream_readInputBlock__block_invoke;
  v6[3] = &__block_descriptor_36_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
  v7 = v3;
  v4 = MEMORY[0x245CEBEA0](v6);

  return v4;
}

@end