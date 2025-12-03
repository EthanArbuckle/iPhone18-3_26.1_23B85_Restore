@interface DKMessage
+ (id)encodeDKMessageMeasurementDataStart:(id)start;
+ (id)encodeDKMessageMeasurementSubEventContinue:(id)continue;
+ (id)encodeStepData:(id)data;
+ (id)encodeStepMode:(id)mode;
+ (id)getSpecificStepFromResults:(id)results withIndex:(unsigned __int8)index;
+ (id)sendEntireProcedure:(id)procedure withMTU:(unint64_t)u;
+ (unint64_t)sumDataValues:(id)values;
@end

@implementation DKMessage

+ (id)sendEntireProcedure:(id)procedure withMTU:(unint64_t)u
{
  procedureCopy = procedure;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [procedureCopy objectForKeyedSubscript:@"kCBCSNumStepsReported"];
  unsignedCharValue = [v5 unsignedCharValue];
  v43 = unsignedCharValue;

  v45 = procedureCopy;
  v38 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:procedureCopy];
  data = [MEMORY[0x277CBEB28] data];
  data2 = [MEMORY[0x277CBEB28] data];
  data3 = [MEMORY[0x277CBEB28] data];
  v9 = unsignedCharValue != 0;
  v10 = 0;
  if (unsignedCharValue)
  {
    while (1)
    {
      v11 = [self getSpecificStepFromResults:v45 withIndex:v10];
      v12 = [v11 objectForKeyedSubscript:@"kCBCSStepMode"];
      v13 = [self encodeStepData:v11];
      v14 = ceil(vcvtd_n_f64_u64([v12 length] + objc_msgSend(data, "length"), 1uLL)) + 24.0;
      v15 = [data2 length];
      if ((v14 + ([v13 length] + v15)) > u)
      {
        break;
      }

      [data appendData:v12];
      [data2 appendData:v13];
      v16 = [v11 objectForKeyedSubscript:@"kCBCSStepDataLength"];
      [data3 appendData:v16];
      ++v10;

      v9 = v10 < unsignedCharValue;
      if (v10 >= unsignedCharValue)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:unsignedCharValue];
  [v38 setObject:v17 forKeyedSubscript:@"kCBCSCurrentStepIndex"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
  [v38 setObject:v18 forKeyedSubscript:@"kCBCSNumStepsReported"];

  [v38 setObject:data forKeyedSubscript:@"kCBCSStepMode"];
  [v38 setObject:data2 forKeyedSubscript:@"kCBCSStepData"];
  data4 = data3;
  [v38 setObject:data3 forKeyedSubscript:@"kCBCSStepDataLength"];
  v20 = [self encodeStepMode:v38];
  [v38 setObject:v20 forKeyedSubscript:@"kCBCSStepMode"];

  v37 = [self encodeDKMessageMeasurementDataStart:v38];
  [array addObject:?];
  if (v9)
  {
    do
    {
      v21 = data4;
      v22 = data2;
      v23 = data;
      v41 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v45];
      data = [MEMORY[0x277CBEB28] data];

      data2 = [MEMORY[0x277CBEB28] data];

      data4 = [MEMORY[0x277CBEB28] data];

      v24 = v10 < v43;
      v25 = 0;
      if (v10 < v43)
      {
        while (1)
        {
          v26 = [self getSpecificStepFromResults:v45 withIndex:v10];
          v27 = [v26 objectForKeyedSubscript:@"kCBCSStepMode"];
          v28 = [self encodeStepData:v26];
          v29 = ceil(vcvtd_n_f64_u64([v27 length] + objc_msgSend(data, "length"), 1uLL)) + 8.0;
          v30 = [data2 length];
          if ((v29 + ([v28 length] + v30)) > u)
          {
            break;
          }

          [data appendData:v27];
          [data2 appendData:v28];
          v31 = [v26 objectForKeyedSubscript:@"kCBCSStepDataLength"];
          [data4 appendData:v31];
          ++v25;
          ++v10;

          v24 = v10 < v43;
          if (v10 >= v43)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_12:
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v25];
      [v41 setObject:v32 forKeyedSubscript:@"kCBCSNumStepsReported"];

      [v41 setObject:data forKeyedSubscript:@"kCBCSStepMode"];
      [v41 setObject:data2 forKeyedSubscript:@"kCBCSStepData"];
      [v41 setObject:data4 forKeyedSubscript:@"kCBCSStepDataLength"];
      v33 = [self encodeStepMode:v41];
      [v41 setObject:v33 forKeyedSubscript:@"kCBCSStepMode"];

      v34 = [self encodeDKMessageMeasurementSubEventContinue:v41];
      [array addObject:v34];
    }

    while (v24);
  }

  v35 = [array copy];

  return v35;
}

+ (id)getSpecificStepFromResults:(id)results withIndex:(unsigned __int8)index
{
  LODWORD(v4) = index;
  resultsCopy = results;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = [resultsCopy objectForKeyedSubscript:@"kCBCSStepMode"];
  v8 = [resultsCopy objectForKeyedSubscript:@"kCBCSStepDataLength"];
  bytes = [v8 bytes];
  if (v4)
  {
    v10 = 0;
    v4 = v4;
    v11 = v4;
    v12 = bytes;
    do
    {
      v13 = *v12++;
      v10 += v13;
      --v11;
    }

    while (v11);
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  v14 = *(bytes + v4);
  v15 = [resultsCopy objectForKeyedSubscript:@"kCBCSStepData"];
  v16 = [v7 subdataWithRange:{v4, 1}];
  [dictionary setObject:v16 forKeyedSubscript:@"kCBCSStepMode"];

  v17 = [v15 subdataWithRange:{v10, v14}];
  [dictionary setObject:v17 forKeyedSubscript:@"kCBCSStepData"];

  v18 = [v8 subdataWithRange:{v4, 1}];
  [dictionary setObject:v18 forKeyedSubscript:@"kCBCSStepDataLength"];

  v19 = [dictionary copy];

  return v19;
}

+ (id)encodeDKMessageMeasurementDataStart:(id)start
{
  startCopy = start;
  data = [MEMORY[0x277CBEB28] data];
  v45 = 7;
  [data appendBytes:&v45 length:1];
  v44 = 1;
  [data appendBytes:&v44 length:1];
  v43 = 0;
  v5 = [data length];
  [data appendBytes:&v43 length:2];
  v6 = [startCopy objectForKeyedSubscript:@"kCBCSProcedureCounter"];
  unsignedCharValue = [v6 unsignedCharValue];

  v42 = unsignedCharValue;
  [data appendBytes:&v42 length:1];
  v8 = [startCopy objectForKeyedSubscript:@"kCBCSConfigId"];
  unsignedCharValue2 = [v8 unsignedCharValue];

  v41 = unsignedCharValue2;
  [data appendBytes:&v41 length:1];
  v10 = [startCopy objectForKeyedSubscript:@"kCBCSNumAntennaPath"];
  unsignedCharValue3 = [v10 unsignedCharValue];

  for (i = 0; unsignedCharValue3; --unsignedCharValue3)
  {
    i = (2 * i) | 1;
  }

  v40 = i;
  [data appendBytes:&v40 length:1];
  v39 = 0;
  [data appendBytes:&v39 length:1];
  v38 = -1;
  [data appendBytes:&v38 length:1];
  v13 = [startCopy objectForKeyedSubscript:@"kCBCSStartAclConnEvent"];
  unsignedShortValue = [v13 unsignedShortValue];

  v37 = unsignedShortValue;
  [data appendBytes:&v37 length:2];
  v15 = [startCopy objectForKeyedSubscript:@"kCBCSProcedureDoneStatus"];
  LOBYTE(unsignedShortValue) = [v15 unsignedCharValue];

  v16 = [startCopy objectForKeyedSubscript:@"kCBCSSubEventDoneStatus"];
  unsignedCharValue4 = [v16 unsignedCharValue];

  v36 = unsignedShortValue | (16 * unsignedCharValue4);
  [data appendBytes:&v36 length:1];
  v35 = 0;
  [data appendBytes:&v35 length:1];
  v18 = [startCopy objectForKeyedSubscript:@"kCBCSFrequencyCompensation"];
  unsignedShortValue2 = [v18 unsignedShortValue];

  v34 = unsignedShortValue2;
  [data appendBytes:&v34 length:2];
  v33 = 0;
  [data appendBytes:&v33 length:1];
  v20 = [startCopy objectForKeyedSubscript:@"kCBCSReferencePowerLevel"];
  LOBYTE(unsignedShortValue2) = [v20 unsignedCharValue];

  v32 = unsignedShortValue2;
  [data appendBytes:&v32 length:1];
  v21 = [startCopy objectForKeyedSubscript:@"kCBCSCurrentStepIndex"];
  LOBYTE(unsignedShortValue2) = [v21 unsignedCharValue];

  v31 = unsignedShortValue2;
  [data appendBytes:&v31 length:1];
  v22 = [startCopy objectForKeyedSubscript:@"kCBCSNumStepsReported"];
  LOBYTE(unsignedShortValue2) = [v22 unsignedCharValue];

  v30 = unsignedShortValue2;
  [data appendBytes:&v30 length:1];
  v29 = 0;
  v28 = 0;
  [data appendBytes:&v28 length:5];
  v23 = [startCopy objectForKeyedSubscript:@"kCBCSStepMode"];
  [data appendData:v23];
  v24 = [startCopy objectForKeyedSubscript:@"kCBCSStepData"];
  [data appendData:v24];
  v27 = bswap32([data length] - v5 - 2) >> 16;
  [data replaceBytesInRange:v5 withBytes:{2, &v27}];
  v25 = [data copy];

  return v25;
}

+ (id)encodeDKMessageMeasurementSubEventContinue:(id)continue
{
  v3 = MEMORY[0x277CBEB28];
  continueCopy = continue;
  data = [v3 data];
  v22 = 7;
  [data appendBytes:&v22 length:1];
  v21 = 3;
  [data appendBytes:&v21 length:1];
  v20 = 0;
  v6 = [data length];
  [data appendBytes:&v20 length:2];
  v7 = [continueCopy objectForKeyedSubscript:@"kCBCSProcedureCounter"];
  unsignedCharValue = [v7 unsignedCharValue];

  v19 = unsignedCharValue;
  [data appendBytes:&v19 length:1];
  v9 = [continueCopy objectForKeyedSubscript:@"kCBCSStartAclConnEvent"];
  unsignedShortValue = [v9 unsignedShortValue];

  v18 = unsignedShortValue;
  v11 = [continueCopy objectForKeyedSubscript:@"kCBCSNumStepsReported"];
  LOBYTE(unsignedShortValue) = [v11 unsignedCharValue];

  v17 = unsignedShortValue;
  [data appendBytes:&v18 length:2];
  [data appendBytes:&v17 length:1];
  v12 = [continueCopy objectForKeyedSubscript:@"kCBCSStepMode"];
  [data appendData:v12];
  v13 = [continueCopy objectForKeyedSubscript:@"kCBCSStepData"];

  [data appendData:v13];
  v16 = bswap32([data length] - v6 - 2) >> 16;
  [data replaceBytesInRange:v6 withBytes:{2, &v16}];
  v14 = [data copy];

  return v14;
}

+ (id)encodeStepMode:(id)mode
{
  modeCopy = mode;
  data = [MEMORY[0x277CBEB28] data];
  v5 = [modeCopy objectForKeyedSubscript:@"kCBCSStepMode"];
  v6 = [modeCopy objectForKeyedSubscript:@"kCBCSNumStepsReported"];
  unsignedCharValue = [v6 unsignedCharValue];

  bytes = [v5 bytes];
  v9 = vcvtpd_s64_f64(vcvtd_n_f64_u32(unsignedCharValue, 1uLL));
  v16 = 0;
  if (unsignedCharValue)
  {
    v10 = bytes;
    v11 = 0;
    for (i = 0; i != unsignedCharValue; ++i)
    {
      v13 = *(v10 + i);
      if (i)
      {
        v16 = v11 ^ (16 * v13);
        [data appendBytes:&v16 length:1];
        v11 = 0;
      }

      else
      {
        v11 ^= v13 & 0xF;
      }

      v16 = v11;
    }
  }

  if ([data length] < v9)
  {
    [data appendBytes:&v16 length:1];
  }

  v14 = [data copy];

  return v14;
}

+ (id)encodeStepData:(id)data
{
  dataCopy = data;
  data = [MEMORY[0x277CBEB28] data];
  v5 = [dataCopy objectForKeyedSubscript:@"kCBCSStepData"];
  v6 = [dataCopy objectForKeyedSubscript:@"kCBCSStepMode"];
  v24 = dataCopy;
  v7 = [dataCopy objectForKeyedSubscript:@"kCBCSStepDataLength"];
  bytes = [v5 bytes];
  bytes2 = [v6 bytes];
  v23 = v7;
  bytes3 = [v7 bytes];
  if ([v6 length])
  {
    v11 = 0;
    v12 = 0;
    v25 = bytes2;
    v26 = v6;
    do
    {
      if (*(bytes2 + v11) == 2)
      {
        v29 = *(bytes + v12);
        [data appendBytes:&v29 length:1];
        v28 = 0;
        v27 = [data length];
        [data appendBytes:&v28 length:1];
        v13 = bytes;
        if (*(bytes3 + v11) >= 6u)
        {
          v14 = 0;
          v15 = 1;
          v16 = 1;
          do
          {
            [v5 subdataWithRange:{v15 + v12, 3}];
            v18 = v17 = v5;
            [data appendData:v18];
            v19 = v16 + 3;
            v16 = v15 + 4;
            v28 ^= (*(v13 + v19 + v12) & 3) << (2 * v14++);

            v5 = v17;
            v15 = v16;
          }

          while (v16 < *(bytes3 + v11) - 4);
        }

        [data replaceBytesInRange:v27 withBytes:{1, &v28}];
        bytes = v13;
        bytes2 = v25;
        v6 = v26;
      }

      else
      {
        v20 = [v5 subdataWithRange:{v12, *(bytes3 + v11)}];
        [data appendData:v20];
      }

      v12 += *(bytes3 + v11++);
    }

    while ([v6 length] > v11);
  }

  v21 = [data copy];

  return v21;
}

+ (unint64_t)sumDataValues:(id)values
{
  valuesCopy = values;
  bytes = [valuesCopy bytes];
  if ([valuesCopy length])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 += *(bytes + v5++);
    }

    while (v5 < [valuesCopy length]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end