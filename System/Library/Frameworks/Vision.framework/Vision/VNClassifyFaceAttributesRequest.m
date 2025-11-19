@interface VNClassifyFaceAttributesRequest
+ (const)dependentRequestMappingTable;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
+ (id)publicRevisionsSet;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
@end

@implementation VNClassifyFaceAttributesRequest

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 - 3737841664u < 7 && ((0x6Du >> a3) & 1) != 0)
  {
    v5 = off_1E77B4158[a3 - 3737841664u];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNClassifyFaceAttributesRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNClassifyFaceAttributesRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNClassifyFaceAttributesRequest privateRevisionsSet]::onceToken, &__block_literal_global_18327);
  }

  v3 = +[VNClassifyFaceAttributesRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __54__VNClassifyFaceAttributesRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNClassifyFaceAttributesRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF005uLL, a2, a3, a4, a5, a6, a7, a8, 3737841667);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)publicRevisionsSet
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v2;
}

+ (const)dependentRequestMappingTable
{
  {
    +[VNClassifyFaceAttributesRequest dependentRequestMappingTable]::ourDependentRequestMappingTable = 3737841664;
    qword_1EB286508 = objc_opt_class();
    unk_1EB286510 = 3737841667;
    qword_1EB286520 = 0;
    unk_1EB286528 = 0;
    qword_1EB286518 = 0;
  }

  return &+[VNClassifyFaceAttributesRequest dependentRequestMappingTable]::ourDependentRequestMappingTable;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 - 3737841664u > 6 || ((1 << a3) & 0x6D) == 0)
  {
    if (a4)
    {
      [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
      *a4 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = @"VNFaceAnalyzerMultiDetectorType";
    v6 = @"VNFaceAnalyzerMultiDetectorType";
  }

  return v5;
}

@end