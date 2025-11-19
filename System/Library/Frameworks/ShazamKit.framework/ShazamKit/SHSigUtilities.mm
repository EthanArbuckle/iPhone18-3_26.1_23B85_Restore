@interface SHSigUtilities
+ (BOOL)convertException:(const exception *)a3 toError:(id *)a4 code:(int)a5;
+ (double)signatureDurationForData:(id)a3 error:(id *)a4;
+ (id)signatureInfoForData:(id)a3 error:(id *)a4;
+ (int64_t)signatureFileTypeForData:(id)a3 error:(id *)a4;
@end

@implementation SHSigUtilities

+ (BOOL)convertException:(const exception *)a3 toError:(id *)a4 code:(int)a5
{
  if (a4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithCString:(*(a3->var0 + 2))(a3 encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:*MEMORY[0x277CCA068]];
    *a4 = [v8 errorWithDomain:@"com.shazam.sigvalidation" code:a5 userInfo:v9];
  }

  return a4 != 0;
}

+ (double)signatureDurationForData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = gsl::make_span<shazam::spectral_peak_compact_t const>([v4 bytes], objc_msgSend(v4, "length"));
  shazam::packed_signature_view::packed_signature_view(v10, v5, v6);
  shazam::get_siginfo(v10, v9);
  SampleLength = shazam::signature_info::getSampleLength(v9);

  return SampleLength;
}

+ (int64_t)signatureFileTypeForData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = gsl::make_span<shazam::spectral_peak_compact_t const>([v4 bytes], objc_msgSend(v4, "length"));
  shazam::packed_signature_view::packed_signature_view(v12, v5, v6);
  v7 = v13;
  if (v13 <= 1342177284)
  {
    if (v13 == 1342177280)
    {
      shazam::ccp::validateFirstClusterCmdPkt(v12, v11);
      v7 = *(v11[2] + 1);
      v8 = 2023406597;
    }

    else
    {
      v8 = 1342177282;
    }

    if (v7 == v8)
    {
      v9 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if (v13 == 1342177285)
  {
    v9 = 2;
    goto LABEL_12;
  }

  if (v13 != 1342177286)
  {
    goto LABEL_11;
  }

  v9 = 3;
LABEL_12:

  return v9;
}

+ (id)signatureInfoForData:(id)a3 error:(id *)a4
{
  v30[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = gsl::make_span<shazam::spectral_peak_compact_t const>([v4 bytes], objc_msgSend(v4, "length"));
  if (v5 == -1 || !v6 && v5)
  {
    gsl::details::terminate(v5);
  }

  shazam::packed_signature_view::packed_signature_view(v26, v5, v6);
  version = shazam::get_version(v26, v7);
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  if ((shazam::get_version_as_string(version, v24, __p) & 1) == 0)
  {
    legacy_version = shazam::get_legacy_version(v26, v9);
    if (legacy_version)
    {
      shazam::get_legacy_version_as_string(legacy_version, v24);
    }
  }

  if (v27 != 1342177285)
  {
    shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)2147483647>>(v20);
  }

  shazam::unpack_signature<shazam::freebird_signature>(v26, v20);
  v29[0] = @"raw_sample_rate";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
  v30[0] = v11;
  v29[1] = @"software_version";
  if (v25 >= 0)
  {
    v12 = v24;
  }

  else
  {
    v12 = v24[0];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:1];
  v30[1] = v13;
  v29[2] = @"format_version";
  if (v23 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  v15 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:1];
  v30[2] = v15;
  v29[3] = @"num_features";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v20[1] - v20[0]) >> 5];
  v30[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v28 = v20;
  std::vector<shazam::freebird_tensor>::__destroy_vector::operator()[abi:ne200100](&v28);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end