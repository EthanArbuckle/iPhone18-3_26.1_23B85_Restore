@interface SignatureAlignmentTracker
+ (BOOL)ConvertException:(const exception *)exception toError:(id *)error;
+ (BOOL)ConvertSystemError:(const system_error *)error toError:(id *)toError;
+ (BOOL)FillUnknownError:(id *)error;
+ (id)compareQuerySignature:(id)signature withReferenceSignature:(id)referenceSignature mergeMode:(int64_t)mode numHistogramBuckets:(unsigned int)buckets scoreThreshold:(float)threshold boundingBox:(unsigned int)box frequencyPenaltyMultiplier:(float)multiplier forwardPassOnly:(BOOL)self0 singlePassOnly:(BOOL)self1 refineStartEnd:(BOOL)self2 queryThreshold:(float)self3 error:(id *)self4;
+ (id)signatureAlignmentFromTrackingResult:(TrackingResult *)result;
@end

@implementation SignatureAlignmentTracker

+ (id)compareQuerySignature:(id)signature withReferenceSignature:(id)referenceSignature mergeMode:(int64_t)mode numHistogramBuckets:(unsigned int)buckets scoreThreshold:(float)threshold boundingBox:(unsigned int)box frequencyPenaltyMultiplier:(float)multiplier forwardPassOnly:(BOOL)self0 singlePassOnly:(BOOL)self1 refineStartEnd:(BOOL)self2 queryThreshold:(float)self3 error:(id *)self4
{
  signatureCopy = signature;
  referenceSignatureCopy = referenceSignature;
  v17 = gsl::make_span<shazam::spectral_peak_compact_t const>([referenceSignatureCopy bytes], objc_msgSend(referenceSignatureCopy, "length"));
  shazam::packed_signature_view::packed_signature_view(v20, v17, v18);
  shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)16>>(v21);
}

+ (id)signatureAlignmentFromTrackingResult:(TrackingResult *)result
{
  v4 = (result->var0.var0.var0 / 125.0);
  v5 = (result->var0.var1.var0 / 125.0);
  v6 = (result->var1.var0.var0 / 125.0);
  v7 = (result->var1.var1.var0 / 125.0);
  v8 = [SignatureAlignmentTrackerResult alloc];
  *&v9 = result->var2;
  v10 = [(SignatureAlignmentTrackerResult *)v8 initWithQueryStart:v4 queryEnd:v5 referenceStart:v6 referenceEnd:v7 confidence:v9];

  return v10;
}

+ (BOOL)ConvertSystemError:(const system_error *)error toError:(id *)toError
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (toError)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:(*(error->var0 + 2))(error encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v7 = MEMORY[0x277CCA9B8];
    var0 = error->var2.var0;
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *toError = [v7 errorWithDomain:@"com.shazam.sigalignmenttracker" code:var0 userInfo:v9];
  }

  result = toError != 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)ConvertException:(const exception *)exception toError:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:(*(exception->var0 + 2))(exception encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v6 errorWithDomain:@"com.shazam.sigalignmenttracker" code:-100 userInfo:v7];
  }

  result = error != 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)FillUnknownError:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v4 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = @"Something unexpected happened.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *error = [v4 errorWithDomain:@"com.shazam.sigalignmenttracker" code:-200 userInfo:v5];
  }

  result = error != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end