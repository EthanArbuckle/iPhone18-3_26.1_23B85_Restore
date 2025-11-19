@interface VNFaceAttributes
- (BOOL)isEqual:(id)a3;
- (VNFaceAttributes)initWithCoder:(id)a3;
- (VNFaceAttributes)initWithRequestRevision:(unint64_t)a3;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAgeCategory:(id)a3;
- (void)setBaldCategory:(uint64_t)a1;
- (void)setEyesCategory:(uint64_t)a1;
- (void)setFaceHairCategory:(uint64_t)a1;
- (void)setFacemaskCategory:(uint64_t)a1;
- (void)setGlassesCategory:(uint64_t)a1;
- (void)setHairColorCategory:(uint64_t)a1;
- (void)setMakeupEyesCategory:(uint64_t)a1;
- (void)setMakeupLipsCategory:(uint64_t)a1;
- (void)setSmilingCategory:(uint64_t)a1;
- (void)setVN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB:(uint64_t)a1;
- (void)setVN2riiZbQrloRhCzYW56f0rk4N3ROe151S:(uint64_t)a1;
- (void)setVN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq:(uint64_t)a1;
- (void)setVN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1:(uint64_t)a1;
- (void)setVN5ui9WkMeVvCBruHiQE1q2r6E9kO1AyrP:(id)a3;
- (void)setVN7CbCeAogPS2iHE6VQwu6H96xanljtMqk:(uint64_t)a1;
- (void)setVN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE:(uint64_t)a1;
- (void)setVN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP:(uint64_t)a1;
- (void)setVNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk:(uint64_t)a1;
@end

@implementation VNFaceAttributes

- (void)setVN5ui9WkMeVvCBruHiQE1q2r6E9kO1AyrP:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = self->_VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE;
  self->_VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = v4;
}

- (void)setAgeCategory:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  ageCategory = self->_ageCategory;
  self->_ageCategory = v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v60 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNFaceAttributes *)self requestRevision];
      if (v6 == [(VNFaceAttributes *)v5 requestRevision]
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
        v58 = [(VNFaceAttributes *)self facemaskCategory];
        v59 = [(VNFaceAttributes *)v5 facemaskCategory];
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
  v4 = [(VNFaceAttributes *)self requestRevision];
  v5 = [(VNFaceAttributes *)self ageCategory];
  v6 = [v5 hash];

  v7 = [(VNFaceAttributes *)self VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];
  v8 = [v7 hash];

  v9 = [(VNFaceAttributes *)self eyesCategory];
  v10 = [v9 hash];

  v11 = [(VNFaceAttributes *)self smilingCategory];
  v12 = [v11 hash];

  v13 = [(VNFaceAttributes *)self faceHairCategory];
  v14 = [v13 hash];

  v15 = [(VNFaceAttributes *)self hairColorCategory];
  v16 = [v15 hash];

  v17 = [(VNFaceAttributes *)self baldCategory];
  v48 = [v17 hash];

  v18 = [(VNFaceAttributes *)self glassesCategory];
  v47 = [v18 hash];

  v19 = [(VNFaceAttributes *)self makeupEyesCategory];
  v46 = [v19 hash];

  v20 = [(VNFaceAttributes *)self makeupLipsCategory];
  v45 = [v20 hash];

  v21 = [(VNFaceAttributes *)self VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];
  v44 = [v21 hash];

  v22 = [(VNFaceAttributes *)self VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1];
  v43 = [v22 hash];

  v23 = [(VNFaceAttributes *)self VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk];
  v42 = [v23 hash];
  v39 = v16;
  v40 = v14;
  v41 = v12;

  v24 = [(VNFaceAttributes *)self VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
  v38 = [v24 hash];
  v25 = v10;
  v26 = v8;
  v27 = v6;

  v28 = [(VNFaceAttributes *)self VN2riiZbQrloRhCzYW56f0rk4N3ROe151S];
  v29 = [v28 hash];
  v30 = v4;

  v31 = [(VNFaceAttributes *)self VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk];
  v32 = [v31 hash];

  v33 = [(VNFaceAttributes *)self VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
  v34 = [v33 hash];

  v35 = [(VNFaceAttributes *)self facemaskCategory];
  v36 = [v35 hash] ^ __ROR8__(v34 ^ __ROR8__(v32 ^ __ROR8__(v29 ^ __ROR8__(v38 ^ __ROR8__(v42 ^ __ROR8__(v43 ^ __ROR8__(v44 ^ __ROR8__(v45 ^ __ROR8__(v46 ^ __ROR8__(v47 ^ __ROR8__(v48 ^ __ROR8__(v39 ^ __ROR8__(v40 ^ __ROR8__(v41 ^ __ROR8__(v25 ^ __ROR8__(v26 ^ __ROR8__(v27 ^ __ROR8__(v30 ^ __ROR8__(v3, 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51), 51);

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

- (void)setVN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;

    v3 = v6;
  }
}

- (void)setEyesCategory:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 32);
    *(a1 + 32) = v4;

    v3 = v6;
  }
}

- (void)setSmilingCategory:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;

    v3 = v6;
  }
}

- (void)setFaceHairCategory:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 48);
    *(a1 + 48) = v4;

    v3 = v6;
  }
}

- (void)setHairColorCategory:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 56);
    *(a1 + 56) = v4;

    v3 = v6;
  }
}

- (void)setBaldCategory:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 64);
    *(a1 + 64) = v4;

    v3 = v6;
  }
}

- (void)setGlassesCategory:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 72);
    *(a1 + 72) = v4;

    v3 = v6;
  }
}

- (void)setMakeupEyesCategory:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 88);
    *(a1 + 88) = v4;

    v3 = v6;
  }
}

- (void)setMakeupLipsCategory:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 96);
    *(a1 + 96) = v4;

    v3 = v6;
  }
}

- (void)setVN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 104);
    *(a1 + 104) = v4;

    v3 = v6;
  }
}

- (void)setVN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 112);
    *(a1 + 112) = v4;

    v3 = v6;
  }
}

- (void)setVN7CbCeAogPS2iHE6VQwu6H96xanljtMqk:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 120);
    *(a1 + 120) = v4;

    v3 = v6;
  }
}

- (void)setVN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 128);
    *(a1 + 128) = v4;

    v3 = v6;
  }
}

- (void)setVN2riiZbQrloRhCzYW56f0rk4N3ROe151S:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 136);
    *(a1 + 136) = v4;

    v3 = v6;
  }
}

- (void)setVNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 144);
    *(a1 + 144) = v4;

    v3 = v6;
  }
}

- (void)setVN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 152);
    *(a1 + 152) = v4;

    v3 = v6;
  }
}

- (void)setFacemaskCategory:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 160);
    *(a1 + 160) = v4;

    v3 = v6;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  [v5 encodeObject:v4 forKey:@"VNFaceAttributesVersion"];

  [v5 encodeInteger:self->_requestRevision forKey:@"farRev"];
  [v5 encodeObject:self->_ageCategory forKey:@"age_Cat"];
  [v5 encodeObject:self->_VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE forKey:@"gender_Cat"];
  [v5 encodeObject:self->_eyesCategory forKey:@"eyes_Cat"];
  [v5 encodeObject:self->_smilingCategory forKey:@"smiling_Cat"];
  [v5 encodeObject:self->_faceHairCategory forKey:@"facehair_Cat"];
  [v5 encodeObject:self->_hairColorCategory forKey:@"haircolor_Cat"];
  [v5 encodeObject:self->_baldCategory forKey:@"bald_Cat"];
  [v5 encodeObject:self->_glassesCategory forKey:@"glasses_Cat"];
  [v5 encodeObject:self->_makeupEyesCategory forKey:@"makeupEyes_Cat"];
  [v5 encodeObject:self->_makeupLipsCategory forKey:@"makeupLips_Cat"];
  [v5 encodeObject:self->_facemaskCategory forKey:@"facemask_Cat"];
  [v5 encodeObject:self->_VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB forKey:@"unknown01_Cat"];
  [v5 encodeObject:self->_VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 forKey:@"unknown02_Cat"];
  [v5 encodeObject:self->_VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk forKey:@"unknown03_Cat"];
  [v5 encodeObject:self->_VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP forKey:@"unknown04_Cat"];
  [v5 encodeObject:self->_VN2riiZbQrloRhCzYW56f0rk4N3ROe151S forKey:@"unknown05_Cat"];
  [v5 encodeObject:self->_VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk forKey:@"unknown06_Cat"];
  [v5 encodeObject:self->_VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq forKey:@"unknown07_Cat"];
}

- (VNFaceAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VNFaceAttributesVersion"];
  v6 = v5;
  if (v5 && ![v5 unsignedIntValue])
  {
    v7 = -[VNFaceAttributes initWithRequestRevision:](self, "initWithRequestRevision:", [v4 decodeIntegerForKey:@"farRev"]);
    if (v7)
    {
      v9 = objc_opt_class();
      v10 = [v4 decodeObjectOfClass:v9 forKey:@"age_Cat"];
      ageCategory = v7->_ageCategory;
      v7->_ageCategory = v10;

      v12 = [v4 decodeObjectOfClass:v9 forKey:@"gender_Cat"];
      VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = v7->_VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE;
      v7->_VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = v12;

      v14 = [v4 decodeObjectOfClass:v9 forKey:@"eyes_Cat"];
      eyesCategory = v7->_eyesCategory;
      v7->_eyesCategory = v14;

      v16 = [v4 decodeObjectOfClass:v9 forKey:@"smiling_Cat"];
      smilingCategory = v7->_smilingCategory;
      v7->_smilingCategory = v16;

      v18 = [v4 decodeObjectOfClass:v9 forKey:@"facehair_Cat"];
      faceHairCategory = v7->_faceHairCategory;
      v7->_faceHairCategory = v18;

      v20 = [v4 decodeObjectOfClass:v9 forKey:@"haircolor_Cat"];
      hairColorCategory = v7->_hairColorCategory;
      v7->_hairColorCategory = v20;

      v22 = [v4 decodeObjectOfClass:v9 forKey:@"bald_Cat"];
      baldCategory = v7->_baldCategory;
      v7->_baldCategory = v22;

      v24 = [v4 decodeObjectOfClass:v9 forKey:@"glasses_Cat"];
      glassesCategory = v7->_glassesCategory;
      v7->_glassesCategory = v24;

      v26 = [v4 decodeObjectOfClass:v9 forKey:@"facemask_Cat"];
      facemaskCategory = v7->_facemaskCategory;
      v7->_facemaskCategory = v26;

      if ([v4 containsValueForKey:@"makeup_Cat"])
      {
        v28 = [v4 decodeObjectOfClass:v9 forKey:@"makeup_Cat"];
        v29 = 80;
      }

      else
      {
        v30 = [v4 decodeObjectOfClass:v9 forKey:@"makeupEyes_Cat"];
        makeupEyesCategory = v7->_makeupEyesCategory;
        v7->_makeupEyesCategory = v30;

        v28 = [v4 decodeObjectOfClass:v9 forKey:@"makeupLips_Cat"];
        v29 = 96;
      }

      v32 = *(&v7->super.isa + v29);
      *(&v7->super.isa + v29) = v28;

      if ([v4 containsValueForKey:@"unknown01_Cat"])
      {
        v33 = [v4 decodeObjectOfClass:v9 forKey:@"unknown01_Cat"];
        VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB = v7->_VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB;
        v7->_VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB = v33;

        v35 = [v4 decodeObjectOfClass:v9 forKey:@"unknown02_Cat"];
        VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 = v7->_VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1;
        v7->_VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 = v35;

        v37 = [v4 decodeObjectOfClass:v9 forKey:@"unknown03_Cat"];
        VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk = v7->_VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk;
        v7->_VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk = v37;

        v39 = [v4 decodeObjectOfClass:v9 forKey:@"unknown04_Cat"];
        VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP = v7->_VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP;
        v7->_VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP = v39;

        v41 = [v4 decodeObjectOfClass:v9 forKey:@"unknown05_Cat"];
        VN2riiZbQrloRhCzYW56f0rk4N3ROe151S = v7->_VN2riiZbQrloRhCzYW56f0rk4N3ROe151S;
        v7->_VN2riiZbQrloRhCzYW56f0rk4N3ROe151S = v41;

        v43 = [v4 decodeObjectOfClass:v9 forKey:@"unknown06_Cat"];
        VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk = v7->_VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk;
        v7->_VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk = v43;

        v45 = [v4 decodeObjectOfClass:v9 forKey:@"unknown07_Cat"];
        VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq = v7->_VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq;
        v7->_VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq = v45;
      }

      self = v7;
      v7 = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (VNFaceAttributes)initWithRequestRevision:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = VNFaceAttributes;
  v4 = [(VNFaceAttributes *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_requestRevision = a3;
    v6 = v4;
  }

  return v5;
}

@end