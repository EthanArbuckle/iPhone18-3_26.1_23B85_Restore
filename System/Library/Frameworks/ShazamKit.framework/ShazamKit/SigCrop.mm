@interface SigCrop
+ (BOOL)ConvertException:(const exception *)exception toError:(id *)error;
+ (BOOL)ConvertSystemError:(const system_error *)error toError:(id *)toError;
+ (BOOL)FillUnknownError:(id *)error;
+ (BOOL)cropSignature:(id)signature toDuration:(double)duration stride:(double)stride error:(id *)error callback:(id)callback;
+ (id)cropSignature:(id)signature atPosition:(double)position withDuration:(double)duration error:(id *)error;
@end

@implementation SigCrop

+ (id)cropSignature:(id)signature atPosition:(double)position withDuration:(double)duration error:(id *)error
{
  signatureCopy = signature;
  v7 = gsl::make_span<shazam::spectral_peak_compact_t const>([signatureCopy bytes], objc_msgSend(signatureCopy, "length"));
  shazam::packed_signature_view::packed_signature_view(v11, v7, v8);
  shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)2147483647>>(v10);
}

+ (BOOL)cropSignature:(id)signature toDuration:(double)duration stride:(double)stride error:(id *)error callback:(id)callback
{
  signatureCopy = signature;
  callbackCopy = callback;
  v14[31] = 0;
  v10 = gsl::make_span<shazam::spectral_peak_compact_t const>([signatureCopy bytes], objc_msgSend(signatureCopy, "length"));
  shazam::packed_signature_view::packed_signature_view(v14, v10, v11);
  shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)2147483647>>(v13);
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
    *toError = [v7 errorWithDomain:@"com.shazam.sigcrop" code:var0 userInfo:v9];
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
    *error = [v6 errorWithDomain:@"com.shazam.sigcrop" code:-100 userInfo:v7];
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
    *error = [v4 errorWithDomain:@"com.shazam.sigcrop" code:-200 userInfo:v5];
  }

  result = error != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end