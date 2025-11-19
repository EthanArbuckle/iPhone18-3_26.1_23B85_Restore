@interface NSCoder
@end

@implementation NSCoder

uint64_t __49__NSCoder_VNAdditions__vn_decodeTimeRangeForKey___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  -[NSCoder(VNAdditions) vn_decodeTimeRangeForKey:]::ourCMTimeRangeRepresentationClassesSet = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

float __74__NSCoder_VNAdditions___vn_decodeSimdFloat3FromDataRepresentation_forKey___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 32) = *a2;
  *(*(*(a1 + 32) + 8) + 36) = *(a2 + 4);
  result = *(a2 + 8);
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

float __73__NSCoder_VNAdditions___vn_decode4x4MatrixFromDataRepresentation_forKey___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 48) = *a2;
  *(*(*(a1 + 32) + 8) + 52) = *(a2 + 4);
  *(*(*(a1 + 32) + 8) + 56) = *(a2 + 8);
  *(*(*(a1 + 32) + 8) + 60) = *(a2 + 12);
  *(*(*(a1 + 32) + 8) + 64) = *(a2 + 16);
  *(*(*(a1 + 32) + 8) + 68) = *(a2 + 20);
  *(*(*(a1 + 32) + 8) + 72) = *(a2 + 24);
  *(*(*(a1 + 32) + 8) + 76) = *(a2 + 28);
  *(*(*(a1 + 32) + 8) + 80) = *(a2 + 32);
  *(*(*(a1 + 32) + 8) + 84) = *(a2 + 36);
  *(*(*(a1 + 32) + 8) + 88) = *(a2 + 40);
  *(*(*(a1 + 32) + 8) + 92) = *(a2 + 44);
  *(*(*(a1 + 32) + 8) + 96) = *(a2 + 48);
  *(*(*(a1 + 32) + 8) + 100) = *(a2 + 52);
  *(*(*(a1 + 32) + 8) + 104) = *(a2 + 56);
  result = *(a2 + 60);
  *(*(*(a1 + 32) + 8) + 108) = result;
  return result;
}

float __73__NSCoder_VNAdditions___vn_decode3x3MatrixFromDataRepresentation_forKey___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 48) = *a2;
  *(*(*(a1 + 32) + 8) + 52) = *(a2 + 4);
  *(*(*(a1 + 32) + 8) + 56) = *(a2 + 8);
  *(*(*(a1 + 32) + 8) + 64) = *(a2 + 12);
  *(*(*(a1 + 32) + 8) + 68) = *(a2 + 16);
  *(*(*(a1 + 32) + 8) + 72) = *(a2 + 20);
  *(*(*(a1 + 32) + 8) + 80) = *(a2 + 24);
  *(*(*(a1 + 32) + 8) + 84) = *(a2 + 28);
  result = *(a2 + 32);
  *(*(*(a1 + 32) + 8) + 88) = result;
  return result;
}

@end