@interface AGXG18PFamilyResidencySet
- (BOOL)_commitAddedAllocations:(const void *)allocations count:(unint64_t)count removedAllocations:(const void *)removedAllocations count:(unint64_t)a6;
- (id).cxx_construct;
@end

@implementation AGXG18PFamilyResidencySet

- (id).cxx_construct
{
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 62) = 1065353216;
  return self;
}

- (BOOL)_commitAddedAllocations:(const void *)allocations count:(unint64_t)count removedAllocations:(const void *)removedAllocations count:(unint64_t)a6
{
  v46 = *MEMORY[0x29EDCA608];
  p_subResourceRefCounts = &self->_subResourceRefCounts;
  v34 = v33;
  v35 = xmmword_29D2F25D0;
  if (count)
  {
    countCopy = count;
    v11 = MEMORY[0x29EDBB760];
    while (1)
    {
      v13 = *allocations;
      v14 = *(*allocations + *v11);
      if (v14 <= 3)
      {
        break;
      }

      if (v14 == 4)
      {
        v42[0] = &unk_2A23FA2F8;
        v42[1] = p_subResourceRefCounts;
        v42[2] = v33;
        v43 = v42;
        AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::enumResources(v13 + 14, v42);
        v15 = v43;
        if (v43 != v42)
        {
          goto LABEL_19;
        }

        v12 = *(*v43 + 32);
LABEL_3:
        v12();
        goto LABEL_4;
      }

      if (v14 != 5)
      {
        goto LABEL_12;
      }

LABEL_4:
      ++allocations;
      if (!--countCopy)
      {
        goto LABEL_23;
      }
    }

    if (v14 == 1)
    {
      goto LABEL_13;
    }

    if (v14 != 3)
    {
LABEL_12:
      v13 = *(v13 + *MEMORY[0x29EDC5618]);
LABEL_13:
      v16 = v13 + *MEMORY[0x29EDC5638];
      if (*(v16 + 2) >> 61 != 2 || *(v13[74] + 48) != 3)
      {
        v17 = *(v16 + 12);
        v18 = v35;
        if (v35 >= *(&v35 + 1))
        {
          tempVec<unsigned int,256ul>::grow(v33);
        }

        *&v35 = v35 + 1;
        *&v34[4 * v18] = v17;
        if (*(v16 + 2) >> 61 == 3)
        {
          v41[0] = &unk_2A23FA2F8;
          v41[1] = p_subResourceRefCounts;
          v41[2] = v33;
          v41[3] = v41;
        }
      }

      goto LABEL_4;
    }

    v44[0] = &unk_2A23FA2F8;
    v44[1] = p_subResourceRefCounts;
    v44[2] = v33;
    v45 = v44;
    AGX::RenderPipelineESL<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::enumResources(v13 + 30, v44);
    v15 = v45;
    if (v45 != v44)
    {
LABEL_19:
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }

      goto LABEL_4;
    }

    v12 = *(*v45 + 32);
    goto LABEL_3;
  }

LABEL_23:
  v31 = v30;
  v32 = xmmword_29D2F25D0;
  if (a6)
  {
    v19 = MEMORY[0x29EDBB760];
    v20 = MEMORY[0x29EDC5638];
    while (1)
    {
      v22 = *removedAllocations;
      v23 = *(*removedAllocations + *v19);
      if (v23 <= 3)
      {
        break;
      }

      if (v23 == 4)
      {
        v37[0] = &unk_2A23FA340;
        v37[1] = p_subResourceRefCounts;
        v37[2] = v30;
        v38 = v37;
        AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::enumResources(v22 + 14, v37);
        v24 = v38;
        if (v38 != v37)
        {
          goto LABEL_41;
        }

        v21 = *(*v38 + 32);
LABEL_25:
        v21();
        goto LABEL_26;
      }

      if (v23 != 5)
      {
        goto LABEL_34;
      }

LABEL_26:
      ++removedAllocations;
      if (!--a6)
      {
        goto LABEL_45;
      }
    }

    if (v23 == 1)
    {
      goto LABEL_35;
    }

    if (v23 != 3)
    {
LABEL_34:
      v22 = *(v22 + *MEMORY[0x29EDC5618]);
LABEL_35:
      v25 = v22 + *v20;
      if (*(v25 + 2) >> 61 != 2 || *(v22[74] + 48) != 3)
      {
        v26 = *(v25 + 12);
        v27 = v32;
        if (v32 >= *(&v32 + 1))
        {
          tempVec<unsigned long long,256ul>::grow(v30);
        }

        *&v32 = v32 + 1;
        *&v31[8 * v27] = v26;
        if (*(v25 + 2) >> 61 == 3)
        {
          v36[0] = &unk_2A23FA340;
          v36[1] = p_subResourceRefCounts;
          v36[2] = v30;
          v36[3] = v36;
        }
      }

      goto LABEL_26;
    }

    v39[0] = &unk_2A23FA340;
    v39[1] = p_subResourceRefCounts;
    v39[2] = v30;
    v40 = v39;
    AGX::RenderPipelineESL<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::enumResources(v22 + 30, v39);
    v24 = v40;
    if (v40 != v39)
    {
LABEL_41:
      if (v24)
      {
        (*(*v24 + 40))(v24);
      }

      goto LABEL_26;
    }

    v21 = *(*v40 + 32);
    goto LABEL_25;
  }

LABEL_45:
  updated = IOGPUResourceGroupUpdateResources();
  if (v31 != v30 && v31)
  {
    MEMORY[0x29ED520A0]();
  }

  if (v34 != v33 && v34)
  {
    MEMORY[0x29ED520A0]();
  }

  return updated == 0;
}

@end