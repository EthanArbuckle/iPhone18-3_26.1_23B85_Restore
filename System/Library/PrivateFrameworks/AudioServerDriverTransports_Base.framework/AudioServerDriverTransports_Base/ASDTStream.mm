@interface ASDTStream
+ (id)streamForConfig:(id)a3 withDevice:(id)a4;
- (ASDTAudioDevice)device;
- (ASDTStream)initWithConfig:(id)a3 withDevice:(id)a4;
- (BOOL)setupPhysicalFormats:(id)a3;
- (id)readInputBlock;
- (id)readOrWriteBlock;
- (id)writeMixBlock;
- (int)pmIdleStream:(int)a3;
- (int)pmStateTransition:(int)a3;
- (void)clearBuffer;
- (void)setLatencies:(id)a3;
- (void)setPhysicalFormat:(id)a3;
- (void)setUpdateClientPositionCopy:(id)a3;
- (void)updateLatency;
- (void)writeZerosToMixMilliseconds:(unsigned int)a3 atSampleTime:(unint64_t)a4;
@end

@implementation ASDTStream

+ (id)streamForConfig:(id)a3 withDevice:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 asdtSubclass];
  if (([(objc_class *)v7 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v8 = [[v7 alloc] initWithConfig:v5 withDevice:v6];
  }

  else
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v5 objectForKeyedSubscript:@"Subclass"];
      [(ASDTStream *)v10 streamForConfig:v13 withDevice:v9];
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (ASDTStream)initWithConfig:(id)a3 withDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  if (([v6 asdtDirection:&v18] & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = v18;
  v9 = [v7 plugin];
  v17.receiver = self;
  v17.super_class = ASDTStream;
  self = [(ASDStream *)&v17 initWithDirection:v8 withPlugin:v9];

  if (!self)
  {
    goto LABEL_9;
  }

  [(ASDTStream *)self setDevice:v7];
  v10 = [v7 samplingRates];
  v11 = [v6 asdtLatenciesForSamplingRates:v10];
  [(ASDTStream *)self setLatencies:v11];

  -[ASDStream setStartingChannel:](self, "setStartingChannel:", [v6 asdtStartingChannel]);
  v12 = [v6 asdtName];
  [(ASDStream *)self setStreamName:v12];

  v13 = [(ASDStream *)self streamName];

  if (!v13)
  {
    if (v18 == 1768845428)
    {
      v14 = @"Input";
    }

    else
    {
      v14 = @"Output";
    }

    [(ASDStream *)self setStreamName:v14];
  }

  -[ASDStream setTerminalType:](self, "setTerminalType:", [v6 asdtTerminalType]);
  -[ASDTStream setIsolatedUseCaseID:](self, "setIsolatedUseCaseID:", [v6 asdtIsolatedUseCaseID]);
  if ([(ASDTStream *)self setupPhysicalFormats:v6])
  {
LABEL_9:
    self = self;
    v15 = self;
  }

  else
  {
LABEL_10:
    v15 = 0;
  }

  return v15;
}

- (BOOL)setupPhysicalFormats:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v30 = [a3 asdtFormats];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v30, "count")}];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v30;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v6)
  {
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = [(ASDTStream *)self device];
        v11 = [v10 samplingRates];
        v12 = [v9 asdtFormatsWithSamplingRates:v11];

        if (v12)
        {
          [v4 addObjectsFromArray:v12];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v6);
  }

  v13 = [v4 count];
  if (v13)
  {
    [(ASDStream *)self setPhysicalFormats:v4];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v4;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v15)
    {
      v29 = v13;
      v16 = *v32;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v31 + 1) + 8 * j);
          [v18 sampleRate];
          v20 = v19;
          v21 = [(ASDTStream *)self device];
          [v21 samplingRate];
          v23 = v20 == v22;

          if (v23)
          {
            [(ASDTStream *)self setPhysicalFormat:v18];
            v13 = v29;
            goto LABEL_23;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v13 = v29;
    }
  }

  else
  {
    v14 = ASDTBaseLogType();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v26 = [(ASDTStream *)self device];
      v27 = [v26 deviceUID];
      v28 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v41 = v27;
      v42 = 2112;
      v43 = v28;
      _os_log_error_impl(&dword_241659000, v14, OS_LOG_TYPE_ERROR, "%@: %@: Stream has no formats.", buf, 0x16u);
    }
  }

LABEL_23:

  v24 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (void)setUpdateClientPositionCopy:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  updateClientPositionCopy = self->_updateClientPositionCopy;
  self->_updateClientPositionCopy = v4;

  [(ASDTStream *)self setUpdateClientPositionUnretained:self->_updateClientPositionCopy];
}

- (int)pmIdleStream:(int)a3
{
  v20 = *MEMORY[0x277D85DE8];
  [(ASDTStream *)self setUpdateClientPositionCopy:0];
  [(ASDTStream *)self setUpdateClientPositionUnretained:0];
  if (*&self->_ioBufferFramesSizeMax)
  {
    v4 = ASDTBaseLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(ASDTStream *)self device];
      v6 = [v5 deviceUID];
      v7 = [(ASDStream *)self streamName];
      ioBufferFramesSizeMax = self->_ioBufferFramesSizeMax;
      ioBufferFramesUnexpectedSizeCount = self->_ioBufferFramesUnexpectedSizeCount;
      v12 = 138413058;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 1024;
      v17 = ioBufferFramesSizeMax;
      v18 = 1024;
      v19 = ioBufferFramesUnexpectedSizeCount;
      _os_log_impl(&dword_241659000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: Maximum frames per IO: %u, unexpected size cycles: %u", &v12, 0x22u);
    }

    self->_ioBufferFramesSizeMax = 0;
    self->_ioBufferFramesUnexpectedSizeCount = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)pmStateTransition:(int)a3
{
  if (a3 <= 1768843635)
  {
    if (a3 > 1685090417)
    {
      if (a3 != 1685090418)
      {
        if (a3 != 1685092205)
        {
          if (a3 == 1685286000)
          {
            return [(ASDTStream *)self pmSleepStream];
          }

          return 0;
        }

        return [(ASDTStream *)self pmPrewarmStream:?];
      }

      return [(ASDTStream *)self pmPrepareStream:?];
    }

    if (a3 != 1684627811)
    {
      v4 = 1684628588;
LABEL_17:
      if (a3 == v4)
      {
        return [(ASDTStream *)self pmIdleStream:?];
      }

      return 0;
    }

    return [(ASDTStream *)self pmInactiveStream:?];
  }

  if (a3 > 1970435437)
  {
    if (a3 == 1970435438)
    {
      return [(ASDTStream *)self pmOnStream];
    }

    if (a3 != 1970563425)
    {
      v4 = 1970563428;
      goto LABEL_17;
    }

    return [(ASDTStream *)self pmInactiveStream:?];
  }

  switch(a3)
  {
    case 1768843636:
      return [(ASDTStream *)self pmInactiveStream:?];
    case 1970303090:
      return [(ASDTStream *)self pmPrepareStream:?];
    case 1970304877:
      return [(ASDTStream *)self pmPrewarmStream:?];
  }

  return 0;
}

- (void)clearBuffer
{
  v3 = [(ASDTStream *)self ioBufferRef];
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ([(ASDTStream *)self ioBufferSize])
      {
        v5 = [(ASDTStream *)self ioBufferSize];

        bzero(v4, v5);
      }
    }
  }
}

- (void)updateLatency
{
  v3 = [(ASDTStream *)self latencies];

  if (v3)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(ASDStream *)self physicalFormat];
    [v5 sampleRate];
    v8 = [v4 numberWithDouble:?];

    v6 = [(ASDTStream *)self latencies];
    v7 = [v6 objectForKey:v8];
    -[ASDStream setLatency:](self, "setLatency:", [v7 unsignedIntValue]);
  }
}

- (void)setLatencies:(id)a3
{
  objc_storeStrong(&self->_latencies, a3);

  [(ASDTStream *)self updateLatency];
}

- (void)setPhysicalFormat:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = ASDTStream;
  [(ASDStream *)&v5 setPhysicalFormat:v4];
  [(ASDTStream *)self updateLatency];
}

- (id)readOrWriteBlock
{
  v3 = [(ASDStream *)self physicalFormat];
  v4 = [v3 bytesPerFrame];

  v5 = [(ASDTStream *)self ioBufferSize];
  v6 = [(ASDStream *)self direction];
  v7 = [(ASDTStream *)self updateClientPositionBlock];
  [(ASDTStream *)self setUpdateClientPositionCopy:v7];

  v8 = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
  v9 = [(ASDTStream *)self ioBufferRef];
  if (v9)
  {
    v10 = v9;
    v11 = [(ASDTStream *)self ioBufferFramesSizeMax];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__ASDTStream_readOrWriteBlock__block_invoke;
    aBlock[3] = &__block_descriptor_72_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
    aBlock[4] = v10;
    aBlock[5] = v11;
    v14 = v4;
    v15 = v6;
    v16 = v5 / v4;
    v17 = v5;
    aBlock[6] = v8;
    v9 = _Block_copy(aBlock);
  }

  return v9;
}

uint64_t __30__ASDTStream_readOrWriteBlock__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, char *a4)
{
  if (!a3)
  {
    __30__ASDTStream_readOrWriteBlock__block_invoke_cold_2();
  }

  if (!a4)
  {
    __30__ASDTStream_readOrWriteBlock__block_invoke_cold_1();
  }

  v6 = **(a1 + 32);
  if (!v6)
  {
    return 561214578;
  }

  v8 = *(a1 + 40);
  v9 = *v8;
  if (*v8 <= a2)
  {
    v9 = a2;
  }

  *v8 = v9;
  v10 = *(a1 + 56);
  v11 = *(a1 + 60);
  v12 = 144;
  if (v11 == 1768845428)
  {
    v12 = 80;
  }

  v13 = *(a3 + v12);
  v14 = *(a1 + 68);
  v15 = v10 * a2;
  v16 = v13 % *(a1 + 64) * v10;
  if (v11 == 1768845428)
  {
    v17 = &v6[v16];
  }

  else
  {
    v17 = a4;
  }

  if (v11 == 1768845428)
  {
    v18 = a4;
  }

  else
  {
    v18 = &v6[v16];
  }

  v19 = v14 - v16;
  if (v14 - v16 >= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v14 - v16;
  }

  memcpy(v18, v17, v20);
  if (v19 < v15)
  {
    if (v11 == 1768845428)
    {
      v21 = &a4[v20];
    }

    else
    {
      v21 = v6;
    }

    if (v11 == 1768845428)
    {
      v22 = v6;
    }

    else
    {
      v22 = &a4[v20];
    }

    memcpy(v21, v22, v15 - v20);
  }

  result = **(a1 + 48);
  if (result)
  {
    (*(result + 16))(result, v13 + a2);
    return 0;
  }

  return result;
}

- (id)writeMixBlock
{
  if ([(ASDStream *)self direction]== 1869968496)
  {
    v3 = [(ASDTStream *)self readOrWriteBlock];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)readInputBlock
{
  if ([(ASDStream *)self direction]== 1768845428)
  {
    v3 = [(ASDTStream *)self readOrWriteBlock];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)writeZerosToMixMilliseconds:(unsigned int)a3 atSampleTime:(unint64_t)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = [(ASDStream *)self physicalFormat];
  [v7 sampleRate];
  v9 = v8;

  v10 = [(ASDStream *)self physicalFormat];
  v11 = [v10 bytesPerFrame];

  v12 = [(ASDTStream *)self ioBufferSize];
  v13 = [(ASDTStream *)self ioBufferRef];
  if (!v13 || (v14 = *v13) == 0 || !v12 || [(ASDStream *)self direction]== 1768845428)
  {
LABEL_72:
    v40 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = (v9 / 1000.0 * a3);
  v16 = v11 * v15;
  if (v16 < v12)
  {
    v17 = ASDTBaseLogType();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained(&self->_device);
      v43 = [WeakRetained deviceUID];
      *buf = 138412802;
      v50 = v43;
      v51 = 2048;
      v52 = a4;
      v53 = 1024;
      v54 = v15;
      _os_log_debug_impl(&dword_241659000, v17, OS_LOG_TYPE_DEBUG, "%@ Sample time: %llu, Zero frames: %u", buf, 0x1Cu);
    }

    v48 = [(ASDTStream *)self updateClientPositionBlock];
    v18 = a4 % (v12 / v11) * v11;
    v19 = v12 - v18;
    if (v19 >= v16)
    {
      v20 = v11 * v15;
    }

    else
    {
      v20 = v12 - v18;
    }

    v21 = ASDTBaseLogType();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v46 = [(ASDTStream *)self device];
      v44 = [v46 deviceUID];
      *buf = 138412802;
      v50 = v44;
      v51 = 2048;
      v52 = v18;
      v53 = 1024;
      v54 = v20;
      _os_log_debug_impl(&dword_241659000, v21, OS_LOG_TYPE_DEBUG, "%@ First fill to offset %llu size %u", buf, 0x1Cu);
    }

    v22 = ASDTBaseLogType();
    v23 = v16 - v20;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v47 = [(ASDTStream *)self device];
      v45 = [v47 deviceUID];
      *buf = 138412546;
      v50 = v45;
      v51 = 1024;
      LODWORD(v52) = v16 - v20;
      _os_log_debug_impl(&dword_241659000, v22, OS_LOG_TYPE_DEBUG, "%@ Second fill to offset 0 size %u", buf, 0x12u);
    }

    if (v20)
    {
      v24 = 0;
      v25 = vdupq_n_s64(v20 - 1);
      v26 = &v14[v18];
      do
      {
        v27 = vdupq_n_s64(v24);
        v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2416A4D30)));
        if (vuzp1_s8(vuzp1_s16(v28, *v25.i8), *v25.i8).u8[0])
        {
          v26[v24] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v28, *&v25), *&v25).i8[1])
        {
          v26[v24 + 1] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2416A4D20)))), *&v25).i8[2])
        {
          v26[v24 + 2] = 0;
          v26[v24 + 3] = 0;
        }

        v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2416A4D10)));
        if (vuzp1_s8(*&v25, vuzp1_s16(v29, *&v25)).i32[1])
        {
          v26[v24 + 4] = 0;
        }

        if (vuzp1_s8(*&v25, vuzp1_s16(v29, *&v25)).i8[5])
        {
          v26[v24 + 5] = 0;
        }

        if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2416A4D00))))).i8[6])
        {
          v26[v24 + 6] = 0;
          v26[v24 + 7] = 0;
        }

        v30 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2416A4CF0)));
        if (vuzp1_s8(vuzp1_s16(v30, *v25.i8), *v25.i8).u8[0])
        {
          v26[v24 + 8] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v30, *&v25), *&v25).i8[1])
        {
          v26[v24 + 9] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2416A4CE0)))), *&v25).i8[2])
        {
          v26[v24 + 10] = 0;
          v26[v24 + 11] = 0;
        }

        v31 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2416A4CD0)));
        if (vuzp1_s8(*&v25, vuzp1_s16(v31, *&v25)).i32[1])
        {
          v26[v24 + 12] = 0;
        }

        if (vuzp1_s8(*&v25, vuzp1_s16(v31, *&v25)).i8[5])
        {
          v26[v24 + 13] = 0;
        }

        if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2416A4CC0))))).i8[6])
        {
          v26[v24 + 14] = 0;
          v26[v24 + 15] = 0;
        }

        v24 += 16;
      }

      while (((v20 + 15) & 0x1FFFFFFF0) != v24);
    }

    if (v19 < v16)
    {
      v32 = vdupq_n_s64(v23 - 1);
      v33 = v14 + 7;
      v34 = 15;
      do
      {
        v35 = vdupq_n_s64(v34 - 15);
        v36 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_2416A4D30)));
        if (vuzp1_s8(vuzp1_s16(v36, *v32.i8), *v32.i8).u8[0])
        {
          *(v33 - 7) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v36, *&v32), *&v32).i8[1])
        {
          *(v33 - 6) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_2416A4D20)))), *&v32).i8[2])
        {
          *(v33 - 5) = 0;
          *(v33 - 4) = 0;
        }

        v37 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_2416A4D10)));
        if (vuzp1_s8(*&v32, vuzp1_s16(v37, *&v32)).i32[1])
        {
          *(v33 - 3) = 0;
        }

        if (vuzp1_s8(*&v32, vuzp1_s16(v37, *&v32)).i8[5])
        {
          *(v33 - 2) = 0;
        }

        if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_2416A4D00))))).i8[6])
        {
          *(v33 - 1) = 0;
          *v33 = 0;
        }

        v38 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_2416A4CF0)));
        if (vuzp1_s8(vuzp1_s16(v38, *v32.i8), *v32.i8).u8[0])
        {
          v33[1] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v38, *&v32), *&v32).i8[1])
        {
          v33[2] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_2416A4CE0)))), *&v32).i8[2])
        {
          v33[3] = 0;
          v33[4] = 0;
        }

        v39 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_2416A4CD0)));
        if (vuzp1_s8(*&v32, vuzp1_s16(v39, *&v32)).i32[1])
        {
          v33[5] = 0;
        }

        if (vuzp1_s8(*&v32, vuzp1_s16(v39, *&v32)).i8[5])
        {
          v33[6] = 0;
        }

        if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_2416A4CC0))))).i8[6])
        {
          v33[7] = 0;
          v33[8] = 0;
        }

        v34 += 16;
        v33 += 16;
      }

      while (v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0) != 15);
    }

    if (v48)
    {
      v48[2](v48, a4 + v15);
    }

    goto LABEL_72;
  }

  v41 = *MEMORY[0x277D85DE8];

  [(ASDTStream *)self clearBuffer];
}

- (ASDTAudioDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

+ (void)streamForConfig:(os_log_t)log withDevice:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "Invalid subclass name: %@", buf, 0xCu);
}

@end