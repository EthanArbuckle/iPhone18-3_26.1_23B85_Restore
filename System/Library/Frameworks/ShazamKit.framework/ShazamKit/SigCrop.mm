@interface SigCrop
+ (BOOL)ConvertException:(const exception *)a3 toError:(id *)a4;
+ (BOOL)ConvertSystemError:(const system_error *)a3 toError:(id *)a4;
+ (BOOL)FillUnknownError:(id *)a3;
+ (BOOL)cropSignature:(id)a3 toDuration:(double)a4 stride:(double)a5 error:(id *)a6 callback:(id)a7;
+ (id)cropSignature:(id)a3 atPosition:(double)a4 withDuration:(double)a5 error:(id *)a6;
@end

@implementation SigCrop

+ (id)cropSignature:(id)a3 atPosition:(double)a4 withDuration:(double)a5 error:(id *)a6
{
  v6 = a3;
  v7 = gsl::make_span<shazam::spectral_peak_compact_t const>([v6 bytes], objc_msgSend(v6, "length"));
  shazam::packed_signature_view::packed_signature_view(v11, v7, v8);
  shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)2147483647>>(v10);
}

+ (BOOL)cropSignature:(id)a3 toDuration:(double)a4 stride:(double)a5 error:(id *)a6 callback:(id)a7
{
  v8 = a3;
  v9 = a7;
  v14[31] = 0;
  v10 = gsl::make_span<shazam::spectral_peak_compact_t const>([v8 bytes], objc_msgSend(v8, "length"));
  shazam::packed_signature_view::packed_signature_view(v14, v10, v11);
  shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)2147483647>>(v13);
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
    *a4 = [v7 errorWithDomain:@"com.shazam.sigcrop" code:var0 userInfo:v9];
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
    *a4 = [v6 errorWithDomain:@"com.shazam.sigcrop" code:-100 userInfo:v7];
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
    *a3 = [v4 errorWithDomain:@"com.shazam.sigcrop" code:-200 userInfo:v5];
  }

  result = a3 != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end