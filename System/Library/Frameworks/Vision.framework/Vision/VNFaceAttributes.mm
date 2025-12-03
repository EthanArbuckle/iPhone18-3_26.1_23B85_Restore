@interface VNFaceAttributes
- (BOOL)isEqual:(id)equal;
- (VNFaceAttributes)initWithCoder:(id)coder;
- (VNFaceAttributes)initWithRequestRevision:(unint64_t)revision;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAgeCategory:(id)category;
- (void)setBaldCategory:(uint64_t)category;
- (void)setEyesCategory:(uint64_t)category;
- (void)setFaceHairCategory:(uint64_t)category;
- (void)setFacemaskCategory:(uint64_t)category;
- (void)setGlassesCategory:(uint64_t)category;
- (void)setHairColorCategory:(uint64_t)category;
- (void)setMakeupEyesCategory:(uint64_t)category;
- (void)setMakeupLipsCategory:(uint64_t)category;
- (void)setSmilingCategory:(uint64_t)category;
- (void)setVN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB:(uint64_t)b;
- (void)setVN2riiZbQrloRhCzYW56f0rk4N3ROe151S:(uint64_t)s;
- (void)setVN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq:(uint64_t)kdq;
- (void)setVN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1:(uint64_t)i1;
- (void)setVN5ui9WkMeVvCBruHiQE1q2r6E9kO1AyrP:(id)p;
- (void)setVN7CbCeAogPS2iHE6VQwu6H96xanljtMqk:(uint64_t)mqk;
- (void)setVN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE:(uint64_t)e;
- (void)setVN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP:(uint64_t)p;
- (void)setVNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk:(uint64_t)wyk;
@end

@implementation VNFaceAttributes

- (void)setVN5ui9WkMeVvCBruHiQE1q2r6E9kO1AyrP:(id)p
{
  pCopy = p;
  v4 = [pCopy copy];
  VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = self->_VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE;
  self->_VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = v4;
}

- (void)setAgeCategory:(id)category
{
  categoryCopy = category;
  v4 = [categoryCopy copy];
  ageCategory = self->_ageCategory;
  self->_ageCategory = v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v60 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestRevision = [(VNFaceAttributes *)self requestRevision];
      if (requestRevision == [(VNFaceAttributes *)v5 requestRevision]
        && ([(VNFaceAttributes *)self ageCategory], v7 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 ageCategory], v8 = objc_claimAutoreleasedReturnValue(), v9 = VisionCoreEqualOrNilObjects(), v8, v7, (v9 & 1) != 0)
        && ([(VNFaceAttributes *)self VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE], v10 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE], v11 = objc_claimAutoreleasedReturnValue(), v12 = VisionCoreEqualOrNilObjects(), v11, v10, (v12 & 1) != 0)
        && ([(VNFaceAttributes *)self eyesCategory], v13 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 eyesCategory], v14 = objc_claimAutoreleasedReturnValue(), v15 = VisionCoreEqualOrNilObjects(), v14, v13, (v15 & 1) != 0)
        && ([(VNFaceAttributes *)self smilingCategory], v16 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 smilingCategory], v17 = objc_claimAutoreleasedReturnValue(), v18 = VisionCoreEqualOrNilObjects(), v17, v16, (v18 & 1) != 0)
        && ([(VNFaceAttributes *)self faceHairCategory], v19 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 faceHairCategory], v20 = objc_claimAutoreleasedReturnValue(), v21 = VisionCoreEqualOrNilObjects(), v20, v19, (v21 & 1) != 0)
        && ([(VNFaceAttributes *)self hairColorCategory], v22 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 hairColorCategory], v23 = objc_claimAutoreleasedReturnValue(), v24 = VisionCoreEqualOrNilObjects(), v23, v22, (v24 & 1) != 0)
        && ([(VNFaceAttributes *)self baldCategory], v25 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 baldCategory], v26 = objc_claimAutoreleasedReturnValue(), v27 = VisionCoreEqualOrNilObjects(), v26, v25, (v27 & 1) != 0)
        && ([(VNFaceAttributes *)self glassesCategory], v28 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 glassesCategory], v29 = objc_claimAutoreleasedReturnValue(), v30 = VisionCoreEqualOrNilObjects(), v29, v28, (v30 & 1) != 0)
        && ([(VNFaceAttributes *)self makeupEyesCategory], v31 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 makeupEyesCategory], v32 = objc_claimAutoreleasedReturnValue(), v33 = VisionCoreEqualOrNilObjects(), v32, v31, (v33 & 1) != 0)
        && ([(VNFaceAttributes *)self makeupLipsCategory], v34 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 makeupLipsCategory], v35 = objc_claimAutoreleasedReturnValue(), v36 = VisionCoreEqualOrNilObjects(), v35, v34, (v36 & 1) != 0)
        && ([(VNFaceAttributes *)self VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB], v37 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB], v38 = objc_claimAutoreleasedReturnValue(), v39 = VisionCoreEqualOrNilObjects(), v38, v37, (v39 & 1) != 0)
        && ([(VNFaceAttributes *)self VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1], v40 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1], v41 = objc_claimAutoreleasedReturnValue(), v42 = VisionCoreEqualOrNilObjects(), v41, v40, (v42 & 1) != 0)
        && ([(VNFaceAttributes *)self VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk], v43 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk], v44 = objc_claimAutoreleasedReturnValue(), v45 = VisionCoreEqualOrNilObjects(), v44, v43, (v45 & 1) != 0)
        && ([(VNFaceAttributes *)self VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP], v46 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP], v47 = objc_claimAutoreleasedReturnValue(), v48 = VisionCoreEqualOrNilObjects(), v47, v46, (v48 & 1) != 0)
        && ([(VNFaceAttributes *)self VN2riiZbQrloRhCzYW56f0rk4N3ROe151S], v49 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 VN2riiZbQrloRhCzYW56f0rk4N3ROe151S], v50 = objc_claimAutoreleasedReturnValue(), v51 = VisionCoreEqualOrNilObjects(), v50, v49, (v51 & 1) != 0)
        && ([(VNFaceAttributes *)self VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk], v52 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk], v53 = objc_claimAutoreleasedReturnValue(), v54 = VisionCoreEqualOrNilObjects(), v53, v52, (v54 & 1) != 0)
        && ([(VNFaceAttributes *)self VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq], v55 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributes *)v5 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq], v56 = objc_claimAutoreleasedReturnValue(), v57 = VisionCoreEqualOrNilObjects(), v56, v55, (v57 & 1) != 0))
      {
        facemaskCategory = [(VNFaceAttributes *)self facemaskCategory];
        facemaskCategory2 = [(VNFaceAttributes *)v5 facemaskCategory];
        v60 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
    }
  }

  return v60;
}

- (unint64_t)hash
{
  v49.receiver = self;
  v49.super_class = VNFaceAttributes;
  v3 = [(VNFaceAttributes *)&v49 hash];
  requestRevision = [(VNFaceAttributes *)self requestRevision];
  ageCategory = [(VNFaceAttributes *)self ageCategory];
  v6 = [ageCategory hash];

  vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = [(VNFaceAttributes *)self VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];
  v8 = [vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE hash];

  eyesCategory = [(VNFaceAttributes *)self eyesCategory];
  v10 = [eyesCategory hash];

  smilingCategory = [(VNFaceAttributes *)self smilingCategory];
  v12 = [smilingCategory hash];

  faceHairCategory = [(VNFaceAttributes *)self faceHairCategory];
  v14 = [faceHairCategory hash];

  hairColorCategory = [(VNFaceAttributes *)self hairColorCategory];
  v16 = [hairColorCategory hash];

  baldCategory = [(VNFaceAttributes *)self baldCategory];
  v48 = [baldCategory hash];

  glassesCategory = [(VNFaceAttributes *)self glassesCategory];
  v47 = [glassesCategory hash];

  makeupEyesCategory = [(VNFaceAttributes *)self makeupEyesCategory];
  v46 = [makeupEyesCategory hash];

  makeupLipsCategory = [(VNFaceAttributes *)self makeupLipsCategory];
  v45 = [makeupLipsCategory hash];

  vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB = [(VNFaceAttributes *)self VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];
  v44 = [vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB hash];

  vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 = [(VNFaceAttributes *)self VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1];
  v43 = [vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 hash];

  vN7CbCeAogPS2iHE6VQwu6H96xanljtMqk = [(VNFaceAttributes *)self VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk];
  v42 = [vN7CbCeAogPS2iHE6VQwu6H96xanljtMqk hash];
  v39 = v16;
  v40 = v14;
  v41 = v12;

  vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP = [(VNFaceAttributes *)self VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
  v38 = [vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP hash];
  v25 = v10;
  v26 = v8;
  v27 = v6;

  vN2riiZbQrloRhCzYW56f0rk4N3ROe151S = [(VNFaceAttributes *)self VN2riiZbQrloRhCzYW56f0rk4N3ROe151S];
  v29 = [vN2riiZbQrloRhCzYW56f0rk4N3ROe151S hash];
  v30 = requestRevision;

  vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk = [(VNFaceAttributes *)self VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk];
  v32 = [vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk hash];

  vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq = [(VNFaceAttributes *)self VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
  v34 = [vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq hash];

  facemaskCategory = [(VNFaceAttributes *)self facemaskCategory];
  v36 = [facemaskCategory hash] ^ __ROR8__(v34 ^ __ROR8__(v32 ^ __ROR8__(v29 ^ __ROR8__(v38 ^ __ROR8__(v42 ^ __ROR8__(v43 ^ __ROR8__(v44 ^ __ROR8__(v45 ^ __ROR8__(v46 ^ __ROR8__(v47 ^ __ROR8__(v48 ^ __ROR8__(v39 ^ __ROR8__(v40 ^ __ROR8__(v41 ^ __ROR8__(v25 ^ __ROR8__(v26 ^ __ROR8__(v27 ^ __ROR8__(v30 ^ __ROR8__(v3, 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51);

  return v36;
}

- (id)vn_cloneObject
{
  v3 = [objc_alloc(objc_opt_class()) initWithRequestRevision:self->_requestRevision];
  v4 = v3;
  if (v3)
  {
    [v3 setAgeCategory:self->_ageCategory];
    [(VNFaceAttributes *)v4 setVN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE:?];
    [(VNFaceAttributes *)v4 setEyesCategory:?];
    [(VNFaceAttributes *)v4 setSmilingCategory:?];
    [(VNFaceAttributes *)v4 setFaceHairCategory:?];
    [(VNFaceAttributes *)v4 setHairColorCategory:?];
    [(VNFaceAttributes *)v4 setBaldCategory:?];
    [(VNFaceAttributes *)v4 setGlassesCategory:?];
    [(VNFaceAttributes *)v4 setMakeupEyesCategory:?];
    [(VNFaceAttributes *)v4 setMakeupLipsCategory:?];
    [(VNFaceAttributes *)v4 setVN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB:?];
    [(VNFaceAttributes *)v4 setVN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1:?];
    [(VNFaceAttributes *)v4 setVN7CbCeAogPS2iHE6VQwu6H96xanljtMqk:?];
    [(VNFaceAttributes *)v4 setVN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP:?];
    [(VNFaceAttributes *)v4 setVN2riiZbQrloRhCzYW56f0rk4N3ROe151S:?];
    [(VNFaceAttributes *)v4 setVNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk:?];
    [(VNFaceAttributes *)v4 setVN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq:?];
    [(VNFaceAttributes *)v4 setFacemaskCategory:?];
  }

  return v4;
}

- (void)setVN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE:(uint64_t)e
{
  v3 = a2;
  if (e)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(e + 24);
    *(e + 24) = v4;

    v3 = v6;
  }
}

- (void)setEyesCategory:(uint64_t)category
{
  v3 = a2;
  if (category)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(category + 32);
    *(category + 32) = v4;

    v3 = v6;
  }
}

- (void)setSmilingCategory:(uint64_t)category
{
  v3 = a2;
  if (category)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(category + 40);
    *(category + 40) = v4;

    v3 = v6;
  }
}

- (void)setFaceHairCategory:(uint64_t)category
{
  v3 = a2;
  if (category)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(category + 48);
    *(category + 48) = v4;

    v3 = v6;
  }
}

- (void)setHairColorCategory:(uint64_t)category
{
  v3 = a2;
  if (category)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(category + 56);
    *(category + 56) = v4;

    v3 = v6;
  }
}

- (void)setBaldCategory:(uint64_t)category
{
  v3 = a2;
  if (category)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(category + 64);
    *(category + 64) = v4;

    v3 = v6;
  }
}

- (void)setGlassesCategory:(uint64_t)category
{
  v3 = a2;
  if (category)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(category + 72);
    *(category + 72) = v4;

    v3 = v6;
  }
}

- (void)setMakeupEyesCategory:(uint64_t)category
{
  v3 = a2;
  if (category)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(category + 88);
    *(category + 88) = v4;

    v3 = v6;
  }
}

- (void)setMakeupLipsCategory:(uint64_t)category
{
  v3 = a2;
  if (category)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(category + 96);
    *(category + 96) = v4;

    v3 = v6;
  }
}

- (void)setVN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB:(uint64_t)b
{
  v3 = a2;
  if (b)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(b + 104);
    *(b + 104) = v4;

    v3 = v6;
  }
}

- (void)setVN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1:(uint64_t)i1
{
  v3 = a2;
  if (i1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(i1 + 112);
    *(i1 + 112) = v4;

    v3 = v6;
  }
}

- (void)setVN7CbCeAogPS2iHE6VQwu6H96xanljtMqk:(uint64_t)mqk
{
  v3 = a2;
  if (mqk)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(mqk + 120);
    *(mqk + 120) = v4;

    v3 = v6;
  }
}

- (void)setVN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP:(uint64_t)p
{
  v3 = a2;
  if (p)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(p + 128);
    *(p + 128) = v4;

    v3 = v6;
  }
}

- (void)setVN2riiZbQrloRhCzYW56f0rk4N3ROe151S:(uint64_t)s
{
  v3 = a2;
  if (s)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(s + 136);
    *(s + 136) = v4;

    v3 = v6;
  }
}

- (void)setVNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk:(uint64_t)wyk
{
  v3 = a2;
  if (wyk)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(wyk + 144);
    *(wyk + 144) = v4;

    v3 = v6;
  }
}

- (void)setVN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq:(uint64_t)kdq
{
  v3 = a2;
  if (kdq)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(kdq + 152);
    *(kdq + 152) = v4;

    v3 = v6;
  }
}

- (void)setFacemaskCategory:(uint64_t)category
{
  v3 = a2;
  if (category)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(category + 160);
    *(category + 160) = v4;

    v3 = v6;
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  [coderCopy encodeObject:v4 forKey:@"VNFaceAttributesVersion"];

  [coderCopy encodeInteger:self->_requestRevision forKey:@"farRev"];
  [coderCopy encodeObject:self->_ageCategory forKey:@"age_Cat"];
  [coderCopy encodeObject:self->_VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE forKey:@"gender_Cat"];
  [coderCopy encodeObject:self->_eyesCategory forKey:@"eyes_Cat"];
  [coderCopy encodeObject:self->_smilingCategory forKey:@"smiling_Cat"];
  [coderCopy encodeObject:self->_faceHairCategory forKey:@"facehair_Cat"];
  [coderCopy encodeObject:self->_hairColorCategory forKey:@"haircolor_Cat"];
  [coderCopy encodeObject:self->_baldCategory forKey:@"bald_Cat"];
  [coderCopy encodeObject:self->_glassesCategory forKey:@"glasses_Cat"];
  [coderCopy encodeObject:self->_makeupEyesCategory forKey:@"makeupEyes_Cat"];
  [coderCopy encodeObject:self->_makeupLipsCategory forKey:@"makeupLips_Cat"];
  [coderCopy encodeObject:self->_facemaskCategory forKey:@"facemask_Cat"];
  [coderCopy encodeObject:self->_VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB forKey:@"unknown01_Cat"];
  [coderCopy encodeObject:self->_VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 forKey:@"unknown02_Cat"];
  [coderCopy encodeObject:self->_VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk forKey:@"unknown03_Cat"];
  [coderCopy encodeObject:self->_VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP forKey:@"unknown04_Cat"];
  [coderCopy encodeObject:self->_VN2riiZbQrloRhCzYW56f0rk4N3ROe151S forKey:@"unknown05_Cat"];
  [coderCopy encodeObject:self->_VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk forKey:@"unknown06_Cat"];
  [coderCopy encodeObject:self->_VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq forKey:@"unknown07_Cat"];
}

- (VNFaceAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VNFaceAttributesVersion"];
  v6 = v5;
  if (v5 && ![v5 unsignedIntValue])
  {
    selfCopy = -[VNFaceAttributes initWithRequestRevision:](self, "initWithRequestRevision:", [coderCopy decodeIntegerForKey:@"farRev"]);
    if (selfCopy)
    {
      v9 = objc_opt_class();
      v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"age_Cat"];
      ageCategory = selfCopy->_ageCategory;
      selfCopy->_ageCategory = v10;

      v12 = [coderCopy decodeObjectOfClass:v9 forKey:@"gender_Cat"];
      VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = selfCopy->_VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE;
      selfCopy->_VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = v12;

      v14 = [coderCopy decodeObjectOfClass:v9 forKey:@"eyes_Cat"];
      eyesCategory = selfCopy->_eyesCategory;
      selfCopy->_eyesCategory = v14;

      v16 = [coderCopy decodeObjectOfClass:v9 forKey:@"smiling_Cat"];
      smilingCategory = selfCopy->_smilingCategory;
      selfCopy->_smilingCategory = v16;

      v18 = [coderCopy decodeObjectOfClass:v9 forKey:@"facehair_Cat"];
      faceHairCategory = selfCopy->_faceHairCategory;
      selfCopy->_faceHairCategory = v18;

      v20 = [coderCopy decodeObjectOfClass:v9 forKey:@"haircolor_Cat"];
      hairColorCategory = selfCopy->_hairColorCategory;
      selfCopy->_hairColorCategory = v20;

      v22 = [coderCopy decodeObjectOfClass:v9 forKey:@"bald_Cat"];
      baldCategory = selfCopy->_baldCategory;
      selfCopy->_baldCategory = v22;

      v24 = [coderCopy decodeObjectOfClass:v9 forKey:@"glasses_Cat"];
      glassesCategory = selfCopy->_glassesCategory;
      selfCopy->_glassesCategory = v24;

      v26 = [coderCopy decodeObjectOfClass:v9 forKey:@"facemask_Cat"];
      facemaskCategory = selfCopy->_facemaskCategory;
      selfCopy->_facemaskCategory = v26;

      if ([coderCopy containsValueForKey:@"makeup_Cat"])
      {
        v28 = [coderCopy decodeObjectOfClass:v9 forKey:@"makeup_Cat"];
        v29 = 80;
      }

      else
      {
        v30 = [coderCopy decodeObjectOfClass:v9 forKey:@"makeupEyes_Cat"];
        makeupEyesCategory = selfCopy->_makeupEyesCategory;
        selfCopy->_makeupEyesCategory = v30;

        v28 = [coderCopy decodeObjectOfClass:v9 forKey:@"makeupLips_Cat"];
        v29 = 96;
      }

      v32 = *(&selfCopy->super.isa + v29);
      *(&selfCopy->super.isa + v29) = v28;

      if ([coderCopy containsValueForKey:@"unknown01_Cat"])
      {
        v33 = [coderCopy decodeObjectOfClass:v9 forKey:@"unknown01_Cat"];
        VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB = selfCopy->_VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB;
        selfCopy->_VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB = v33;

        v35 = [coderCopy decodeObjectOfClass:v9 forKey:@"unknown02_Cat"];
        VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 = selfCopy->_VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1;
        selfCopy->_VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 = v35;

        v37 = [coderCopy decodeObjectOfClass:v9 forKey:@"unknown03_Cat"];
        VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk = selfCopy->_VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk;
        selfCopy->_VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk = v37;

        v39 = [coderCopy decodeObjectOfClass:v9 forKey:@"unknown04_Cat"];
        VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP = selfCopy->_VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP;
        selfCopy->_VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP = v39;

        v41 = [coderCopy decodeObjectOfClass:v9 forKey:@"unknown05_Cat"];
        VN2riiZbQrloRhCzYW56f0rk4N3ROe151S = selfCopy->_VN2riiZbQrloRhCzYW56f0rk4N3ROe151S;
        selfCopy->_VN2riiZbQrloRhCzYW56f0rk4N3ROe151S = v41;

        v43 = [coderCopy decodeObjectOfClass:v9 forKey:@"unknown06_Cat"];
        VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk = selfCopy->_VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk;
        selfCopy->_VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk = v43;

        v45 = [coderCopy decodeObjectOfClass:v9 forKey:@"unknown07_Cat"];
        VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq = selfCopy->_VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq;
        selfCopy->_VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq = v45;
      }

      self = selfCopy;
      selfCopy = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNFaceAttributes)initWithRequestRevision:(unint64_t)revision
{
  v8.receiver = self;
  v8.super_class = VNFaceAttributes;
  v4 = [(VNFaceAttributes *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_requestRevision = revision;
    v6 = v4;
  }

  return v5;
}

@end