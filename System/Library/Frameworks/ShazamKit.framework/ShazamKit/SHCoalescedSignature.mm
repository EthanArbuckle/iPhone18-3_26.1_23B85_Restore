@interface SHCoalescedSignature
+ (BOOL)convertException:(const exception *)exception toError:(id *)error code:(int)code;
+ (BOOL)separate:(id)separate intoPeakFeatures:(id *)features andMusicalFeatures:(id *)musicalFeatures error:(id *)error;
+ (id)coalesePeakFeatures:(id)features musicalFeatures:(id)musicalFeatures error:(id *)error;
@end

@implementation SHCoalescedSignature

+ (BOOL)convertException:(const exception *)exception toError:(id *)error code:(int)code
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithCString:(*(exception->var0 + 2))(exception encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *error = [v8 errorWithDomain:@"com.shazam.sigvalidation" code:code userInfo:v9];
  }

  result = error != 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)coalesePeakFeatures:(id)features musicalFeatures:(id)musicalFeatures error:(id *)error
{
  featuresCopy = features;
  musicalFeaturesCopy = musicalFeatures;
  v8 = gsl::make_span<shazam::spectral_peak_compact_t const>([featuresCopy bytes], objc_msgSend(featuresCopy, "length"));
  shazam::packed_signature_view::packed_signature_view(v11, v8, v9);
  shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)2147483647>>(v12);
}

+ (BOOL)separate:(id)separate intoPeakFeatures:(id *)features andMusicalFeatures:(id *)musicalFeatures error:(id *)error
{
  separateCopy = separate;
  v9 = gsl::make_span<shazam::spectral_peak_compact_t const>([separateCopy bytes], objc_msgSend(separateCopy, "length"));
  shazam::packed_signature_view::packed_signature_view(&v13, v9, v10);
  shazam::unpack_signature<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>>(&v13, v14);
  shazam::io::pack(v14, &v13);
  shazam::io::pack(v16, &__p);
  *features = [MEMORY[0x277CBEA90] dataWithBytes:v13.__begin_ length:v13.__end_ - v13.__begin_];
  *musicalFeatures = [MEMORY[0x277CBEA90] dataWithBytes:__p.__begin_ length:__p.__end_ - __p.__begin_];
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