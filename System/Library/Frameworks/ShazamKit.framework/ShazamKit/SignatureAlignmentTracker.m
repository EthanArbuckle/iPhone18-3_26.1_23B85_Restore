@interface SignatureAlignmentTracker
+ (BOOL)ConvertException:(const exception *)a3 toError:(id *)a4;
+ (BOOL)ConvertSystemError:(const system_error *)a3 toError:(id *)a4;
+ (BOOL)FillUnknownError:(id *)a3;
+ (id)compareQuerySignature:(id)a3 withReferenceSignature:(id)a4 mergeMode:(int64_t)a5 numHistogramBuckets:(unsigned int)a6 scoreThreshold:(float)a7 boundingBox:(unsigned int)a8 frequencyPenaltyMultiplier:(float)a9 forwardPassOnly:(BOOL)a10 singlePassOnly:(BOOL)a11 refineStartEnd:(BOOL)a12 queryThreshold:(float)a13 error:(id *)a14;
+ (id)signatureAlignmentFromTrackingResult:(TrackingResult *)a3;
@end

@implementation SignatureAlignmentTracker

+ (id)compareQuerySignature:(id)a3 withReferenceSignature:(id)a4 mergeMode:(int64_t)a5 numHistogramBuckets:(unsigned int)a6 scoreThreshold:(float)a7 boundingBox:(unsigned int)a8 frequencyPenaltyMultiplier:(float)a9 forwardPassOnly:(BOOL)a10 singlePassOnly:(BOOL)a11 refineStartEnd:(BOOL)a12 queryThreshold:(float)a13 error:(id *)a14
{
  v15 = a3;
  v16 = a4;
  v17 = gsl::make_span<shazam::spectral_peak_compact_t const>([v16 bytes], objc_msgSend(v16, "length"));
  shazam::packed_signature_view::packed_signature_view(v20, v17, v18);
  shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)16>>(v21);
}

+ (id)signatureAlignmentFromTrackingResult:(TrackingResult *)a3
{
  v4 = (a3->var0.var0.var0 / 125.0);
  v5 = (a3->var0.var1.var0 / 125.0);
  v6 = (a3->var1.var0.var0 / 125.0);
  v7 = (a3->var1.var1.var0 / 125.0);
  v8 = [SignatureAlignmentTrackerResult alloc];
  *&v9 = a3->var2;
  v10 = [(SignatureAlignmentTrackerResult *)v8 initWithQueryStart:v4 queryEnd:v5 referenceStart:v6 referenceEnd:v7 confidence:v9];

  return v10;
}

+ (BOOL)ConvertSystemError:(const system_error *)a3 toError:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:(*(a3->var0 + 2))(a3 encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v7 = MEMORY[0x277CCA9B8];
    var0 = a3->var2.var0;
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [v7 errorWithDomain:@"com.shazam.sigalignmenttracker" code:var0 userInfo:v9];
  }

  result = a4 != 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)ConvertException:(const exception *)a3 toError:(id *)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:(*(a3->var0 + 2))(a3 encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a4 = [v6 errorWithDomain:@"com.shazam.sigalignmenttracker" code:-100 userInfo:v7];
  }

  result = a4 != 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)FillUnknownError:(id *)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = @"Something unexpected happened.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *a3 = [v4 errorWithDomain:@"com.shazam.sigalignmenttracker" code:-200 userInfo:v5];
  }

  result = a3 != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end