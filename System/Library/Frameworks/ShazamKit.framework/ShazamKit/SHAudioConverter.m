@interface SHAudioConverter
- (SHAudioConverter)audioConverterWithInputFormat:(id)a3 outputFormat:(id)a4;
- (id)supportedPCMBufferFromBuffer:(id)a3 error:(id *)a4;
@end

@implementation SHAudioConverter

- (id)supportedPCMBufferFromBuffer:(id)a3 error:(id *)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 format];
  v9 = [v8 channelCount];

  if (v9 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:v10 channels:1 interleaved:48000.0];
  if ([v7 frameLength])
  {
    v12 = [v7 frameLength];
    v13 = [v7 format];
    [v13 sampleRate];
    LODWORD(v4) = vcvtad_u64_f64(48000.0 / v14 * v12);

    v15 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v11 frameCapacity:v4];
    v16 = [v7 format];
    v17 = [(SHAudioConverter *)self audioConverterWithInputFormat:v16 outputFormat:v11];

    v18 = MEMORY[0x277CCACA8];
    v19 = [v7 format];
    v20 = [v18 stringWithFormat:@"Failed to convert input buffer with format %@ to standard format %@", objc_msgSend(v19, "formatDescription"), objc_msgSend(v11, "formatDescription")];

    if (v15)
    {
      v21 = v17 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v34 = *MEMORY[0x277CCA450];
      v35[0] = v20;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      [SHError annotateClientError:a4 code:100 underlyingError:0 keyOverrides:v22];
      v23 = 0;
    }

    else
    {
      v31 = 0;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __55__SHAudioConverter_supportedPCMBufferFromBuffer_error___block_invoke;
      v29[3] = &unk_2788F8190;
      v30 = v7;
      v24 = [v17 convertToBuffer:v15 error:&v31 withInputFromBlock:v29];
      v25 = v31;
      v22 = v25;
      if (v24 == 3)
      {
        v32 = *MEMORY[0x277CCA450];
        v33 = v20;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        [SHError annotateClientError:a4 code:100 underlyingError:v22 keyOverrides:v26];

        v23 = 0;
      }

      else
      {
        v23 = v15;
      }
    }
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v11 frameCapacity:0];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v23;
}

- (SHAudioConverter)audioConverterWithInputFormat:(id)a3 outputFormat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHAudioConverter *)self converter];
  v9 = [v8 inputFormat];
  if (([v6 isEqual:v9] & 1) == 0)
  {

    goto LABEL_5;
  }

  v10 = [(SHAudioConverter *)self converter];
  v11 = [v10 outputFormat];
  v12 = [v7 isEqual:v11];

  if ((v12 & 1) == 0)
  {
LABEL_5:
    v13 = [objc_alloc(MEMORY[0x277CB8380]) initFromFormat:v6 toFormat:v7];
    [(SHAudioConverter *)self setConverter:v13];
  }

  v14 = [(SHAudioConverter *)self converter];

  return v14;
}

@end