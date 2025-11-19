@interface AVCaptureSynchronizedDataCollection
+ (id)_shortStringForDataDroppedReason:(int64_t)a3;
+ (id)_shortStringForDataOutput:(id)a3 syncedData:(id)a4;
+ (id)_shortStringForMetadataObjects:(id)a3;
- (AVCaptureSynchronizedData)objectForKeyedSubscript:(AVCaptureOutput *)key;
- (id)_initWithPossibleDataOutputs:(id)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)_setSynchronizedData:(id)a3 forCaptureOutput:(id)a4;
- (void)dealloc;
@end

@implementation AVCaptureSynchronizedDataCollection

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    if (internal->count >= 1)
    {
      v4 = 0;
      do
      {

        internal = self->_internal;
      }

      while (v4 < internal->count);
    }

    free(internal->dataOutputs);
    free(self->_internal->synchronizedData);
  }

  v5.receiver = self;
  v5.super_class = AVCaptureSynchronizedDataCollection;
  [(AVCaptureSynchronizedDataCollection *)&v5 dealloc];
}

- (AVCaptureSynchronizedData)objectForKeyedSubscript:(AVCaptureOutput *)key
{
  internal = self->_internal;
  count = internal->count;
  if (count < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 8 * count;
  while (internal->dataOutputs[v5 / 8] != key)
  {
    v5 += 8;
    if (v6 == v5)
    {
      return 0;
    }
  }

  return internal->synchronizedData[v5 / 8];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  a3->var2 = &self->_internal->changeSeed;
  if (var0)
  {
    return 0;
  }

  dataOutputs = self->_internal->dataOutputs;
  a3->var0 = 1;
  a3->var1 = dataOutputs;
  return self->_internal->count;
}

- (id)debugDescription
{
  value = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"{ "];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_internal->possibleDataOutputs;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(AVCaptureSynchronizedDataCollection *)self objectForKeyedSubscript:v9];
        [v4 appendFormat:@"%@", +[AVCaptureSynchronizedDataCollection _shortStringForDataOutput:syncedData:](AVCaptureSynchronizedDataCollection, "_shortStringForDataOutput:syncedData:", v9, v10)];
        if (v10)
        {
          [(AVCaptureSynchronizedData *)v10 timestamp];
          [v4 appendFormat:@" %*lld, ", 15, v17];
          if ((flags & 1) == 0)
          {
            [(AVCaptureSynchronizedData *)v10 timestamp];
            value = time.value;
            flags = time.flags;
            timescale = time.timescale;
            epoch = time.epoch;
          }
        }

        else
        {
          [v4 appendString:{@", "}];
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v6);
  }

  lhs = self->_internal->creationTime;
  rhs.value = value;
  rhs.timescale = timescale;
  rhs.flags = flags;
  rhs.epoch = epoch;
  CMTimeSubtract(&time, &lhs, &rhs);
  [v4 appendFormat:@"} (Latency:%f)", CMTimeGetSeconds(&time)];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureSynchronizedDataCollection debugDescription](self, "debugDescription")];
}

- (id)_initWithPossibleDataOutputs:(id)a3
{
  v11.receiver = self;
  v11.super_class = AVCaptureSynchronizedDataCollection;
  v4 = [(AVCaptureSynchronizedDataCollection *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVCaptureSynchronizedDataCollectionInternal);
    v4->_internal = v5;
    if (v5)
    {
      v6 = v5;
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v10, HostTimeClock);
      v6->creationTime = v10;
      v4->_internal->possibleDataOutputs = a3;
      v4->_internal->maxCount = [a3 count];
      internal = v4->_internal;
      if (internal->maxCount)
      {
        v4->_internal->dataOutputs = malloc_type_calloc(internal->maxCount, 8uLL, 0x80040B8603338uLL);
        v4->_internal->synchronizedData = malloc_type_calloc(v4->_internal->maxCount, 8uLL, 0x80040B8603338uLL);
      }
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)_setSynchronizedData:(id)a3 forCaptureOutput:(id)a4
{
  ++self->_internal->changeSeed;
  internal = self->_internal;
  count = internal->count;
  if (count < 1)
  {
LABEL_5:
    if (count >= internal->maxCount)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v9);
      }

      NSLog(&cfstr_SuppressingExc.isa, v9);
    }

    else
    {
      self->_internal->dataOutputs[self->_internal->count] = a4;
      self->_internal->synchronizedData[self->_internal->count++] = a3;
    }
  }

  else
  {
    v8 = 0;
    while (internal->dataOutputs[v8] != a4)
    {
      if (count == ++v8)
      {
        goto LABEL_5;
      }
    }

    self->_internal->synchronizedData[v8] = a3;
  }
}

+ (id)_shortStringForDataOutput:(id)a3 syncedData:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4)
    {
      v6 = MEMORY[0x1E696AEC0];
      if ([a4 sampleBufferWasDropped])
      {
        v7 = "!";
      }

      else
      {
        v7 = " ";
      }

      return [v6 stringWithFormat:@"VDO[%s%@]:", v7, objc_msgSend(a1, "_shortStringForDataDroppedReason:", objc_msgSend(a4, "droppedReason"))];
    }

    else
    {
      return @"VDO[--]:";
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a4)
      {
        return @"ADO[  ]:";
      }

      else
      {
        return @"ADO[--]:";
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a4)
        {
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"MDO[%@]:", objc_msgSend(a1, "_shortStringForMetadataObjects:", objc_msgSend(a4, "metadataObjects")), v17];
        }

        else
        {
          return @"MDO[--]:";
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (a4)
          {
            v9 = MEMORY[0x1E696AEC0];
            if ([a4 depthDataWasDropped])
            {
              v10 = "!";
            }

            else
            {
              v10 = " ";
            }

            return [v9 stringWithFormat:@"DDO[%s%@]:", v10, objc_msgSend(a1, "_shortStringForDataDroppedReason:", objc_msgSend(a4, "droppedReason"))];
          }

          else
          {
            return @"DDO[--]:";
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (a4)
            {
              v11 = MEMORY[0x1E696AEC0];
              if ([a4 visionDataWasDropped])
              {
                v12 = "!";
              }

              else
              {
                v12 = " ";
              }

              return [v11 stringWithFormat:@"VSNDO[%s%@]:", v12, objc_msgSend(a1, "_shortStringForDataDroppedReason:", objc_msgSend(a4, "droppedReason"))];
            }

            else
            {
              return @"VSNDO[--]:";
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (a4)
              {
                v13 = MEMORY[0x1E696AEC0];
                if ([a4 pointCloudDataWasDropped])
                {
                  v14 = "!";
                }

                else
                {
                  v14 = " ";
                }

                return [v13 stringWithFormat:@"PDO[%s%@]:", v14, objc_msgSend(a1, "_shortStringForDataDroppedReason:", objc_msgSend(a4, "droppedReason"))];
              }

              else
              {
                return @"PDO[--]:";
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (a4)
                {
                  v15 = MEMORY[0x1E696AEC0];
                  if ([a4 cameraCalibrationDataWasDropped])
                  {
                    v16 = "!";
                  }

                  else
                  {
                    v16 = " ";
                  }

                  return [v15 stringWithFormat:@"CCDO[%s%@]:", v16, objc_msgSend(a1, "_shortStringForDataDroppedReason:", objc_msgSend(a4, "droppedReason"))];
                }

                else
                {
                  return @"CCDO[--]:";
                }
              }

              else
              {
                return @"???[--]:";
              }
            }
          }
        }
      }
    }
  }
}

+ (id)_shortStringForDataDroppedReason:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @" ";
  }

  else
  {
    return off_1E786F750[a3 - 1];
  }
}

+ (id)_shortStringForMetadataObjects:(id)a3
{
  v4 = [MEMORY[0x1E696AD60] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) type];
        if (v9 == @"face")
        {
          v10 = @"FA_";
        }

        else if (v9 == @"humanBody")
        {
          v10 = @"HB_";
        }

        else if (v9 == @"humanFullBody")
        {
          v10 = @"HFB_";
        }

        else if (v9 == @"catBody")
        {
          v10 = @"CB_";
        }

        else if (v9 == @"dogBody")
        {
          v10 = @"DB_";
        }

        else if (v9 == @"salientObject")
        {
          v10 = @"SO_";
        }

        else if (v9 == @"org.gs1.UPC-E")
        {
          v10 = @"UE_";
        }

        else if (v9 == @"org.iso.Code39")
        {
          v10 = @"39_";
        }

        else if (v9 == @"org.iso.Code39Mod43")
        {
          v10 = @"43_";
        }

        else if (v9 == @"org.gs1.EAN-13")
        {
          v10 = @"13_";
        }

        else if (v9 == @"org.gs1.EAN-8")
        {
          v10 = @"E8_";
        }

        else if (v9 == @"com.intermec.Code93")
        {
          v10 = @"93_";
        }

        else if (v9 == @"org.iso.Code128")
        {
          v10 = @"80_";
        }

        else if (v9 == @"org.iso.PDF417")
        {
          v10 = @"PD_";
        }

        else if (v9 == @"org.iso.QRCode")
        {
          v10 = @"QR_";
        }

        else if (v9 == @"org.iso.Aztec")
        {
          v10 = @"AZ_";
        }

        else if (v9 == @"org.ansi.Interleaved2of5")
        {
          v10 = @"25_";
        }

        else if (v9 == @"org.gs1.ITF14")
        {
          v10 = @"IT_";
        }

        else if (v9 == @"org.iso.DataMatrix")
        {
          v10 = @"DM_";
        }

        else if (v9 == @"Codabar")
        {
          v10 = @"CD_";
        }

        else if (v9 == @"org.gs1.GS1DataBar")
        {
          v10 = @"DC_";
        }

        else if (v9 == @"org.gs1.GS1DataBarExpanded")
        {
          v10 = @"DE_";
        }

        else if (v9 == @"org.gs1.GS1DataBarLimited")
        {
          v10 = @"DL_";
        }

        else if (v9 == @"org.iso.MicroQR")
        {
          v10 = @"MQ_";
        }

        else if (v9 == @"org.iso.MicroPDF417")
        {
          v10 = @"MP_";
        }

        else if (v9 == @"trackedFaces")
        {
          v10 = @"TF_";
        }

        else if (v9 == @"offlineVideoStabilizationMotion")
        {
          v10 = @"VS_";
        }

        else if (v9 == @"saliencyHeatMap")
        {
          v10 = @"SH_";
        }

        else if (v9 == @"videoPreviewHistogram")
        {
          v10 = @"VP_";
        }

        else if (v9 == @"com.apple.AppClipCode")
        {
          v10 = @"AC_";
        }

        else if (v9 == @"textRegion")
        {
          v10 = @"TR_";
        }

        else if (v9 == @"sceneClassification")
        {
          v10 = @"SC_";
        }

        else if (v9 == @"humanHead")
        {
          v10 = @"HH_";
        }

        else if (v9 == @"catHead")
        {
          v10 = @"CH_";
        }

        else if (v9 == @"dogHead")
        {
          v10 = @"DH_";
        }

        else
        {
          v10 = @"??_";
        }

        [v4 appendString:v10];
      }

      v6 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  if ([v4 hasSuffix:@"_"])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  }

  else
  {
    [v4 appendString:@"__"];
  }

  return v4;
}

@end