@interface SHCoalescedSignature
+ (BOOL)convertException:(const exception *)a3 toError:(id *)a4 code:(int)a5;
+ (BOOL)separate:(id)a3 intoPeakFeatures:(id *)a4 andMusicalFeatures:(id *)a5 error:(id *)a6;
+ (id)coalesePeakFeatures:(id)a3 musicalFeatures:(id)a4 error:(id *)a5;
@end

@implementation SHCoalescedSignature

+ (BOOL)convertException:(const exception *)a3 toError:(id *)a4 code:(int)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithCString:(*(a3->var0 + 2))(a3 encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [v8 errorWithDomain:@"com.shazam.sigvalidation" code:a5 userInfo:v9];
  }

  result = a4 != 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)coalesePeakFeatures:(id)a3 musicalFeatures:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = gsl::make_span<shazam::spectral_peak_compact_t const>([v6 bytes], objc_msgSend(v6, "length"));
  shazam::packed_signature_view::packed_signature_view(v11, v8, v9);
  shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)2147483647>>(v12);
}

+ (BOOL)separate:(id)a3 intoPeakFeatures:(id *)a4 andMusicalFeatures:(id *)a5 error:(id *)a6
{
  v8 = a3;
  v9 = gsl::make_span<shazam::spectral_peak_compact_t const>([v8 bytes], objc_msgSend(v8, "length"));
  shazam::packed_signature_view::packed_signature_view(&v13, v9, v10);
  shazam::unpack_signature<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>>(&v13, v14);
  shazam::io::pack(v14, &v13);
  shazam::io::pack(v16, &__p);
  *a4 = [MEMORY[0x277CBEA90] dataWithBytes:v13.__begin_ length:v13.__end_ - v13.__begin_];
  *a5 = [MEMORY[0x277CBEA90] dataWithBytes:__p.__begin_ length:__p.__end_ - __p.__begin_];
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v13.__begin_)
  {
    v13.__end_ = v13.__begin_;
    operator delete(v13.__begin_);
  }

  v13.__begin_ = v16;
  std::vector<shazam::freebird_tensor>::__destroy_vector::operator()[abi:ne200100](&v13);
  v13.__begin_ = &v15;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v13);

  return 1;
}

@end