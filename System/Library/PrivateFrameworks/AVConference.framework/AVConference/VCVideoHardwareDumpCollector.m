@interface VCVideoHardwareDumpCollector
- (VCVideoHardwareDumpCollector)init;
- (void)dealloc;
- (void)init;
@end

@implementation VCVideoHardwareDumpCollector

- (VCVideoHardwareDumpCollector)init
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCVideoHardwareDumpCollector;
  v2 = [(VCVideoHardwareDumpCollector *)&v12 init];
  if (!v2)
  {
    [VCVideoHardwareDumpCollector init];
LABEL_20:

    return 0;
  }

  HeadersFromCArray = VCVideoHardwareDumpCollector_CreateHeadersFromCArray(VCVideoHardwareDumpCollector_EncodingDumpHeaders, 11);
  v2->_txDumpHeaders = HeadersFromCArray;
  if (!HeadersFromCArray)
  {
    [VCVideoHardwareDumpCollector init];
    goto LABEL_20;
  }

  v4 = VCVideoHardwareDumpCollector_CreateHeadersFromCArray(VCVideoHardwareDumpCollector_DecodingDumpHeaders, 6);
  v2->_rxDumpHeaders = v4;
  if (!v4)
  {
    [VCVideoHardwareDumpCollector init];
    goto LABEL_20;
  }

  v5 = VCVideoHardwareDumpCollector_CreateHeadersFromCArray(VCVideoHardwareDumpCollector_CaptureDumpHeaders, 2);
  v2->_captureDumpHeaders = v5;
  if (!v5)
  {
    [VCVideoHardwareDumpCollector init];
    goto LABEL_20;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2->_txFrameData = Mutable;
  if (!Mutable)
  {
    [VCVideoHardwareDumpCollector init];
    goto LABEL_20;
  }

  v8 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2->_rxFrameData = v8;
  if (!v8)
  {
    [VCVideoHardwareDumpCollector init];
    goto LABEL_20;
  }

  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2->_captureFrameData = v9;
  if (!v9)
  {
    [VCVideoHardwareDumpCollector init];
    goto LABEL_20;
  }

  v10 = +[VCVideoHardwareDumpWriter sharedInstance];
  v2->_writer = v10;
  if (!v10)
  {
    [VCVideoHardwareDumpCollector init];
    goto LABEL_20;
  }

  if ((VCVideoHardwareDumpWriter_RegisterSource(v10, v2) & 1) == 0)
  {
    [VCVideoHardwareDumpCollector init];
    goto LABEL_20;
  }

  return v2;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  txDumpHeaders = self->_txDumpHeaders;
  if (txDumpHeaders)
  {
    CFRelease(txDumpHeaders);
  }

  rxDumpHeaders = self->_rxDumpHeaders;
  if (rxDumpHeaders)
  {
    CFRelease(rxDumpHeaders);
  }

  captureDumpHeaders = self->_captureDumpHeaders;
  if (captureDumpHeaders)
  {
    CFRelease(captureDumpHeaders);
  }

  txFrameData = self->_txFrameData;
  if (txFrameData)
  {
    CFRelease(txFrameData);
  }

  rxFrameData = self->_rxFrameData;
  if (rxFrameData)
  {
    CFRelease(rxFrameData);
  }

  captureFrameData = self->_captureFrameData;
  if (captureFrameData)
  {
    CFRelease(captureFrameData);
  }

  v9.receiver = self;
  v9.super_class = VCVideoHardwareDumpCollector;
  [(VCVideoHardwareDumpCollector *)&v9 dealloc];
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize", v2, v3, v4, v5, v6);
    }
  }
}

@end