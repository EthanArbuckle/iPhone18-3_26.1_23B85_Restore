void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideFVarChannels()
{
  __assert_rtn("subdivideFVarChannels", "refinement.cpp", 1067, "_child->_fvarChannels.size() == 0");
}

{
  __assert_rtn("subdivideFVarChannels", "refinement.cpp", 1068, "this->_fvarChannels.size() == 0");
}

uint64_t OpenSubdiv::v3_1_1::Far::Error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v14 = *MEMORY[0x277D85DE8];
  if (!v9)
  {
    OpenSubdiv::v3_1_1::Far::Error();
  }

  v11 = v9;
  vsnprintf(__str, 0x2800uLL, v10, &a9);
  if (OpenSubdiv::v3_1_1::Far::errorFunc)
  {
    return OpenSubdiv::v3_1_1::Far::errorFunc(v11, __str);
  }

  else
  {
    return printf("%s: %s\n", OpenSubdiv::v3_1_1::Far::Error(OpenSubdiv::v3_1_1::Far::ErrorType,char const*,...)::errorTypeLabel[v11], __str);
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::Warning(OpenSubdiv::v3_1_1::Far *this, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x28223BE20](this);
  v5 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x2800uLL, v2, va);
  if (OpenSubdiv::v3_1_1::Far::warningFunc)
  {
    return OpenSubdiv::v3_1_1::Far::warningFunc(__str);
  }

  else
  {
    return fprintf(*MEMORY[0x277D85E08], "Warning: %s\n", __str);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::FVarRefinement(void *this, const OpenSubdiv::v3_1_1::Vtr::internal::Refinement *a2, OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *a3, OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *a4)
{
  *this = a2;
  this[1] = *(a2 + 1);
  this[2] = a3;
  this[3] = *(a2 + 2);
  this[4] = a4;
  this[6] = 0;
  this[7] = 0;
  this[5] = 0;
  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::~FVarRefinement(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::applyRefinement(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  *(*(this + 4) + 8) = *(*(this + 2) + 8);
  v2 = *(this + 2);
  v3 = *(this + 4);
  *(v3 + 12) = *(v2 + 12);
  *(v3 + 13) = *(v2 + 13);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::estimateAndAllocateChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::trimAndFinalizeChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateEdgeTags(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueTags(this);
  v4 = *(this + 4);
  if ((*(v4 + 13) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueCreases(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::reclassifySemisharpValues(this);
    v4 = *(this + 4);
  }

  if (*(v4 + 16) <= *(*(this + 3) + 8))
  {

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::initializeFaceValuesFromFaceVertices(v4);
  }

  else
  {

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::initializeFaceValuesFromVertexFaceSiblings(v4);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::estimateAndAllocateChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = *this;
  v3 = *(*this + 52);
  v4 = *(*this + 56);
  if (v4 >= 1)
  {
    v5 = *(v2 + 80);
    v6 = v4 + v5;
    do
    {
      v7 = *(*(v2 + 312) + 4 * v5);
      if (*(*(*(this + 2) + 48) + v7))
      {
        v8 = *(*(*(this + 1) + 144) + 8 * v7);
      }

      else
      {
        v8 = 1;
      }

      v3 += v8;
      ++v5;
    }

    while (v5 < v6);
  }

  v9 = *(v2 + 60);
  if (v9 >= 1)
  {
    v10 = *(v2 + 84);
    v11 = v9 + v10;
    do
    {
      if (*(*(v2 + 384) + v10))
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::estimateAndAllocateChildValues();
      }

      v3 += *(*(*(this + 2) + 72) + 2 * *(*(v2 + 312) + 4 * v10++));
    }

    while (v10 < v11);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeComponents(*(this + 4));
  v12 = *(this + 4);
  v13 = *(v12 + 168);
  v14 = *(v12 + 176) - v13;
  if (v3 <= v14)
  {
    if (v3 < v14)
    {
      *(v12 + 176) = v13 + v3;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(v12 + 168, v3 - v14);
  }

  v15 = 0;
  std::vector<unsigned short>::resize(this + 5, v3, &v15);
}

OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  *(*(this + 4) + 16) = 0;
  if (*(*this + 37) == 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(this);

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(this);

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(this);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::trimAndFinalizeChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = *(this + 4);
  v3 = *(v2 + 168);
  v4 = *(v2 + 16);
  v5 = *(v2 + 176) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 176) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(v2 + 168, v4 - v5);
    v2 = *(this + 4);
  }

  if ((*(v2 + 13) & 1) == 0)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize((v2 + 192), *(v2 + 16));
    v2 = *(this + 4);
  }

  std::vector<unsigned short>::resize(this + 5, *(v2 + 16));
  std::vector<float>::resize((*(this + 4) + 144), *(*(this + 4) + 16));
  v6 = *(this + 4);
  if (*(v6 + 16) >= 1)
  {
    v7 = 0;
    v8 = *(v6 + 144);
    do
    {
      *(v8 + 4 * v7) = v7;
      ++v7;
    }

    while (v7 < *(v6 + 16));
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateEdgeTags(void *this)
{
  LODWORD(v1) = *(*this + 44);
  if (v1 >= 1)
  {
    v2 = 0;
    do
    {
      *(*(this[4] + 48) + v2++) = 0;
    }

    while (v2 < *(*this + 44));
    LODWORD(v1) = *(*this + 44);
  }

  if (v1 < *(this[3] + 4))
  {
    v1 = v1;
    do
    {
      *(*(this[4] + 48) + v1) = *(*(this[2] + 48) + *(*(*this + 288) + 4 * v1));
      ++v1;
    }

    while (v1 < *(this[3] + 4));
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueTags(int **this)
{
  v2 = *this;
  v3 = (*this)[13];
  if (v3 >= 1)
  {
    v4 = v2[19];
    v5 = v3 + v4;
    v6 = *(*(this[4] + 12) + 4 * v4);
    do
    {
      *(*(this[4] + 21) + v6) = 0;
      ++v4;
      ++v6;
    }

    while (v4 < v5);
    v2 = *this;
  }

  v7 = v2[14];
  if (v7 >= 1)
  {
    v8 = v2[20];
    v9 = v7 + v8;
    if (*(this[2] + 13))
    {
      v10 = 1;
    }

    else
    {
      v10 = 9;
    }

    do
    {
      v11 = this[4];
      v12 = *(*(v11 + 9) + 2 * v8);
      v13 = *(*(v11 + 12) + 4 * v8);
      v14 = *(v11 + 21);
      if ((*(*(this[2] + 6) + *(*(*this + 39) + 4 * v8)) & 9) != 0)
      {
        if (v12)
        {
          memset((v14 + v13), v10, v12);
        }
      }

      else if (v12)
      {
        bzero((v14 + v13), v12);
      }

      ++v8;
    }

    while (v8 < v9);
    v2 = *this;
  }

  v15 = v2[15];
  if (v15 >= 1)
  {
    v16 = v2[21];
    v17 = v15 + v16;
    do
    {
      if (*(*(*this + 48) + v16))
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueTags();
      }

      v18 = *(*(*this + 39) + 4 * v16);
      memcpy((*(this[4] + 21) + *(*(this[4] + 12) + 4 * v16++)), (*(this[2] + 21) + *(*(this[2] + 12) + 4 * v18)), *(*(this[2] + 9) + 2 * v18));
    }

    while (v16 < v17);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueCreases(void *this)
{
  v1 = this[4];
  if (*(v1 + 13) == 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueCreases();
  }

  v2 = *this;
  if (*(*this + 32) == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  v4 = *(v2 + 56);
  if (v4 >= 1)
  {
    v5 = *(v2 + 80);
    v6 = v4 + v5;
    v7 = *(v1 + 72);
    v8 = *(v1 + 96);
    v9 = *(v1 + 168);
    do
    {
      v10 = *(v8 + 4 * v5);
      v11 = (v9 + v10);
      if ((*(v9 + v10) & 1) != 0 && (*(*(v2 + 384) + v5) & 1) == 0)
      {
        v12 = *(v7 + 2 * v5);
        if (*(v7 + 2 * v5))
        {
          v13 = 0;
          v14 = (*(v1 + 192) + 4 * v10 + 2);
          do
          {
            v15 = *v11++;
            if ((v15 & 0x18) != 0)
            {
              *(v14 - 1) = v13;
              *v14 = v3 - 1 + v13;
            }

            v13 += v3;
            v14 += 2;
            --v12;
          }

          while (v12);
        }
      }

      ++v5;
    }

    while (v5 < v6);
  }

  v16 = *(v2 + 60);
  if (v16 >= 1)
  {
    v17 = *(v2 + 84);
    v18 = v16 + v17;
    do
    {
      v19 = this[4];
      v20 = *(v19[12] + 4 * v17);
      v21 = (v19[21] + v20);
      if ((*v21 & 1) != 0 && (*(*(*this + 384) + v17) & 1) == 0)
      {
        v22 = *(v19[9] + 2 * v17);
        if (*(v19[9] + 2 * v17))
        {
          v23 = (*(this[2] + 192) + 4 * *(*(this[2] + 96) + 4 * *(*(*this + 312) + 4 * v17)));
          v24 = (v19[24] + 4 * v20);
          do
          {
            v25 = *v21++;
            if ((v25 & 0x18) != 0)
            {
              *v24 = *v23;
            }

            ++v24;
            ++v23;
            --v22;
          }

          while (v22);
        }
      }

      ++v17;
    }

    while (v17 < v18);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::reclassifySemisharpValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = 0;
  v47 = *MEMORY[0x277D85DE8];
  v3 = *(*(this + 3) + 20);
  v44 = &v45;
  v4 = *(*(this + 2) + 14);
  __p = 0;
  if (v3 >= 0x11)
  {
    v2 = operator new(4 * v3);
    __p = v2;
    v44 = v2;
  }

  v5 = *(*this + 60);
  if (v5 >= 1)
  {
    v6 = *(*this + 84);
    v7 = v5 + v6;
    while (1)
    {
      v8 = *(this + 4);
      v9 = *(v8[12] + 4 * v6);
      v10 = (v8[21] + v9);
      if ((*v10 & 1) == 0)
      {
        goto LABEL_9;
      }

      v11 = *this;
      if (*(*(*this + 384) + v6))
      {
        goto LABEL_9;
      }

      v12 = *(*(v11 + 312) + 4 * v6);
      v13 = *(this + 1);
      if ((*(v13[54] + 2 * v12) & 0x60) == 0)
      {
        goto LABEL_9;
      }

      v14 = *(this + 3);
      v15 = *(v14[54] + 2 * v6);
      if ((v15 & 0x30) != 0)
      {
        goto LABEL_9;
      }

      v16 = *(v8[9] + 2 * v6);
      if ((v15 & 0x40) == 0)
      {
        if (*(v8[9] + 2 * v6))
        {
          do
          {
            if ((*v10 & 0x10) != 0)
            {
              *v10 = *v10 & 0xC7 | 8;
            }

            ++v10;
            --v16;
          }

          while (v16);
        }

        goto LABEL_9;
      }

      v17 = v8[24];
      v18 = v14[45];
      if (((v14[46] - v18) & 0x3FFFFFFFCLL) != 0)
      {
        v19 = *(v14[42] + 8 * v6);
        v20 = (v18 + 4 * *(v14[42] + 8 * v6 + 4));
      }

      else
      {
        v21 = v13[42];
        v19 = *(v21 + 8 * v12);
        v20 = v44;
        if (v19 >= 1)
        {
          v22 = 0;
          v23 = *(v21 + 8 * v12 + 4);
          v24 = v13[45] + 4 * v23;
          v25 = v13[48] + 2 * v23;
          v26 = *(v11 + 192);
          do
          {
            *(v44 + v22) = *(v26 + 8 * *(v24 + 4 * v22) + 4 * *(v25 + 2 * v22));
            ++v22;
          }

          while (v19 != v22);
        }
      }

      if (v16)
      {
        break;
      }

LABEL_9:
      if (++v6 >= v7)
      {
        v2 = __p;
        goto LABEL_53;
      }
    }

    v27 = 0;
    v28 = v17 + 4 * v9;
    while (1)
    {
      v29 = v10[v27];
      if ((v29 & 0x30) == 0x10)
      {
        v30 = (v28 + 4 * v27);
        v31 = *v30;
        v32 = v30[1];
        if (v32 <= v31)
        {
          if (v31 <= v32)
          {
            goto LABEL_43;
          }

          if (v31 + 1 < v19)
          {
            v37 = v20 + v31 + 1;
            v38 = v31 + 2;
            do
            {
              v39 = *v37++;
              v40 = *(*(*(this + 3) + 240) + v39);
              if ((v40 & 8) != 0)
              {
                break;
              }

              v36 = v38++ >= v19;
            }

            while (!v36);
            if ((v40 & 8) != 0)
            {
              goto LABEL_44;
            }
          }

          v41 = 0;
          do
          {
            v42 = *(*(*(this + 3) + 240) + *(v20 + v41));
            v35 = (v42 >> 3) & 1;
            if ((v42 & 8) != 0)
            {
              break;
            }

            v36 = v41++ >= v32;
          }

          while (!v36);
        }

        else
        {
          v33 = v31 + 1;
          do
          {
            v34 = *(*(*(this + 3) + 240) + *(v20 + v33));
            v35 = (v34 >> 3) & 1;
            if ((v34 & 8) != 0)
            {
              break;
            }

            v36 = v33++ >= v32;
          }

          while (!v36);
        }

        if ((v35 & 1) == 0)
        {
LABEL_43:
          v10[v27] = v29 & 0xC7 | 8;
        }
      }

LABEL_44:
      if (++v27 == v16)
      {
        if (v16 == 2 && (v4 & 1) != 0)
        {
          v43 = *v10;
          if ((*v10 & 0x20) != 0 && (v10[1] & 0x10) == 0)
          {
LABEL_52:
            *v10 = v43 & 0xDF;
          }

          else if ((*v10 & 0x10) == 0 && (v10[1] & 0x20) != 0)
          {
            v43 = *++v10;
            goto LABEL_52;
          }
        }

        goto LABEL_9;
      }
    }
  }

LABEL_53:
  operator delete(v2);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(void *this)
{
  v1 = *(*this + 52);
  if (v1 >= 1)
  {
    v2 = *(*this + 76);
    v3 = v1 + v2;
    v4 = this[4];
    v5 = *(v4 + 96);
    v6 = *(v4 + 72);
    v7 = *(v4 + 16);
    do
    {
      *(v5 + 4 * v2) = v7;
      *(v6 + 2 * v2) = 1;
      v7 = *(v4 + 16) + 1;
      *(v4 + 16) = v7;
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v1 = *(*this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = *(*this + 80);
    v4 = v1 + v3;
    v5 = *(this + 4);
    do
    {
      v6 = *(*(*v2 + 312) + 4 * v3);
      v7 = *(v5 + 16);
      *(*(v5 + 96) + 4 * v3) = v7;
      if (*(*(*(v2 + 2) + 48) + v6))
      {
        this = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesForEdgeVertex(v2, v3, v6);
        v5 = *(v2 + 4);
        *(*(v5 + 72) + 2 * v3) = this;
        v8 = *(v5 + 16) + this;
      }

      else
      {
        *(*(v5 + 72) + 2 * v3) = 1;
        v8 = v7 + 1;
      }

      *(v5 + 16) = v8;
      ++v3;
    }

    while (v3 < v4);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(void *this)
{
  v1 = *this;
  v2 = *(*this + 60);
  if (v2 >= 1)
  {
    v3 = *(v1 + 84);
    v4 = v2 + v3;
    v5 = *(v1 + 312);
    v6 = this[4];
    v7 = *(v6 + 96);
    v8 = this[2];
    v9 = v8[12];
    v10 = v8[21];
    v11 = *(v6 + 16);
    do
    {
      v12 = *(v5 + 4 * v3);
      *(v7 + 4 * v3) = v11;
      if (*(v10 + *(v9 + 4 * v12)))
      {
        if (*(*(v1 + 384) + v3))
        {
          OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices();
        }

        v13 = *(v8[9] + 2 * v12);
        if (v13 >= 2)
        {
          v14 = 0;
          v15 = vdupq_n_s64(v13 - 2);
          v16 = (this[5] + 2 * v11 + 8);
          do
          {
            v17 = vdupq_n_s64(v14);
            v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_21C27F640)));
            if (vuzp1_s8(vuzp1_s16(v18, 6), 6).u8[0])
            {
              *(v16 - 3) = v14 | 1;
            }

            if (vuzp1_s8(vuzp1_s16(v18, 6), 6).i8[1])
            {
              *(v16 - 2) = v14 | 2;
            }

            if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_21C27F630)))), 6).i8[2])
            {
              *(v16 - 1) = v14 | 3;
              *v16 = v14 | 4;
            }

            v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_21C2A1A10)));
            if (vuzp1_s8(6, vuzp1_s16(v19, 6)).i32[1])
            {
              v16[1] = v14 | 5;
            }

            if (vuzp1_s8(6, vuzp1_s16(v19, 6)).i8[5])
            {
              v16[2] = v14 | 6;
            }

            if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_21C2A1A00))))).i8[6])
            {
              v16[3] = v14 | 7;
              v16[4] = v14 + 8;
            }

            v14 += 8;
            v16 += 8;
          }

          while (((v13 + 6) & 0x1FFF8) != v14);
          v20 = (*(*v6 + 264) + 8 * v3);
          v21 = *v20;
          if (v21 >= 1)
          {
            v22 = (v8[15] + 2 * *(*(*v8 + 264) + 4 * ((2 * v12) | 1)));
            v23 = (*(v6 + 120) + 2 * v20[1]);
            do
            {
              v24 = *v22++;
              *v23++ = v24;
              --v21;
            }

            while (v21);
          }
        }
      }

      else
      {
        LODWORD(v13) = 1;
      }

      *(*(v6 + 72) + 2 * v3) = v13;
      v11 = *(v6 + 16) + v13;
      *(v6 + 16) = v11;
      ++v3;
    }

    while (v3 < v4);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesForEdgeVertex(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this, int a2, int a3)
{
  v4 = *(this + 1);
  v5 = *(v4 + 144);
  result = *(v5 + 8 * a3);
  if (result != 1)
  {
    v7 = *(v4 + 168);
    v8 = *(v5 + 8 * a3 + 4);
    v9 = *(this + 4);
    if (result >= 1)
    {
      v10 = 0;
      v11 = vdupq_n_s64(result - 1);
      v12 = (*(this + 5) + 2 * *(v9[12] + 4 * a2) + 8);
      v13 = xmmword_21C2A1A00;
      v14 = xmmword_21C2A1A10;
      v15 = xmmword_21C27F630;
      v16 = xmmword_21C27F640;
      v17 = vdupq_n_s64(8uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v11, v16));
        if (vuzp1_s8(vuzp1_s16(v18, *v11.i8), *v11.i8).u8[0])
        {
          *(v12 - 4) = v10;
        }

        if (vuzp1_s8(vuzp1_s16(v18, *&v11), *&v11).i8[1])
        {
          *(v12 - 3) = v10 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v15))), *&v11).i8[2])
        {
          *(v12 - 2) = v10 | 2;
          *(v12 - 1) = v10 | 3;
        }

        v19 = vmovn_s64(vcgeq_u64(v11, v14));
        if (vuzp1_s8(*&v11, vuzp1_s16(v19, *&v11)).i32[1])
        {
          *v12 = v10 | 4;
        }

        if (vuzp1_s8(*&v11, vuzp1_s16(v19, *&v11)).i8[5])
        {
          v12[1] = v10 | 5;
        }

        if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v13)))).i8[6])
        {
          v12[2] = v10 | 6;
          v12[3] = v10 | 7;
        }

        v10 += 8;
        v14 = vaddq_s64(v14, v17);
        v15 = vaddq_s64(v15, v17);
        v16 = vaddq_s64(v16, v17);
        v13 = vaddq_s64(v13, v17);
        v12 += 8;
      }

      while (((result + 7) & 0xFFFFFFF8) != v10);
    }

    v20 = *(this + 3);
    v21 = *(v20 + 264);
    v22 = *(v21 + 8 * a2);
    v23 = *(*v9 + 264);
    if (v22 != *(v23 + 8 * a2))
    {
      OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesForEdgeVertex();
    }

    if (v22 < result)
    {
      OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesForEdgeVertex();
    }

    if (v22 >= 1)
    {
      v24 = 0;
      v25 = v7 + 4 * v8;
      v26 = *(v20 + 288);
      v27 = (8 * a2) | 4;
      v28 = v26 + 4 * *(v21 + v27);
      v29 = v9[15] + 2 * *(v23 + v27);
      v30 = *(*this + 264);
      do
      {
        v31 = *(v30 + 4 * *(v28 + 4 * v24));
        if (result == 2)
        {
          if (v31 == *(v25 + 4))
          {
            *(v29 + 2 * v24) = 1;
          }
        }

        else if (result >= 1)
        {
          for (i = 0; i != result; ++i)
          {
            if (v31 == *(v25 + 4 * i))
            {
              *(v29 + 2 * v24) = i;
            }
          }
        }

        ++v24;
      }

      while (v24 != v22);
    }
  }

  return result;
}

float OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this, int a2, unsigned int a3, int a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = v64;
  v62 = v64;
  v63 = 0x1000000000;
  v65 = 0;
  v7 = *(this + 1);
  v8 = *(v7 + 360);
  v9 = a2;
  v10 = (2 * a2) | 1;
  v11 = *(v7 + 336);
  v12 = *(v11 + 4 * v10);
  v13 = (v8 + 4 * v12);
  v14 = *(v11 + 8 * a2);
  v15 = *(this + 3);
  v16 = v15[45];
  if (((v15[46] - v16) & 0x3FFFFFFFCLL) != 0)
  {
    v6 = (v16 + 4 * *(v15[42] + 8 * a4 + 4));
    goto LABEL_11;
  }

  if (!v14)
  {
    v18 = a2;
    operator delete(0);
    v9 = v18;
    v63 = 0x1000000000;
    v19 = v60;
    v58 = v60;
    v59 = 0x2000000000;
    v61 = 0;
    v62 = v64;
    goto LABEL_13;
  }

  if (v14 <= 0x10)
  {
    LODWORD(v63) = v14;
    v17 = *(*(this + 1) + 384) + 2 * *(*(*(this + 1) + 336) + 4 * v10);
  }

  else
  {
    v55 = a2;
    operator delete(0);
    v6 = operator new(4 * v14);
    v65 = v6;
    v62 = v6;
    LODWORD(v63) = v14;
    HIDWORD(v63) = v14;
    if (v14 < 1)
    {
      v9 = v55;
      goto LABEL_11;
    }

    v17 = *(*(this + 1) + 384) + 2 * *(*(*(this + 1) + 336) + 4 * v10);
    v9 = v55;
  }

  v20 = 0;
  v21 = *(*this + 192);
  do
  {
    v6[v20] = *(v21 + 8 * v13[v20] + 4 * *(v17 + 2 * v20));
    ++v20;
  }

  while (v14 != v20);
LABEL_11:
  v19 = v60;
  v58 = v60;
  LODWORD(v59) = 2 * v14;
  HIDWORD(v59) = 32;
  v61 = 0;
  if ((2 * v14) >= 0x21)
  {
    v22 = a3;
    v23 = v9;
    v24 = operator new(4 * (2 * v14));
    v9 = v23;
    a3 = v22;
    v19 = v24;
    v61 = v24;
    v58 = v24;
    HIDWORD(v59) = 2 * v14;
  }

LABEL_13:
  v25 = (*(*(this + 2) + 192) + 4 * *(*(*(this + 2) + 96) + 4 * v9) + 4 * a3);
  v26 = *v25;
  v27 = v25[1];
  v28 = (v27 - v26);
  if (v27 <= v26)
  {
    v29 = *(this + 1);
    if (v26 <= v27)
    {
      LODWORD(v28) = 0;
      v31 = *(this + 3);
    }

    else
    {
      v39 = *(v29 + 216);
      v31 = *(this + 3);
      v40 = *(v31 + 216);
      if (v26 + 1 >= v14)
      {
        v41 = 0;
      }

      else
      {
        v41 = (v14 + ~v26);
        v42 = (4 * v12 + 4 * v26 + v8 + 4);
        v43 = &v6[v26 + 1];
        v44 = v41;
        v45 = v19;
        do
        {
          v46 = *v42++;
          *v45 = *(v39 + 4 * v46);
          v47 = *v43++;
          v45[v14] = *(v40 + 4 * v47);
          ++v45;
          --v44;
        }

        while (v44);
      }

      v48 = v27 + 1;
      v49 = &v19[v41];
      LODWORD(v28) = v27 + v41 + 1;
      do
      {
        v50 = *v13++;
        *v49 = *(v39 + 4 * v50);
        v51 = *v6++;
        v49[v14] = *(v40 + 4 * v51);
        ++v49;
        --v48;
      }

      while (v48);
    }
  }

  else
  {
    v29 = *(this + 1);
    v30 = *(v29 + 216);
    v31 = *(this + 3);
    v32 = *(v31 + 216);
    v33 = &v6[v26 + 1];
    v34 = (4 * v12 + 4 * v26 + v8 + 4);
    v35 = v28;
    v36 = v19;
    do
    {
      v37 = *v34++;
      *v36 = *(v30 + 4 * v37);
      v38 = *v33++;
      v36[v14] = *(v32 + 4 * v38);
      ++v36;
      --v35;
    }

    while (v35);
  }

  v57 = *(*this + 24);
  v52 = OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(&v57, *(*(v29 + 408) + 4 * v9), *(*(v31 + 408) + 4 * a4), v28, v19, &v19[v14]);
  v53 = *&v52;
  operator delete(v61);
  operator delete(v65);
  return v53;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 - v3 >= a2)
  {
    *(a1 + 8) = v3 + a2;
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = v6 + a2;
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesForEdgeVertex()
{
  __assert_rtn("populateChildValuesForEdgeVertex", "fvarRefinement.cpp", 220, "cVertFaces.size() == cVertFaceSiblings.size()");
}

{
  __assert_rtn("populateChildValuesForEdgeVertex", "fvarRefinement.cpp", 221, "cVertFaces.size() >= cValueCount");
}

double OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::TriRefinement(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = OpenSubdiv::v3_1_1::Vtr::internal::Refinement::Refinement(a1, a2, a3, a4);
  *v4 = &unk_282DCB408;
  *(v4 + 504) = 0;
  *(v4 + 512) = 0u;
  *&result = 0x300000001;
  *(v4 + 28) = 0x300000001;
  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::~TriRefinement(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  *this = &unk_282DCB408;
  v2 = *(this + 63);
  if (v2)
  {
    *(this + 64) = v2;
    operator delete(v2);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(this);
}

{
  OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::~TriRefinement(this);

  JUMPOUT(0x21CF07610);
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::allocateParentChildIndices(std::vector<int> *this)
{
  end = this->__end_;
  v4 = *(end + 9);
  v3 = *(end + 10);
  v6 = *(end + 15);
  v5 = *(end + 16);
  v8 = *end;
  v7 = end[1];
  v9 = end[2];
  __x = 4;
  std::vector<int>::resize(this + 21, 2 * v8, &__x);
  v10 = this->__end_;
  begin = this[21].__begin_;
  if (*v10 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = begin + 1;
    do
    {
      *v14 = v12;
      v14 += 2;
      ++v13;
      v12 += 4;
    }

    while (v13 < *v10);
  }

  v15 = (this[21].__end_ - begin) >> 2;
  this[3].__end_cap_.__value_ = begin;
  LODWORD(this[4].__begin_) = v15;
  v16 = *(v10 + 3);
  v17 = (*(v10 + 4) - v16) >> 2;
  this[4].__end_ = v16;
  LODWORD(this[4].__end_cap_.__value_) = v17;
  v18 = 0;
  std::vector<int>::resize(this + 5, 4 * v8, &v18);
  std::vector<int>::resize(this + 6, ((v3 - v4) >> 2), &v18);
  std::vector<int>::resize(this + 8, ((v5 - v6) >> 2), &v18);
  std::vector<int>::resize(this + 7, 0, &v18);
  std::vector<int>::resize(this + 9, v7, &v18);
  std::vector<int>::resize(this + 10, v9, &v18);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<float>::resize(v2 + 2, 3 * SLODWORD(v2->__begin_));

  return OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVerticesFromParentFaces(this);
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 2);
  begin_low = SLODWORD(v2->__begin_);
  __x = 3;
  std::vector<int>::resize(v2 + 1, 2 * begin_low, &__x);
  v4 = *(this + 2);
  if (*v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = (*(v4 + 3) + 4);
    do
    {
      *v7 = v5;
      v7 += 2;
      ++v6;
      v5 += 3;
    }

    while (v6 < *v4);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVerticesFromParentFaces(void *this)
{
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 6);
    v4 = *(v1 + 9);
    v5 = this[15];
    v6 = (this[11] + 4);
    v7 = (*(v1 + 3) + 4);
    do
    {
      if (*(v7 - 1) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVerticesFromParentFaces();
      }

      if (*(v6 - 1) != 4)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVerticesFromParentFaces();
      }

      v8 = *v7;
      v9 = (v3 + 4 * v8);
      v10 = (v4 + 4 * v8);
      v11 = this[27];
      v12 = *(v11 + 4 * *v10);
      v13 = *(v11 + 4 * v10[1]);
      v14 = (v5 + 4 * *v6);
      v15 = *(v11 + 4 * v10[2]);
      if (*v14 != -1)
      {
        v16 = (*(this[2] + 48) + 4 * *(*(this[2] + 24) + 4 * ((2 * *v14) | 1)));
        *v16 = *(this[30] + 4 * *v9);
        v16[1] = v12;
        v16[2] = v15;
      }

      v17 = v14[1];
      if (v17 != -1)
      {
        v18 = (*(this[2] + 48) + 4 * *(*(this[2] + 24) + 4 * ((2 * v17) | 1)));
        *v18 = v12;
        v18[1] = *(this[30] + 4 * v9[1]);
        v18[2] = v13;
      }

      v19 = v14[2];
      if (v19 != -1)
      {
        v20 = (*(this[2] + 48) + 4 * *(*(this[2] + 24) + 4 * ((2 * v19) | 1)));
        *v20 = v15;
        v20[1] = v13;
        v20[2] = *(this[30] + 4 * v9[2]);
      }

      v21 = v14[3];
      if (v21 != -1)
      {
        v22 = (*(this[2] + 48) + 4 * *(*(this[2] + 24) + 4 * ((2 * v21) | 1)));
        *v22 = v13;
        v22[1] = v15;
        v22[2] = v12;
      }

      v7 += 2;
      ++v2;
      v6 += 2;
    }

    while (v2 < *v1);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<float>::resize(v2 + 3, 3 * SLODWORD(v2->__begin_));

  return OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgesFromParentFaces(this);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgesFromParentFaces(void *this)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 3);
    v4 = *(v1 + 6);
    v5 = *(v1 + 9);
    v6 = this[11];
    v7 = this[15];
    v8 = this[13];
    v9 = this[18];
    do
    {
      if (*(v6 + 8 * v2) != 4)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgesFromParentFaces();
      }

      if (*(v8 + 8 * v2) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgesFromParentFaces();
      }

      v10 = 0;
      v11 = (8 * v2) | 4;
      v12 = *(v3 + v11);
      v13 = (v4 + 4 * v12);
      v14 = (v5 + 4 * v12);
      v15 = (v7 + 4 * *(v6 + v11));
      v16 = (v9 + 4 * *(v8 + v11));
      v17 = this[24];
      v18 = *(v1 + 15);
      do
      {
        v20 = *v14++;
        v19 = v20;
        v21 = (v18 + 8 * v20);
        v22 = *v21 != v21[1] && *v13 != *v21;
        v23 = v17 + 8 * v19;
        v24 = *(v23 + 4 * v22);
        LODWORD(v23) = *(v23 + 4 * !v22);
        v25 = (&v34 + v10);
        *v25 = v24;
        v25[1] = v23;
        v10 += 8;
        ++v13;
      }

      while (v10 != 24);
      if (*v15 != -1)
      {
        v26 = (*(this[2] + 72) + 4 * *(*(this[2] + 24) + 4 * ((2 * *v15) | 1)));
        v27 = v37;
        *v26 = v34;
        v26[1] = *v16;
        v26[2] = v27;
      }

      v28 = v15[1];
      if (v28 != -1)
      {
        v29 = *(this[2] + 72) + 4 * *(*(this[2] + 24) + 4 * ((2 * v28) | 1));
        *v29 = v35;
        *(v29 + 8) = v16[1];
      }

      v30 = v15[2];
      if (v30 != -1)
      {
        v31 = *(this[2] + 72) + 4 * *(*(this[2] + 24) + 4 * ((2 * v30) | 1));
        *v31 = v16[2];
        *(v31 + 4) = v36;
      }

      v32 = v15[3];
      if (v32 != -1)
      {
        v33 = (*(this[2] + 72) + 4 * *(*(this[2] + 24) + 4 * ((2 * v32) | 1)));
        *v33 = v16[2];
        v33[1] = *v16;
        v33[2] = v16[1];
      }

      ++v2;
    }

    while (v2 < *v1);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  std::vector<float>::resize((*(this + 2) + 120), 2 * *(*(this + 2) + 4));
  OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentFaces(this);

  return OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentEdges(this);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentFaces(void *this)
{
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 9);
    v4 = this[18];
    v5 = (this[13] + 4);
    v6 = (*(v1 + 3) + 4);
    do
    {
      if (*(v6 - 1) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentFaces();
      }

      if (*(v5 - 1) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentFaces();
      }

      v7 = (v3 + 4 * *v6);
      v8 = this[27];
      v9 = *(v8 + 4 * *v7);
      v10 = *(v8 + 4 * v7[1]);
      v11 = (v4 + 4 * *v5);
      v12 = *(v8 + 4 * v7[2]);
      v13 = *v11;
      if (v13 != -1)
      {
        v14 = (*(this[2] + 120) + 8 * v13);
        *v14 = v9;
        v14[1] = v12;
      }

      v15 = v11[1];
      if (v15 != -1)
      {
        v16 = (*(this[2] + 120) + 8 * v15);
        *v16 = v10;
        v16[1] = v9;
      }

      v17 = v11[2];
      if (v17 != -1)
      {
        v18 = (*(this[2] + 120) + 8 * v17);
        *v18 = v12;
        v18[1] = v10;
      }

      v6 += 2;
      ++v2;
      v5 += 2;
    }

    while (v2 < *v1);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentEdges(void *this)
{
  v1 = this[1];
  if (*(v1 + 4) >= 1)
  {
    v2 = 0;
    v3 = (this[24] + 4);
    v4 = (*(v1 + 120) + 4);
    do
    {
      v5 = *(v3 - 1);
      if (v5 != -1)
      {
        v6 = (*(this[2] + 120) + 8 * v5);
        *v6 = *(this[27] + 4 * v2);
        v6[1] = *(this[30] + 4 * *(v4 - 1));
      }

      v7 = *v3;
      if (v7 != -1)
      {
        v8 = (*(this[2] + 120) + 8 * v7);
        *v8 = *(this[27] + 4 * v2);
        v8[1] = *(this[30] + 4 * *v4);
      }

      ++v2;
      v3 += 2;
      v4 += 2;
    }

    while (v2 < *(v1 + 4));
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = 2 * (((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2) + ((*(this + 19) - *(this + 18)) >> 2));
  std::vector<float>::resize((*(this + 2) + 144), 2 * *(*(this + 2) + 4));
  std::vector<float>::resize((*(this + 2) + 168), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 192), v2);
  *(*(this + 2) + 16) = *(*(this + 1) + 16);
  OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentFaces(this);
  OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentEdges(this);
  v3 = *(this + 2);
  v4 = (*(v3 + 144) + 4 * (2 * *(v3 + 4) - 2));
  v5 = *v4;
  v6 = v4[1];
  std::vector<float>::resize((v3 + 168), v6 + v5);
  v7 = (*(this + 2) + 192);

  std::vector<unsigned short>::resize(v7, v6 + v5);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentFaces(void *this)
{
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = this[11];
    v4 = this[15];
    v5 = this[13];
    v6 = this[18];
    do
    {
      if (*(v3 + 8 * v2) != 4)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentFaces();
      }

      if (*(v5 + 8 * v2) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentFaces();
      }

      v7 = 0;
      v8 = (8 * v2) | 4;
      v9 = v4 + 4 * *(v3 + v8);
      v10 = v6 + 4 * *(v5 + v8);
      v11 = *(v9 + 12);
      v12 = 1;
      do
      {
        v13 = *(v10 + v7);
        if (v13 != -1)
        {
          v14 = this[2];
          v15 = *(v14 + 144);
          v16 = (v15 + 8 * v13);
          *v16 = 2;
          if (v13)
          {
            v17 = *(v16 - 1) + *(v16 - 2);
          }

          else
          {
            v17 = 0;
          }

          v18 = v12 % 3;
          v19 = 2 * v13;
          v16[1] = v17;
          v20 = *(v14 + 16);
          if (v20 <= 2)
          {
            v20 = 2;
          }

          *(v14 + 16) = v20;
          v21 = *(v15 + 4 * (v19 | 1));
          v22 = (*(v14 + 168) + 4 * v21);
          v23 = (*(v14 + 192) + 2 * v21);
          v24 = *(v9 + v7);
          if (v24 == -1)
          {
            v25 = 0;
          }

          else
          {
            *v22 = v24;
            *v23 = v18;
            v25 = 1;
          }

          if (v11 != -1)
          {
            v22[v25] = v11;
            v23[v25] = v18;
            LODWORD(v25) = v25 + 1;
          }

          *v16 = v25;
        }

        ++v12;
        v7 += 4;
      }

      while (v7 != 12);
      ++v2;
    }

    while (v2 < *v1);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[24];
    do
    {
      v5 = (v4 + 8 * v3);
      if (*v5 != -1 || v5[1] != -1)
      {
        v6 = 0;
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 168) + 4 * v8;
        v10 = *(v1 + 192) + 2 * v8;
        v11 = (*(v1 + 120) + 8 * v3);
        v12 = 1;
        do
        {
          v13 = v12;
          v14 = v5[v6];
          if (v14 != -1)
          {
            v15 = this[2];
            v16 = *(v15 + 144);
            v17 = (v16 + 8 * v14);
            *v17 = v7;
            if (v14)
            {
              v18 = *(v17 - 1) + *(v17 - 2);
            }

            else
            {
              v18 = 0;
            }

            v17[1] = v18;
            v19 = *(v15 + 16);
            if (v19 <= v7)
            {
              v19 = v7;
            }

            *(v15 + 16) = v19;
            if (v7 < 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = 0;
              v21 = *(v16 + 4 * ((2 * v14) | 1));
              v22 = *(v15 + 168) + 4 * v21;
              v23 = *(v15 + 192) + 2 * v21;
              v24 = *(v1 + 24);
              v25 = this[11];
              v26 = this[15];
              v27 = v7;
              v28 = v9;
              v29 = v10;
              do
              {
                v31 = *v28++;
                v30 = v31;
                LODWORD(v31) = *v29++;
                v32 = v31;
                v33 = (2 * v30) | 1;
                v34 = v6;
                if (*v11 != v11[1])
                {
                  v34 = *(*(v1 + 48) + 4 * *(v24 + 4 * v33) + 4 * v32) != v11[v6];
                }

                v35 = v26 + 4 * *(v25 + 4 * v33);
                v36 = v34 + v32;
                if (v36 == *(v24 + 8 * v30))
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v36;
                }

                v38 = *(v35 + 4 * v37);
                if (v38 != -1)
                {
                  *(v22 + 4 * v20) = v38;
                  *(v23 + 2 * v20++) = v32;
                }

                --v27;
              }

              while (v27);
            }

            *v17 = v20;
          }

          v12 = 0;
          v6 = 1;
        }

        while ((v13 & 1) != 0);
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = ((*(*(this + 1) + 296) - *(*(this + 1) + 288)) >> 2) + 3 * ((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2);
  std::vector<float>::resize((*(this + 2) + 264), 2 * *(*(this + 2) + 8));
  std::vector<float>::resize((*(this + 2) + 288), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 312), v2);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(this);
  }

  v3 = *(this + 2);
  v4 = (*(v3 + 264) + 4 * (2 * *(v3 + 8) - 2));
  v5 = *v4;
  v6 = v4[1];
  std::vector<float>::resize((v3 + 288), v6 + v5);
  v7 = (*(this + 2) + 312);

  std::vector<unsigned short>::resize(v7, v6 + v5);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 288);
        v7 = (*(v1 + 264) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 312);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = *(v20 + 4 * *(v19 + 8 * v21 + 4) + 4 * v22);
            if (v24 != -1)
            {
              *(v17 + 4 * v14) = v24;
              *(v18 + 2 * v14++) = v23;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = (*(v1 + 144) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 192);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = 2 * v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            if (*(v19 + 8 * v22) != 4)
            {
              OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges();
            }

            v24 = *v16++;
            v23 = v24;
            v25 = v24 + 1 - 3 * ((1431655766 * (v24 + 1)) >> 32);
            v26 = v20 + 4 * *(v19 + 8 * v21 + 4);
            v27 = *(v26 + 4 * v25);
            if (v27 != -1)
            {
              *(v17 + 4 * v14) = v27;
              *(v18 + 2 * v14++) = v23;
            }

            v28 = *(v26 + 12);
            if (v28 != -1)
            {
              *(v17 + 4 * v14) = v28;
              *(v18 + 2 * v14++) = v23 + 2 - 3 * ((1431655766 * (v23 + 2)) >> 32);
            }

            v29 = *(v26 + 4 * v23);
            if (v29 != -1)
            {
              *(v17 + 4 * v14) = v29;
              *(v18 + 2 * v14++) = v25;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 1);
  v3 = ((*(v2 + 368) - *(v2 + 360)) >> 2) + 2 * (*(v2 + 4) + ((*(v2 + 176) - *(v2 + 168)) >> 2));
  std::vector<float>::resize((*(this + 2) + 336), 2 * *(*(this + 2) + 8));
  std::vector<float>::resize((*(this + 2) + 360), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 384), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 336) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<float>::resize((v4 + 360), v7 + v6);
  v8 = (*(this + 2) + 384);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 360);
        v7 = (*(v1 + 336) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 384);
        v11 = this[2];
        v12 = *(v11 + 336);
        v13 = (v12 + 8 * v5);
        *v13 = v8;
        if (v5)
        {
          v14 = *(v13 - 1) + *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v13[1] = v14;
        v15 = *(v11 + 20);
        if (v15 <= v8)
        {
          v15 = v8;
        }

        *(v11 + 20) = v15;
        if (v8 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v6 + 4 * v9);
          v18 = (v10 + 2 * v9);
          v19 = *(v12 + 4 * ((2 * v5) | 1));
          v20 = *(v11 + 360) + 4 * v19;
          v21 = *(v11 + 384) + 2 * v19;
          v22 = this[24];
          do
          {
            v23 = *v17++;
            v24 = v22 + 8 * v23;
            LODWORD(v23) = *v18++;
            v25 = *(v24 + 4 * v23);
            if (v25 != -1)
            {
              *(v20 + 4 * v16) = v25;
              *(v21 + 2 * v16++) = 1;
            }

            --v8;
          }

          while (v8);
        }

        *v13 = v16;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 192);
        v10 = *(v1 + 120);
        v11 = this[24];
        v12 = this[2];
        v13 = v7 + 2;
        v14 = *(v12 + 336);
        v15 = (v14 + 8 * v5);
        *v15 = v7 + 2;
        if (v5)
        {
          v16 = *(v15 - 1) + *(v15 - 2);
        }

        else
        {
          v16 = 0;
        }

        v15[1] = v16;
        if (*(v12 + 20) > v13)
        {
          v13 = *(v12 + 20);
        }

        *(v12 + 20) = v13;
        if (v7 < 1)
        {
          v18 = 0;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = v6 + 4 * v8;
          v21 = v9 + 2 * v8;
          v22 = (v10 + 8 * v3);
          v23 = v11 + 8 * v3;
          v24 = *(v14 + 4 * ((2 * v5) | 1));
          v25 = *(v12 + 360) + 4 * v24;
          v26 = *(v12 + 384) + 2 * v24;
          v27 = this[13];
          v28 = this[18];
          v29 = -1;
          do
          {
            v30 = *(v21 + 2 * v17);
            v31 = (2 * *(v20 + 4 * v17)) | 1;
            v32 = v28 + 4 * *(v27 + 4 * v31);
            if (v17)
            {
              v33 = *(v32 + 4 * (v30 + 1 - 3 * ((1431655766 * (v30 + 1)) >> 32)));
              v34 = *(v32 + 4 * v30);
            }

            else
            {
              if (*v22 != v22[1])
              {
                v19 = *(*(v1 + 48) + 4 * *(*(v1 + 24) + 4 * v31) + 4 * v30) != *v22;
              }

              v35 = *(v23 + 4 * !v19);
              v29 = *(v23 + 4 * v19);
              v33 = *(v32 + 4 * (v30 + 1 - 3 * ((1431655766 * (v30 + 1)) >> 32)));
              v34 = *(v32 + 4 * v30);
              if (v35 != -1)
              {
                *(v25 + 4 * v18) = v35;
                *(v26 + 2 * v18++) = 0;
              }
            }

            if (v33 != -1)
            {
              *(v25 + 4 * v18) = v33;
              *(v26 + 2 * v18++) = 1;
            }

            if (v34 != -1)
            {
              *(v25 + 4 * v18) = v34;
              *(v26 + 2 * v18++) = 0;
            }

            if (!v17 && v29 != -1)
            {
              *(v25 + 4 * v18) = v29;
              *(v26 + 2 * v18++) = 0;
            }

            ++v17;
          }

          while (v7 != v17);
        }

        *v15 = v18;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren(void *this)
{
  if (this[52] == this[51])
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren();
  }

  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    *&v4 = 0x200000002;
    *(&v4 + 1) = 0x200000002;
    do
    {
      v5 = (this[11] + v2);
      if (*v5 != 4)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren();
      }

      v6 = this[13];
      if (*(v6 + v2) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren();
      }

      v7 = this[15] + 4 * v5[1];
      v8 = this[18] + 4 * *(v6 + v2 + 4);
      v9 = this[51];
      if (*(v9 + v3))
      {
        *v7 = v4;
        *v8 = 2;
        *(v8 + 4) = 0x200000002;
        *(v9 + v3) &= 0xE1u;
      }

      else
      {
        v10 = *(*(v1 + 3) + v2 + 4);
        v11 = (*(v1 + 6) + 4 * v10);
        if (*(this[57] + v11[2]) & 1 | ((*(this[57] + v11[1]) & 1) + (*(this[57] + *v11) & 1)))
        {
          v12 = *(this[54] + *(*(v1 + 9) + 4 * v10 + 4)) & 0xE | (*(this[54] + *(*(v1 + 9) + 4 * v10)) >> 1) & 0xF | (2 * *(this[54] + *(*(v1 + 9) + 4 * v10 + 8))) & 0xC;
          *(v9 + v3) = *(v9 + v3) & 0xE0 | (2 * v12);
          if (v12)
          {
            *(v7 + 12) = 1;
            *v8 = 1;
            *(v8 + 4) = 0x100000001;
          }

          v13 = this[57];
          if (*(v13 + *v11))
          {
            *v7 = 1;
            *v8 = 1;
          }

          if (*(v13 + v11[1]))
          {
            *(v7 + 4) = 1;
            *(v8 + 4) = 1;
          }

          if (*(v13 + v11[2]))
          {
            *(v7 + 8) = 1;
            *(v8 + 8) = 1;
          }
        }
      }

      ++v3;
      v1 = this[1];
      v2 += 8;
    }

    while (v3 < *v1);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVerticesFromParentFaces()
{
  __assert_rtn("populateFaceVerticesFromParentFaces", "triRefinement.cpp", 148, "pFaceVerts.size() == 3");
}

{
  __assert_rtn("populateFaceVerticesFromParentFaces", "triRefinement.cpp", 149, "pFaceChildren.size() == 4");
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgesFromParentFaces()
{
  __assert_rtn("populateFaceEdgesFromParentFaces", "triRefinement.cpp", 225, "pFaceChildFaces.size() == 4");
}

{
  __assert_rtn("populateFaceEdgesFromParentFaces", "triRefinement.cpp", 226, "pFaceChildEdges.size() == 3");
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentFaces()
{
  __assert_rtn("populateEdgeVerticesFromParentFaces", "triRefinement.cpp", 295, "pFaceEdges.size() == 3");
}

{
  __assert_rtn("populateEdgeVerticesFromParentFaces", "triRefinement.cpp", 296, "pFaceChildEdges.size() == 3");
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentFaces()
{
  __assert_rtn("populateEdgeFacesFromParentFaces", "triRefinement.cpp", 393, "pFaceChildFaces.size() == 4");
}

{
  __assert_rtn("populateEdgeFacesFromParentFaces", "triRefinement.cpp", 394, "pFaceChildEdges.size() == 3");
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren()
{
  __assert_rtn("markSparseFaceChildren", "triRefinement.cpp", 865, "fChildFaces.size() == 4");
}

{
  __assert_rtn("markSparseFaceChildren", "triRefinement.cpp", 866, "fChildEdges.size() == 3");
}

{
  __assert_rtn("markSparseFaceChildren", "triRefinement.cpp", 842, "_parentFaceTag.size() > 0");
}

void OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetCommonShaderSource(std::string *a1@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v9, "#define OSD_METAL_IOS 1\n");
  std::string::basic_string[abi:nn200100]<0>(__p, aLine0OsdMtlpat);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = std::string::append(&v9, v3, v4);
  if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, v5->__r_.__value_.__l.__data_, v5->__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = *&v5->__r_.__value_.__l.__data_;
    a1->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&a1->__r_.__value_.__l.__data_ = v6;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_21C21A9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetPatchBasisShaderSource(OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v8, "#define OSD_PATCH_BASIS_METAL 1\n", 32);
  std::string::basic_string[abi:nn200100]<0>(__p, aCopyright2016P);
  if ((v6 & 0x80u) == 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v2 = v6;
  }

  else
  {
    v2 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v8, v1, v2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v7[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v8 = v3;
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x21CF075C0](&v12);
}

void sub_21C21ABD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x21CF075C0](a1 + 128);
  return a1;
}

_BYTE *OpenSubdiv::v3_1_1::Osd::GetPatchTypeDefine@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v3 = a1 - 2;
  if ((a1 - 2) >= 8 || ((0xF7u >> v3) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Osd::GetPatchTypeDefine();
  }

  v4 = off_278302298[v3];

  return std::string::basic_string[abi:nn200100]<0>(a2, v4);
}

_BYTE *OpenSubdiv::v3_1_1::Osd::GetPatchTypeSource@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v3 = a1 - 2;
  if ((a1 - 2) >= 8 || ((0xF7u >> v3) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Osd::GetPatchTypeSource();
  }

  v4 = *(&off_2783022D8 + v3);

  return std::string::basic_string[abi:nn200100]<0>(a2, v4);
}

uint64_t OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(int a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v11);
  OpenSubdiv::v3_1_1::Osd::GetPatchTypeDefine(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetCommonShaderSource(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &__p;
  }

  else
  {
    v4 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v5 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, v4, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  OpenSubdiv::v3_1_1::Osd::GetPatchTypeSource(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v11[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v8;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x21CF075C0](&v16);
}

OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory *OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::EndCapBSplineBasisPatchFactory(OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, OpenSubdiv::v3_1_1::Far::StencilTable *a3, OpenSubdiv::v3_1_1::Far::StencilTable *a4)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = a2;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v4 = *(a2 + 8);
  if (v4)
  {
    OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::EndCapBSplineBasisPatchFactory();
  }

  v7 = **(*(a2 + 11) + 24 * ((v4 >> 2) & 0xF));
  v8 = 7 * v7;
  v9 = 112 * v7;
  if (v9 >= 104857600)
  {
    v10 = 104857600;
  }

  else
  {
    v10 = v9;
  }

  std::vector<unsigned int>::reserve((a3 + 16), v8);
  std::vector<unsigned int>::reserve((a3 + 64), v10);
  std::vector<unsigned int>::reserve((a3 + 88), v10);
  v11 = *(this + 1);
  if (v11)
  {
    std::vector<unsigned int>::reserve((v11 + 16), v8);
    std::vector<unsigned int>::reserve((v11 + 64), v8);
    std::vector<unsigned int>::reserve((v11 + 88), v8);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::GetPatchPoints(uint64_t a1, void *a2, int a3, __int16 *a4, unsigned int a5, unsigned int a6)
{
  v8 = a2[3];
  v9 = (a2[6] + 4 * *(v8 + 8 * a3 + 4));
  v10 = *(v8 + 8 * a3);
  if ((a6 & 0x80000000) == 0)
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(a1);
  }

  v11 = 0;
  v12 = -1;
  do
  {
    v14 = *(a2[54] + 2 * v9->i32[v11]);
    if ((v14 & 0x780) != 0x80 || (v15 = *a4) != 0)
    {
      LOBYTE(v15) = 1;
    }

    if ((v14 & 2) != 0)
    {
      if (v12 < 0)
      {
        v12 = v11;
      }

      else
      {
        LOBYTE(v15) = 1;
      }
    }

    if (v11 > 2)
    {
      break;
    }

    ++v11;
    a4 += 3;
  }

  while ((v15 & 1) == 0);
  if ((v15 & 1) == 0)
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(a1, a2, a3, v12, v9, v10, a5, a6);
  }

  else
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(a1);
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v48 = v5;
  v6 = v1;
  v77[16] = *MEMORY[0x277D85DE8];
  v7 = *(v1 + 16);
  if (v2 < 0)
  {
    NumFVarValuesTotal = *(v7 + 5);
  }

  else
  {
    NumFVarValuesTotal = OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(v7, v2);
  }

  v9 = *(v6 + 24);
  v10 = 16;
  do
  {
    v53[0] = v9 + NumFVarValuesTotal;
    std::vector<int>::push_back[abi:nn200100]((v6 + 32), v53);
    v9 = *(v6 + 24) + 1;
    *(v6 + 24) = v9;
    --v10;
  }

  while (v10);
  v49 = v4;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(v53);
  v77[0] = v53;
  v77[1] = &v57;
  v77[2] = &v62;
  v77[3] = &v54;
  v77[4] = &v61;
  v77[5] = &v65;
  v77[6] = &v66;
  v77[7] = &v58;
  v77[8] = &v60;
  v77[9] = &v68;
  v77[10] = &v67;
  v77[11] = &v63;
  v77[12] = v56;
  v77[13] = v64;
  v77[14] = &v59;
  v77[15] = &v55;
  v11 = v53[4];
  v12 = &v73;
  v73 = &v75;
  v74 = 0x1000000010;
  v13 = 16;
  v76 = 0;
  do
  {
    *(v12 + 4) = 0;
    v12[3] = (v12 + 5);
    v12[45] = 0;
    v12[4] = 0x2800000028;
    v12 += 44;
    --v13;
  }

  while (v13);
  v14 = 0;
  v15 = &unk_21C2A4C08;
  do
  {
    v16 = 0;
    v50 = v14;
    v17 = 4 * v14;
    v18 = v77;
    do
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v73[44 * v16 + 44 * v17], v11);
      for (i = 0; i != 16; i += 4)
      {
        v20 = *&v15[i];
        if (v20 != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v73[44 * v16 + 44 * v17], v18[i], v20);
        }
      }

      ++v16;
      ++v18;
    }

    while (v16 != 4);
    v14 = v50 + 1;
    v15 += 16;
  }

  while (v50 != 3);
  v21 = 0;
  for (j = 0; j != 4; ++j)
  {
    v23 = 0;
    v24 = &unk_21C2A4C08;
    do
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v71, v11);
      v26 = 0;
      v27 = v21;
      do
      {
        v28 = *&v24[v26];
        if (v28 != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v71, (v73 + v27), v28);
        }

        v27 += 352;
        v26 += 4;
      }

      while (v26 != 16);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v71, *v6, v25);
      operator delete(v72);
      ++v23;
      v24 += 16;
    }

    while (v23 != 4);
    v21 += 1408;
  }

  if (*(v6 + 8))
  {
    for (k = 0; k != 16; ++k)
    {
      v71[0] = *(v48 + 4 * dword_21C2A4C48[k]) + v49;
      v30 = *(v6 + 8);
      v52 = 1;
      std::vector<int>::push_back[abi:nn200100]((v30 + 16), &v52);
      std::vector<int>::push_back[abi:nn200100]((*(v6 + 8) + 64), v71);
      v31 = *(v6 + 8);
      v52 = 1065353216;
      std::vector<float>::push_back[abi:nn200100]((v31 + 88), &v52);
    }
  }

  v32 = *(v6 + 28);
  *(v6 + 28) = v32 + 1;
  v33 = *(v6 + 32);
  if (v74)
  {
    v34 = 0;
    v35 = 43;
    do
    {
      v36 = &v73[v35];
      v37 = &v73[v35 - 42];
      operator delete(v73[v35]);
      *v37 = (v36 - 40);
      *(v36 - 81) = 40;
      ++v34;
      v35 += 44;
    }

    while (v34 < v74);
  }

  operator delete(v76);
  v38 = &v70;
  v39 = -1408;
  do
  {
    operator delete(v38[42]);
    *v38 = (v38 + 2);
    *(v38 + 3) = 40;
    v38 -= 44;
    v39 += 352;
  }

  while (v39);
  v40 = &v69;
  v41 = -1408;
  do
  {
    operator delete(v40[42]);
    *v40 = (v40 + 2);
    *(v40 + 3) = 40;
    v40 -= 44;
    v41 += 352;
  }

  while (v41);
  for (m = 0; m != -352; m -= 88)
  {
    v43 = &v53[m];
    operator delete(*&v64[m * 4 + 344]);
    *(v43 + 485) = v43 + 974;
    v43[973] = 40;
  }

  v44 = 352;
  do
  {
    v45 = &v53[v44];
    operator delete(*&v56[v44 * 4 + 344]);
    *(v45 + 133) = v45 + 270;
    v45[269] = 40;
    v44 -= 88;
  }

  while (v44 * 4);
  v46 = 352;
  do
  {
    operator delete(*&v51[v46 * 4]);
    *&v53[v46 - 86] = &v53[v46 - 82];
    v53[v46 - 83] = 40;
    v46 -= 88;
  }

  while (v46 * 4);
  return v33 + (v32 << 6);
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(uint64_t a1, uint64_t a2, int a3, int a4, int32x4_t *a5, int a6, unsigned int a7, unsigned int a8)
{
  v124 = *MEMORY[0x277D85DE8];
  v16 = 2 * *(a2 + 20);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v121, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v118, v16 + 16);
  v17 = OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v115, v16 + 16);
  v97 = a4;
  v94 = a8;
  OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::computeLimitStencils(v17, a2, a5, a6, a4, a8, &v121, &v118, &v115);
  v18 = v121;
  if (v121 >= 1)
  {
    v19 = v122;
    do
    {
      *v19 += a7;
      v19 += 2;
      --v18;
    }

    while (v18);
  }

  v20 = v118;
  if (v118 >= 1)
  {
    v21 = v119;
    do
    {
      *v21 += a7;
      v21 += 2;
      --v20;
    }

    while (v20);
  }

  v96 = a1;
  v22 = v115;
  if (v115 >= 1)
  {
    v23 = v116;
    do
    {
      *v23 += a7;
      v23 += 2;
      --v22;
    }

    while (v22);
  }

  v24 = 0;
  v95 = a5;
  v114[0] = vaddq_s32(*a5, vdupq_n_s32(a7));
  v25 = *(a2 + 24);
  v26 = *(a2 + 48);
  v27 = v26 + 4 * *(v25 + 4 * ((2 * a3) | 1));
  v28 = 4;
  do
  {
    v29 = *(v27 + 4 * v24);
    v30 = 2 * v29;
    v31 = *(a2 + 264);
    v32 = v31 + 8 * v29;
    v33 = *(a2 + 288) + 4 * *(v32 + 4);
    v34 = *(v31 + 4 * v30);
    v111 = v33;
    v112 = v34;
    v35 = *(a2 + 312) + 2 * *(v32 + 4);
    v36 = v114 + v28;
    if (v24 == v97)
    {
      if (v34 < 1)
      {
LABEL_16:
        LODWORD(v37) = -1;
      }

      else
      {
        v37 = 0;
        while (*(v33 + 4 * v37) != a3)
        {
          if (v34 == ++v37)
          {
            goto LABEL_16;
          }
        }
      }

      *(v114 + v28) = *(v26 + 4 * *(v25 + 8 * *(v33 + 4 * ((v37 + 1) % v34)) + 4) + 4 * ((*(v35 + 2 * ((v37 + 1) % v34)) - 1) & 3)) + a7;
      v38 = (v26 + 4 * *(v25 + 8 * *(v33 + 4 * ((v34 + v37 - 1) % v34)) + 4) + 4 * ((*(v35 + 2 * ((v34 + v37 - 1) % v34)) + 1) & 3));
    }

    else
    {
      v39 = OpenSubdiv::v3_1_1::Vtr::ConstArray<int>::FindIndexIn4Tuple(&v111, a3) & 3 ^ 2;
      v40 = *(v111 + 4 * v39);
      v41 = *(v35 + 2 * v39);
      v25 = *(a2 + 24);
      v42 = *(v25 + 8 * v40 + 4);
      v26 = *(a2 + 48);
      v43 = v26 + 4 * v42;
      *v36 = *(v43 + 4 * ((v41 + 1) & 3)) + a7;
      v36[1] = *(v43 + 4 * (v41 & 3 ^ 2)) + a7;
      v38 = (v43 + 4 * ((v41 - 1) & 3));
    }

    v36[2] = *v38 + a7;
    v28 += 3;
    ++v24;
  }

  while (v24 != 4);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v111, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v109, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v107, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v105, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v103, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v101, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v99, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v109, &v118, 12.0);
  v44 = (&OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,int,OpenSubdiv::v3_1_1::Vtr::ConstArray<int>,int,int)::rotation + 64 * v97);
  v45 = *(v114 + *v44);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v109, v45, -5.3333);
  v46 = *(v114 + v44[1]);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v109, v46, -2.6667);
  v47 = *(v114 + v44[2]);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v109, v47, -0.66667);
  v48 = *(v114 + v44[3]);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v109, v48, -1.3333);
  v49 = *(v114 + v44[6]);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v109, v49, -0.33333);
  v50 = *(v114 + v44[7]);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v109, v50, -0.66667);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v107, &v118, -6.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v107, v45, 2.6667);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v107, v46, 1.3333);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v107, v47, 0.33333);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v107, v48, 0.66667);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v107, v49, 0.66667);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v107, v50, 1.3333);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v105, v109);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v105, *(v114 + v44[8]), 1.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v105, v49, -1.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v103, &v115, 12.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v103, v45, -5.3333);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v103, v46, -1.3333);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v103, v47, -0.66667);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v103, v48, -2.6667);
  v51 = *(v114 + v44[4]);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v103, v51, -0.33333);
  v52 = *(v114 + v44[15]);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v103, v52, -0.66667);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v101, &v115, -6.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v101, v45, 2.6667);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v101, v46, 0.66667);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v101, v47, 0.33333);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v101, v48, 1.3333);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v101, v51, 0.66667);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v101, v52, 1.3333);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v99, v103);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v99, *(v114 + v44[14]), 1.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v99, v51, -1.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v111, &v121, 36.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v111, v45, -16.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v111, v46, -4.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v111, v48, -4.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v111, v103, -4.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v111, v109, -4.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v111, v47, -1.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v111, v107, -1.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v111, v101, -1.0);
  v54 = *(v96 + 16);
  if (v94 < 0)
  {
    NumFVarValuesTotal = *(v54 + 5);
  }

  else
  {
    NumFVarValuesTotal = OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(v54, v94);
  }

  v56 = v95->i32[v97];
  v57 = v97 + 1;
  v58 = v97;
  v59 = (v97 + 1) & 3;
  v60 = v95->i32[v59];
  v61 = v97 + 3;
  v98 = v95->i32[(v97 + 3) & 3];
  v62 = *(v96 + 24);
  *(v96 + 24) = v62 + 1;
  v63 = 3 * v58;
  *(&v114[1] + 3 * v58 + 2) = v62 + NumFVarValuesTotal;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v109, *v96, v53);
  v65 = *(v96 + 8);
  if (v65)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v56 + a7), v65, v64);
  }

  v66 = *(v96 + 24);
  *(v96 + 24) = v66 + 1;
  v67 = v66 + NumFVarValuesTotal;
  if (v57 <= 0)
  {
    v68 = -(-v57 & 3);
  }

  else
  {
    v68 = v59;
  }

  v69 = 3 * v68;
  *(&v114[1] + 3 * v68) = v67;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v107, *v96, v64);
  v71 = *(v96 + 8);
  if (v71)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v60 + a7), v71, v70);
  }

  v72 = *(v96 + 24);
  *(v96 + 24) = v72 + 1;
  *(&v114[1] + v69 + 1) = v72 + NumFVarValuesTotal;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v105, *v96, v70);
  v74 = *(v96 + 8);
  if (v74)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v60 + a7), v74, v73);
  }

  v75 = *(v96 + 24);
  *(v96 + 24) = v75 + 1;
  *(&v114[1] + v63) = v75 + NumFVarValuesTotal;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v103, *v96, v73);
  v77 = *(v96 + 8);
  if (v77)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v56 + a7), v77, v76);
  }

  v78 = *(v96 + 24);
  *(v96 + 24) = v78 + 1;
  v79 = v78 + NumFVarValuesTotal;
  if (v61 <= 0)
  {
    v80 = -(-v61 & 3);
  }

  else
  {
    v80 = v61 & 3;
  }

  v81 = 3 * v80;
  *(&v114[1] + 3 * v80 + 2) = v79;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v101, *v96, v76);
  v83 = *(v96 + 8);
  if (v83)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v98 + a7), v83, v82);
  }

  v84 = *(v96 + 24);
  *(v96 + 24) = v84 + 1;
  *(&v114[1] + v81 + 1) = v84 + NumFVarValuesTotal;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v99, *v96, v82);
  v86 = *(v96 + 8);
  if (v86)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v98 + a7), v86, v85);
  }

  v87 = *(v96 + 24);
  *(v96 + 24) = v87 + 1;
  *(&v114[1] + v63 + 1) = v87 + NumFVarValuesTotal;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v111, *v96, v85);
  v89 = *(v96 + 8);
  if (v89)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v56 + a7), v89, v88);
  }

  for (i = 0; i != 16; ++i)
  {
    std::vector<int>::push_back[abi:nn200100]((v96 + 32), v114 + OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,int,OpenSubdiv::v3_1_1::Vtr::ConstArray<int>,int,int)::permuteRegular[i]);
  }

  v91 = *(v96 + 28);
  *(v96 + 28) = v91 + 1;
  v92 = *(v96 + 32);
  operator delete(__p);
  operator delete(v102);
  operator delete(v104);
  operator delete(v106);
  operator delete(v108);
  operator delete(v110);
  operator delete(v113);
  operator delete(v117);
  operator delete(v120);
  operator delete(v123);
  return v92 + (v91 << 6);
}

OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *this, unsigned int a2)
{
  *this = 0;
  v4 = this + 24;
  *(this + 1) = this + 24;
  *(this + 2) = 0x2800000000;
  *(this + 43) = 0;
  if (!a2)
  {
    operator delete(0);
    v5 = 40;
    goto LABEL_5;
  }

  if (a2 >= 0x29)
  {
    operator delete(0);
    *(this + 1) = v4;
    *(this + 5) = 40;
    v4 = operator new(8 * a2);
    *(this + 43) = v4;
    v5 = a2;
LABEL_5:
    *(this + 1) = v4;
    *(this + 5) = v5;
  }

  *(this + 4) = a2;
  return this;
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(OpenSubdiv::v3_1_1::Far::GregoryBasis *this, const void **a2, OpenSubdiv::v3_1_1::Far::StencilTable *a3)
{
  v9 = *this;
  std::vector<int>::push_back[abi:nn200100](a2 + 2, &v9);
  if (v9 >= 1)
  {
    v5 = 0;
    for (i = 0; i < v9; ++i)
    {
      v8 = *(*(this + 1) + v5);
      std::vector<int>::push_back[abi:nn200100](a2 + 8, &v8);
      v7 = *(*(this + 1) + v5 + 4);
      std::vector<float>::push_back[abi:nn200100](a2 + 11, &v7);
      v5 += 8;
    }
  }
}

{
  v5 = 1;
  v6 = this;
  std::vector<int>::push_back[abi:nn200100](a2 + 2, &v5);
  std::vector<int>::push_back[abi:nn200100](a2 + 8, &v6);
  v4 = 1065353216;
  std::vector<float>::push_back[abi:nn200100](a2 + 11, &v4);
}

void OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::computeLimitStencils(int a1, OpenSubdiv::v3_1_1::Vtr::internal::Level *this, uint64_t a3, int a4, int a5, unsigned int a6, OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *a7, int *a8, int *a9)
{
  v68 = *MEMORY[0x277D85DE8];
  v15 = *(this + 5);
  v16 = v66;
  v64 = v66;
  v65 = 0x2800000000;
  v67 = 0;
  v17 = 2 * v15;
  if (v15)
  {
    if (v17 < 0x29)
    {
      goto LABEL_6;
    }

    operator delete(0);
    v64 = v66;
    HIDWORD(v65) = 40;
    v16 = operator new(4 * v17);
    v67 = v16;
    v18 = v17;
  }

  else
  {
    operator delete(0);
    v18 = 40;
  }

  v64 = v16;
  HIDWORD(v65) = v18;
LABEL_6:
  LODWORD(v65) = v17;
  v19 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(this, *(a3 + 4 * a5), v16, a6);
  if (v19)
  {
    OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::computeLimitStencils();
  }

  v20 = v19;
  v47 = a8;
  v21 = (v19 >> 1);
  if (v21 < 1)
  {
    goto LABEL_29;
  }

  v22 = 0;
  v23 = a5 + 3 <= 0 ? -(-(a5 + 3) & 3) : (a5 + 3) & 3;
  v24 = a5 + 1 <= 0 ? -(-(a5 + 1) & 3) : (a5 + 1) & 3;
  v25 = v64;
  v26 = *(a3 + 4 * v24);
  v27 = *(a3 + 4 * v23);
  v28 = -1;
  v29 = -1;
  do
  {
    v31 = *v25;
    v25 += 2;
    v30 = v31;
    if (v31 == v26)
    {
      v28 = v22;
    }

    if (v30 == v27)
    {
      v29 = v22;
    }

    ++v22;
  }

  while (v21 != v22);
  if (v28 < 0 || v29 < 0)
  {
LABEL_29:
    OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::computeLimitStencils();
  }

  LODWORD(v61[0]) = 0;
  v61[1] = &v62;
  v63 = 0;
  v61[2] = 0x2800000028;
  LODWORD(v58[0]) = 0;
  v58[1] = &v59;
  v60 = 0;
  v58[2] = 0x2800000028;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v61, v19 | 1);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v58, v20 | 1);
  v32 = v21;
  v33 = cosf(6.2832 / v21);
  v52 = a3;
  v34 = 0;
  v35 = 0;
  v36 = 1.0 / ((((v33 + 5.0) + sqrtf((v33 + 9.0) * (v33 + 1.0))) * v21) * 0.0625);
  v51 = 1.0 / (v21 + 5.0);
  v50 = 8 * v21;
  v48 = a5;
  v49 = 8 * v21 - 8;
  do
  {
    if (v49 == v35)
    {
      v37 = 0;
    }

    else
    {
      v37 = v34 + 1;
    }

    v38 = v64[v35 / 4];
    v39 = v64[v35 / 4 + 1];
    v40 = a7;
    v41 = v64[2 * v37];
    v53 = 0;
    v54 = &v56;
    __p = 0;
    v55 = 0x2800000004;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v53, *(v52 + 4 * v48), v32 / (v32 + 5.0));
    v42 = v41;
    a7 = v40;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v53, v42, 2.0 / (v32 + 5.0));
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v53, v38, 2.0 / (v32 + 5.0));
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v53, v39, v51);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v40, &v53, 1.0 / v32);
    v43 = __sincosf_stret((v34 * 6.2832) / v32);
    v44 = __sincosf_stret((v37 * 6.2832) / v32);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v61, &v53, v36 * ((v44.__cosval * 0.5) + (v43.__cosval * 0.5)));
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v58, &v53, v36 * ((v44.__sinval * 0.5) + (v43.__sinval * 0.5)));
    operator delete(__p);
    v35 += 8;
    ++v34;
  }

  while (v50 != v35);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v47, v40);
  v45 = __sincosf_stret((v28 * 6.2832) / v32);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v47, v61, v45.__cosval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v47, v58, v45.__sinval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(a9, v40);
  v46 = __sincosf_stret((v29 * 6.2832) / v32);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(a9, v61, v46.__cosval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(a9, v58, v46.__sinval);
  operator delete(v60);
  operator delete(v63);
  operator delete(v67);
}

void OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::computeLimitStencils()
{
  __assert_rtn("computeLimitStencils", "endCapBSplineBasisPatchFactory.cpp", 234, "(ringSize & 1) == 0");
}

{
  __assert_rtn("computeLimitStencils", "endCapBSplineBasisPatchFactory.cpp", 248, "start > -1 && prev > -1");
}

OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory *OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::EndCapGregoryBasisPatchFactory(OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, OpenSubdiv::v3_1_1::Far::StencilTable *a3, OpenSubdiv::v3_1_1::Far::StencilTable *a4, char a5)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = a2;
  *(this + 24) = a5;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  v5 = *(a2 + 8);
  if (v5)
  {
    OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::EndCapGregoryBasisPatchFactory();
  }

  v8 = **(*(a2 + 11) + 24 * ((v5 >> 2) & 0xF));
  v9 = 20 * v8;
  v10 = 320 * v8;
  if (v10 >= 104857600)
  {
    v11 = 104857600;
  }

  else
  {
    v11 = v10;
  }

  std::vector<unsigned int>::reserve((a3 + 16), v9);
  std::vector<unsigned int>::reserve((a3 + 64), v11);
  std::vector<unsigned int>::reserve((a3 + 88), v11);
  v12 = *(this + 1);
  if (v12)
  {
    std::vector<unsigned int>::reserve((v12 + 16), v9);
    std::vector<unsigned int>::reserve((v12 + 64), v9);
    std::vector<unsigned int>::reserve((v12 + 88), v9);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::addPatchBasis(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(v26);
  v6 = 0;
  v7 = (v3 + 2);
  v8 = 7040;
  v9 = 5632;
  v10 = 4224;
  do
  {
    if (*(v7 - 2) == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v26[v6], *v4, v5);
      v11 = v4[1];
      if (v11)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v26[v8], v11, v5);
      }
    }

    if (*(v7 - 1) == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v26[v6 + 1408], *v4, v5);
      v12 = v4[1];
      if (v12)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v26[v8], v12, v5);
      }
    }

    if (*v7 == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v26[v6 + 2816], *v4, v5);
      v13 = v4[1];
      if (v13)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v26[v8], v13, v5);
      }
    }

    if (v7[1] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v26[v10], *v4, v5);
      v14 = v4[1];
      if (v14)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v26[v8], v14, v5);
      }
    }

    if (v7[2] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v26[v9], *v4, v5);
      v15 = v4[1];
      if (v15)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v26[v8], v15, v5);
      }
    }

    v8 += 4;
    v9 += 352;
    v10 += 352;
    v6 += 352;
    v7 += 5;
  }

  while (v6 != 1408);
  v16 = &v28;
  v17 = -1408;
  do
  {
    operator delete(v16[42]);
    *v16 = (v16 + 2);
    *(v16 + 3) = 40;
    v16 -= 44;
    v17 += 352;
  }

  while (v17);
  v18 = &v27;
  v19 = -1408;
  do
  {
    operator delete(v18[42]);
    *v18 = (v18 + 2);
    *(v18 + 3) = 40;
    v18 -= 44;
    v19 += 352;
  }

  while (v19);
  for (i = 0; i != -1408; i -= 352)
  {
    v21 = &v26[i];
    operator delete(*&v26[i + 4216]);
    *(v21 + 485) = v21 + 3896;
    *(v21 + 973) = 40;
  }

  v22 = 1408;
  do
  {
    v23 = &v26[v22];
    operator delete(*&v26[v22 + 1400]);
    *(v23 + 133) = v23 + 1080;
    *(v23 + 269) = 40;
    v22 -= 352;
  }

  while (v22);
  v24 = 1408;
  do
  {
    operator delete(*&v26[v24 - 8]);
    *&v26[v24 - 344] = &v26[v24 - 328];
    *&v26[v24 - 332] = 40;
    v24 -= 352;
  }

  while (v24);
  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v67 = *MEMORY[0x277D85DE8];
  v10 = 20;
  do
  {
    std::vector<int>::push_back[abi:nn200100]((a1 + 40), &OpenSubdiv::v3_1_1::Vtr::INDEX_INVALID);
    --v10;
  }

  while (v10);
  v11 = 20 * *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 16);
  if ((a6 & 0x80000000) != 0)
  {
    NumFVarValuesTotal = *(v13 + 5);
  }

  else
  {
    NumFVarValuesTotal = OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(v13, a6);
  }

  v15 = v12 + 4 * v11;
  if (*(a1 + 24) != 1)
  {
    goto LABEL_38;
  }

  v16 = *(a2 + 24);
  if (*(v16 + 8 * a3) != 4)
  {
    OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints();
  }

  v17 = *(a2 + 72) + 4 * *(v16 + 8 * a3 + 4);
  v18 = *(a2 + 12);
  OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceETags(a2, a3, v64, a6);
  v19 = 0;
  v62 = v18 << 28;
  v20 = &OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::gregoryEdgeVerts;
  do
  {
    if ((v64[v19] & 2) != 0)
    {
      goto LABEL_25;
    }

    v21 = *(v17 + 4 * v19);
    v22 = *(a2 + 144);
    v23 = *(v22 + 8 * v21);
    if (v23 < 1)
    {
LABEL_14:
      v29 = 0;
    }

    else
    {
      v24 = *(a2 + 168) + 4 * *(v22 + 4 * ((2 * v21) | 1));
      v25 = 1;
      v26 = v23;
      v27 = v24;
      while (1)
      {
        v28 = *v27++;
        if (v28 == a3)
        {
          break;
        }

        ++v25;
        if (!--v26)
        {
          goto LABEL_14;
        }
      }

      v29 = *(v24 + 4 * (v25 % v23));
    }

    if (v29 == -1 || v29 >= a3)
    {
      goto LABEL_25;
    }

    if (*(a1 + 64) == *(a1 + 72))
    {
      break;
    }

    v30 = *(a2 + 24);
    v31 = *(v30 + 8 * v29 + 4);
    LODWORD(v30) = *(v30 + 8 * v29);
    v65 = *(a2 + 72) + 4 * v31;
    v66 = v30;
    IndexIn4Tuple = OpenSubdiv::v3_1_1::Vtr::ConstArray<int>::FindIndexIn4Tuple(&v65, v21);
    if (IndexIn4Tuple == -1)
    {
      OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints();
    }

    v33 = IndexIn4Tuple;
    __key = v29 | v62;
    v34 = bsearch(&__key, *(a1 + 64), (*(a1 + 72) - *(a1 + 64)) >> 2, 4uLL, OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::LevelAndFaceIndex::compare);
    if (!v34)
    {
      break;
    }

    v35 = *(a1 + 64);
    v36 = (v34 - v35) >> 2;
    if ((v36 & 0x80000000) != 0 || v36 >= ((*(a1 + 72) - v35) >> 2))
    {
      OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints();
    }

    v37 = *(a1 + 40) + (((5 * v36) << 34) >> 30);
    v38 = (&OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::gregoryEdgeVerts + 16 * v33);
    for (i = 12; i != -4; i -= 4)
    {
      v40 = *v38++;
      *(v15 + 4 * *&v20[i]) = *(v37 + 4 * v40);
    }

LABEL_25:
    ++v19;
    v20 += 16;
  }

  while (v19 != 4);
  v41 = v62 | a3;
  v43 = *(a1 + 72);
  v42 = *(a1 + 80);
  if (v43 >= v42)
  {
    v45 = *(a1 + 64);
    v46 = v43 - v45;
    v47 = (v43 - v45) >> 2;
    v48 = v47 + 1;
    if ((v47 + 1) >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v49 = v42 - v45;
    if (v49 >> 1 > v48)
    {
      v48 = v49 >> 1;
    }

    v50 = v49 >= 0x7FFFFFFFFFFFFFFCLL;
    v51 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v50)
    {
      v51 = v48;
    }

    if (v51)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1 + 64, v51);
    }

    v52 = v47;
    v53 = (4 * v47);
    v54 = &v53[-v52];
    *v53 = v41;
    v44 = v53 + 1;
    memcpy(v54, v45, v46);
    v55 = *(a1 + 64);
    *(a1 + 64) = v54;
    *(a1 + 72) = v44;
    *(a1 + 80) = 0;
    if (v55)
    {
      operator delete(v55);
    }
  }

  else
  {
    *v43 = v41;
    v44 = v43 + 1;
  }

  *(a1 + 72) = v44;
LABEL_38:
  v56 = 0;
  v57 = &v65;
  v58 = v15;
  do
  {
    for (j = 0; j != 5; ++j)
    {
      if (*(v58 + 4 * j) == -1)
      {
        *(v58 + 4 * j) = *(a1 + 28) + NumFVarValuesTotal;
        ++*(a1 + 28);
        v60 = 1;
      }

      else
      {
        v60 = 0;
      }

      *(v57 + j) = v60;
    }

    ++v56;
    v58 += 20;
    v57 = (v57 + 5);
  }

  while (v56 != 4);
  OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::addPatchBasis(a1);
  ++*(a1 + 32);
  return v15;
}

void OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints()
{
  __assert_rtn("GetPatchPoints", "endCapGregoryBasisPatchFactory.cpp", 156, "fedges.size()==4");
}

{
  __assert_rtn("GetPatchPoints", "endCapGregoryBasisPatchFactory.cpp", 205, "adjPatchIndex>=0 && adjPatchIndex<(int)_levelAndFaceIndices.size()");
}

{
  __assert_rtn("GetPatchPoints", "endCapGregoryBasisPatchFactory.cpp", 191, "aedge!=Vtr::INDEX_INVALID");
}

void OpenSubdiv::v3_1_1::Vtr::internal::SparseSelector::selectFace(OpenSubdiv::v3_1_1::Vtr::internal::Refinement **this, int a2)
{
  if ((this[1] & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::initializeSparseSelectionTags(*this);
    *(this + 8) = 1;
  }

  v4 = *(*this + 51);
  if ((*(v4 + a2) & 1) == 0)
  {
    *(v4 + a2) |= 1u;
    v5 = *(*this + 1);
    v6 = v5[3];
    v7 = *(v6 + 8 * a2);
    if (v7 >= 1)
    {
      v8 = *(v6 + 8 * a2 + 4);
      v9 = (v5[9] + 4 * v8);
      v10 = (v5[6] + 4 * v8);
      do
      {
        v11 = *v9++;
        *(*(*this + 54) + v11) |= 1u;
        v12 = *v10++;
        *(*(*this + 57) + v12) |= 1u;
        --v7;
      }

      while (v7);
    }
  }
}

double OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::QuadRefinement(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = OpenSubdiv::v3_1_1::Vtr::internal::Refinement::Refinement(a1, a2, a3, a4);
  *v4 = &unk_282DCB468;
  *&result = 0x400000000;
  *(v4 + 28) = 0x400000000;
  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::~QuadRefinement(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(this);

  JUMPOUT(0x21CF07610);
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::allocateParentChildIndices(std::vector<int> *this)
{
  end = this->__end_;
  v3 = *(end + 7) - *(end + 6);
  v4 = *(end + 10) - *(end + 9);
  v5 = *(end + 16) - *(end + 15);
  v6 = *end;
  v7 = end[1];
  v8 = end[2];
  __x = 0;
  v9 = *(end + 3);
  v10 = (*(end + 4) - v9) >> 2;
  this[3].__end_cap_.__value_ = v9;
  LODWORD(this[4].__begin_) = v10;
  v11 = *(end + 3);
  v12 = (*(end + 4) - v11) >> 2;
  this[4].__end_ = v11;
  LODWORD(this[4].__end_cap_.__value_) = v12;
  std::vector<int>::resize(this + 5, (v3 >> 2), &__x);
  std::vector<int>::resize(this + 6, (v4 >> 2), &__x);
  std::vector<int>::resize(this + 8, (v5 >> 2), &__x);
  std::vector<int>::resize(this + 7, v6, &__x);
  std::vector<int>::resize(this + 9, v7, &__x);
  std::vector<int>::resize(this + 10, v8, &__x);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<float>::resize(v2 + 2, 4 * SLODWORD(v2->__begin_));

  return OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVerticesFromParentFaces(this);
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  std::vector<float>::resize((*(this + 2) + 24), 2 * **(this + 2));
  v2 = *(this + 2);
  if (*v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (*(v2 + 3) + 4);
    do
    {
      *(v5 - 1) = 4;
      *v5 = v3;
      ++v4;
      v3 += 4;
      v5 += 2;
    }

    while (v4 < *v2);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVerticesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = *(v1 + 24);
    v5 = *(v1 + 48);
    v6 = *(v1 + 72);
    v7 = this[11];
    v8 = this[15];
    do
    {
      v9 = *(v4 + 8 * v3);
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = (8 * v3) | 4;
        v12 = *(v4 + v11);
        v13 = v5 + 4 * v12;
        v14 = v6 + 4 * v12;
        v15 = v8 + 4 * *(v7 + v11);
        do
        {
          v16 = *(v15 + 4 * v10);
          if (v16 != -1)
          {
            if (v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v9;
            }

            v18 = *(this[21] + 4 * v3);
            v19 = v17 - 1;
            v20 = this[27];
            v21 = *(v20 + 4 * *(v14 + 4 * (v17 - 1)));
            v22 = *(this[30] + 4 * *(v13 + 4 * v10));
            v23 = *(v20 + 4 * *(v14 + 4 * v10));
            v24 = (*(this[2] + 48) + 4 * *(*(this[2] + 24) + 4 * ((2 * v16) | 1)));
            if (v9 == 4)
            {
              v25 = v17 - 2;
              if (!v19)
              {
                v25 = 3;
              }

              v24[v10] = v22;
              if (v25)
              {
                v26 = v25 - 1;
              }

              else
              {
                v26 = 3;
              }

              v24[v26] = v23;
              v24[v25] = v18;
              v27 = &v24[v19];
            }

            else
            {
              *v24 = v22;
              v24[1] = v23;
              v27 = v24 + 3;
              v24[2] = v18;
            }

            *v27 = v21;
          }

          ++v10;
        }

        while (v9 != v10);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<float>::resize(v2 + 3, 4 * SLODWORD(v2->__begin_));

  return OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceEdgesFromParentFaces(this);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceEdgesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = *(v1 + 24);
    v5 = *(v1 + 48);
    v6 = *(v1 + 72);
    v7 = this[11];
    v8 = this[15];
    v9 = this[13];
    v10 = this[18];
    do
    {
      v11 = *(v4 + 8 * v3);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = (8 * v3) | 4;
        v14 = *(v4 + v13);
        v15 = v5 + 4 * v14;
        v16 = v6 + 4 * v14;
        v17 = v8 + 4 * *(v7 + v13);
        v18 = v10 + 4 * *(v9 + v13);
        do
        {
          v19 = *(v17 + 4 * v12);
          if (v19 != -1)
          {
            if (v12)
            {
              v20 = v12;
            }

            else
            {
              v20 = v11;
            }

            v21 = v20 - 1;
            v22 = *(v16 + 4 * (v20 - 1));
            v23 = *(v1 + 120);
            v24 = (v23 + 8 * v22);
            v25 = *(v16 + 4 * v12);
            v26 = *(v15 + 4 * v12);
            v27 = (v23 + 8 * v25);
            v29 = *v24 == v24[1] || *v24 != v26;
            v31 = *v27 != v27[1] && *v27 != v26;
            v32 = this[24];
            v33 = *(v32 + 8 * v22 + 4 * v29);
            v34 = *(v32 + 8 * v25 + 4 * v31);
            v35 = *(v18 + 4 * v21);
            v36 = *(v18 + 4 * v12);
            v37 = (*(this[2] + 72) + 4 * *(*(this[2] + 24) + 4 * ((2 * v19) | 1)));
            if (v11 == 4)
            {
              v38 = v20 - 2;
              if (!v21)
              {
                v38 = 3;
              }

              v37[v12] = v34;
              if (v38)
              {
                v39 = v38 - 1;
              }

              else
              {
                v39 = 3;
              }

              v37[v39] = v36;
              v37[v38] = v35;
              v40 = &v37[v21];
            }

            else
            {
              *v37 = v34;
              v37[1] = v36;
              v40 = v37 + 3;
              v37[2] = v35;
            }

            *v40 = v33;
          }

          ++v12;
        }

        while (v11 != v12);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  std::vector<float>::resize((*(this + 2) + 120), 2 * *(*(this + 2) + 4));
  OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVerticesFromParentFaces(this);

  return OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVerticesFromParentEdges(this);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVerticesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = *(v1 + 24);
    v5 = *(v1 + 72);
    v6 = this[13];
    v7 = this[18];
    do
    {
      v8 = *(v4 + 8 * v3);
      if (v8 >= 1)
      {
        v9 = (8 * v3) | 4;
        v10 = (v5 + 4 * *(v4 + v9));
        v11 = (v7 + 4 * *(v6 + v9));
        do
        {
          v13 = *v11++;
          v12 = v13;
          if (v13 != -1)
          {
            v14 = (*(this[2] + 120) + 8 * v12);
            *v14 = *(this[21] + 4 * v3);
            v14[1] = *(this[27] + 4 * *v10);
          }

          ++v10;
          --v8;
        }

        while (v8);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVerticesFromParentEdges(void *this)
{
  v1 = this[1];
  if (*(v1 + 4) >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 120);
    v4 = this[24];
    do
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = *(v4 + 8 * v2 + 4 * v5);
        if (v8 != -1)
        {
          v9 = (*(this[2] + 120) + 8 * v8);
          *v9 = *(this[27] + 4 * v2);
          v9[1] = *(this[30] + 4 * *(v3 + 8 * v2 + 4 * v5));
        }

        v6 = 0;
        v5 = 1;
      }

      while ((v7 & 1) != 0);
      ++v2;
    }

    while (v2 < *(v1 + 4));
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = 2 * (((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2) + ((*(*(this + 1) + 56) - *(*(this + 1) + 48)) >> 2));
  std::vector<float>::resize((*(this + 2) + 144), 2 * *(*(this + 2) + 4));
  std::vector<float>::resize((*(this + 2) + 168), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 192), v2);
  *(*(this + 2) + 16) = *(*(this + 1) + 16);
  OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFacesFromParentFaces(this);
  OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFacesFromParentEdges(this);
  v3 = *(this + 2);
  v4 = (*(v3 + 144) + 4 * (2 * *(v3 + 4) - 2));
  v5 = *v4;
  v6 = v4[1];
  std::vector<float>::resize((v3 + 168), v6 + v5);
  v7 = (*(this + 2) + 192);

  std::vector<unsigned short>::resize(v7, v6 + v5);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFacesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = this[11];
    v5 = this[15];
    v6 = this[13];
    v7 = this[18];
    do
    {
      v8 = *(v4 + 8 * v3);
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = (8 * v3) | 4;
        v11 = v5 + 4 * *(v4 + v10);
        v12 = v7 + 4 * *(v6 + v10);
        do
        {
          v13 = *(v12 + 4 * v9);
          if (v13 == -1)
          {
            ++v9;
          }

          else
          {
            v14 = this[2];
            v15 = *(v14 + 144);
            v16 = (v15 + 8 * v13);
            *v16 = 2;
            if (v13)
            {
              v17 = *(v16 - 1) + *(v16 - 2);
            }

            else
            {
              v17 = 0;
            }

            v18 = 2 * v13;
            v16[1] = v17;
            v19 = *(v14 + 16);
            if (v19 <= 2)
            {
              v19 = 2;
            }

            *(v14 + 16) = v19;
            v20 = *(v15 + 4 * (v18 | 1));
            v21 = (*(v14 + 168) + 4 * v20);
            v22 = (*(v14 + 192) + 2 * v20);
            v23 = v9 + 1;
            if (v9 + 1 >= v8)
            {
              v24 = 0;
            }

            else
            {
              v24 = v9 + 1;
            }

            v25 = *(v11 + 4 * v9);
            if (v25 == -1)
            {
              v27 = 0;
            }

            else
            {
              *v21 = v25;
              if (v8 == 4)
              {
                v26 = v24;
              }

              else
              {
                v26 = 1;
              }

              *v22 = v26;
              v27 = 1;
            }

            v28 = *(v11 + 4 * v24);
            if (v28 != -1)
            {
              v21[v27] = v28;
              v29 = v24 & 3 ^ 2;
              if (v8 != 4)
              {
                v29 = 2;
              }

              v22[v27] = v29;
              LODWORD(v27) = v27 + 1;
            }

            *v16 = v27;
            v9 = v23;
          }
        }

        while (v9 != v8);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[24];
    do
    {
      v5 = (v4 + 8 * v3);
      if (*v5 != -1 || v5[1] != -1)
      {
        v6 = 0;
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 168) + 4 * v8;
        v10 = *(v1 + 192) + 2 * v8;
        v11 = (*(v1 + 120) + 8 * v3);
        v12 = 1;
        do
        {
          v13 = v12;
          v14 = v5[v6];
          if (v14 != -1)
          {
            v15 = this[2];
            v16 = *(v15 + 144);
            v17 = (v16 + 8 * v14);
            *v17 = v7;
            if (v14)
            {
              v18 = *(v17 - 1) + *(v17 - 2);
            }

            else
            {
              v18 = 0;
            }

            v17[1] = v18;
            v19 = *(v15 + 16);
            if (v19 <= v7)
            {
              v19 = v7;
            }

            *(v15 + 16) = v19;
            if (v7 < 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = 0;
              v21 = *(v16 + 4 * ((2 * v14) | 1));
              v22 = *(v15 + 168) + 4 * v21;
              v23 = *(v15 + 192) + 2 * v21;
              v24 = *(v1 + 24);
              v25 = this[11];
              v26 = this[15];
              v27 = v7;
              v28 = v9;
              v29 = v10;
              do
              {
                v31 = *v28++;
                v30 = v31;
                LODWORD(v31) = *v29++;
                v32 = v31;
                v33 = (2 * v30) | 1;
                v34 = v6;
                if (*v11 != v11[1])
                {
                  v34 = *(*(v1 + 48) + 4 * *(v24 + 4 * v33) + 4 * v32) != v11[v6];
                }

                v35 = 2 * v30;
                v36 = v26 + 4 * *(v25 + 4 * v33);
                if (v34 + v32 == *(v25 + 4 * v35))
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v34 + v32;
                }

                v38 = *(v36 + 4 * v37);
                if (v38 != -1)
                {
                  v39 = *(v24 + 4 * v35);
                  *(v22 + 4 * v20) = v38;
                  if (v34)
                  {
                    v40 = 3;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (v39 != 4)
                  {
                    LOWORD(v32) = v40;
                  }

                  *(v23 + 2 * v20++) = v32;
                }

                --v27;
              }

              while (v27);
            }

            *v17 = v20;
          }

          v12 = 0;
          v6 = 1;
        }

        while ((v13 & 1) != 0);
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 1);
  v3 = (((v2[22] - v2[21]) >> 1) & 0xFFFFFFFE) + ((v2[7] - v2[6]) >> 2) + ((v2[37] - v2[36]) >> 2);
  std::vector<float>::resize((*(this + 2) + 264), 2 * *(*(this + 2) + 8));
  std::vector<float>::resize((*(this + 2) + 288), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 312), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 264) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<float>::resize((v4 + 288), v7 + v6);
  v8 = (*(this + 2) + 312);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 288);
        v7 = (*(v1 + 264) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 312);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = *(v20 + 4 * *(v19 + 8 * v21 + 4) + 4 * v22);
            if (v24 != -1)
            {
              v25 = *(v19 + 8 * v21);
              *(v17 + 4 * v14) = v24;
              if (v25 != 4)
              {
                v23 = 0;
              }

              *(v18 + 2 * v14++) = v23;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = this[21];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = (this[11] + 8 * v3);
        v7 = this[15];
        v8 = *v6;
        v9 = v6[1];
        v10 = this[2];
        v11 = (v10[33] + 8 * v5);
        *v11 = v8;
        if (v5)
        {
          v12 = *(v11 - 1) + *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v11[1] = v12;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v13 = 0;
          v14 = 0;
          v15 = v7 + 4 * v9;
          v16 = v10[36] + 4 * v12;
          v17 = v10[39] + 2 * v12;
          do
          {
            v18 = *(v15 + 4 * v13);
            if (v18 != -1)
            {
              *(v16 + 4 * v14) = v18;
              v19 = v13 & 3 ^ 2;
              if (v8 != 4)
              {
                v19 = 2;
              }

              *(v17 + 2 * v14++) = v19;
            }

            ++v13;
          }

          while (v8 != v13);
        }

        *v11 = v14;
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = (*(v1 + 144) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 192);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = 2 * v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = v20 + 4 * *(v19 + 8 * v21 + 4);
            v25 = *(v19 + 8 * v21);
            if (v22 + 1 == v25)
            {
              v26 = 0;
            }

            else
            {
              v26 = v23 + 1;
            }

            v27 = *(v24 + 4 * v26);
            if (v27 != -1)
            {
              *(v17 + 4 * v14) = v27;
              if (v25 == 4)
              {
                v28 = v23;
              }

              else
              {
                v28 = 3;
              }

              *(v18 + 2 * v14++) = v28;
            }

            v29 = *(v24 + 4 * v23);
            if (v29 != -1)
            {
              *(v17 + 4 * v14) = v29;
              if (v25 == 4)
              {
                v30 = v26;
              }

              else
              {
                v30 = 1;
              }

              *(v18 + 2 * v14++) = v30;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 1);
  v3 = ((*(v2 + 56) - *(v2 + 48)) >> 2) + 2 * *(v2 + 4) + ((*(v2 + 176) - *(v2 + 168)) >> 2) + ((*(v2 + 368) - *(v2 + 360)) >> 2);
  std::vector<float>::resize((*(this + 2) + 336), 2 * *(*(this + 2) + 8));
  std::vector<float>::resize((*(this + 2) + 360), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 384), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 336) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<float>::resize((v4 + 360), v7 + v6);
  v8 = (*(this + 2) + 384);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 360);
        v7 = (*(v1 + 336) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 384);
        v11 = this[2];
        v12 = *(v11 + 336);
        v13 = (v12 + 8 * v5);
        *v13 = v8;
        if (v5)
        {
          v14 = *(v13 - 1) + *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v13[1] = v14;
        v15 = *(v11 + 20);
        if (v15 <= v8)
        {
          v15 = v8;
        }

        *(v11 + 20) = v15;
        if (v8 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v6 + 4 * v9);
          v18 = (v10 + 2 * v9);
          v19 = *(v12 + 4 * ((2 * v5) | 1));
          v20 = *(v11 + 360) + 4 * v19;
          v21 = *(v11 + 384) + 2 * v19;
          v22 = this[24];
          do
          {
            v24 = *v17++;
            v23 = v24;
            LODWORD(v24) = *v18++;
            v25 = *(v22 + 8 * v23 + 4 * v24);
            if (v25 != -1)
            {
              *(v20 + 4 * v16) = v25;
              *(v21 + 2 * v16++) = 1;
            }

            --v8;
          }

          while (v8);
        }

        *v13 = v16;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = this[21];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(*(v1 + 24) + 8 * v3);
        v7 = *(this[13] + 8 * v3 + 4);
        v8 = this[18];
        v9 = this[2];
        v10 = *(v9 + 336);
        v11 = (v10 + 8 * v5);
        *v11 = v6;
        if (v5)
        {
          v12 = *(v11 - 1) + *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v11[1] = v12;
        v13 = *(v9 + 20);
        if (v13 <= v6)
        {
          v13 = v6;
        }

        *(v9 + 20) = v13;
        if (v6 < 1)
        {
          v15 = 0;
        }

        else
        {
          v14 = 0;
          v15 = 0;
          v16 = *(v10 + 4 * ((2 * v5) | 1));
          v17 = *(v9 + 360) + 4 * v16;
          v18 = *(v9 + 384) + 2 * v16;
          v19 = v8 + 4 * v7 - 4;
          do
          {
            if (v14)
            {
              v20 = v14;
            }

            else
            {
              v20 = v6;
            }

            v21 = *(v19 + 4 * v20);
            if (v21 != -1)
            {
              *(v17 + 4 * v15) = v21;
              *(v18 + 2 * v15++) = 0;
            }

            ++v14;
          }

          while (v6 != v14);
        }

        *v11 = v15;
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 192);
        v10 = *(v1 + 120);
        v11 = this[24];
        v12 = this[2];
        v13 = v7 + 2;
        v14 = *(v12 + 336);
        v15 = (v14 + 8 * v5);
        *v15 = v7 + 2;
        if (v5)
        {
          v16 = *(v15 - 1) + *(v15 - 2);
        }

        else
        {
          v16 = 0;
        }

        v17 = (v11 + 8 * v3);
        v18 = 2 * v5;
        v15[1] = v16;
        if (*(v12 + 20) > v13)
        {
          v13 = *(v12 + 20);
        }

        *(v12 + 20) = v13;
        v19 = *(v14 + 4 * (v18 | 1));
        v20 = (*(v12 + 360) + 4 * v19);
        v21 = (*(v12 + 384) + 2 * v19);
        if (*v17 == -1)
        {
          v22 = 0;
        }

        else
        {
          *v20 = *v17;
          *v21 = 0;
          v22 = 1;
        }

        v23 = v17[1];
        if (v23 != -1)
        {
          v20[v22] = v23;
          v21[v22++] = 0;
        }

        if (v7 >= 1)
        {
          v24 = 0;
          v25 = v6 + 4 * v8;
          v26 = v9 + 2 * v8;
          v27 = this[13];
          v28 = this[18];
          v29 = (v10 + 8 * v3);
          do
          {
            v30 = *(v26 + 2 * v24);
            v31 = (2 * *(v25 + 4 * v24)) | 1;
            v32 = *(v28 + 4 * *(v27 + 4 * v31) + 4 * v30);
            if (v32 != -1)
            {
              v20[v22] = v32;
              v21[v22++] = 1;
              if (!v24 && v22 == 3)
              {
                if (*v29 == v29[1])
                {
                  v33 = v20[1];
                  v34 = v21[1];
                }

                else
                {
                  v35 = *(*(v1 + 48) + 4 * *(*(v1 + 24) + 4 * v31) + 4 * v30);
                  v33 = v20[1];
                  v34 = v21[1];
                  if (v35 == *v29)
                  {
                    v36 = *v20;
                    *v20 = v33;
                    v37 = *v21;
                    *v21 = v34;
                    v34 = v37;
                    v33 = v36;
                  }
                }

                v20[1] = v20[2];
                v20[2] = v33;
                v21[1] = v21[2];
                v21[2] = v34;
                v22 = 3;
              }
            }

            ++v24;
          }

          while (v7 != v24);
        }

        *v15 = v22;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::markSparseFaceChildren(uint64_t this)
{
  if (*(this + 416) == *(this + 408))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::markSparseFaceChildren();
  }

  if (*(this + 28))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::markSparseFaceChildren();
  }

  v1 = *(this + 8);
  if (*v1 >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = (2 * (v2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v4 = (*(this + 120) + 4 * *(*(this + 88) + 4 * v3));
      v5 = (*(this + 144) + 4 * *(*(this + 104) + 4 * v3));
      v6 = *(v1 + 3);
      v7 = *(v6 + 8 * v2);
      v8 = *(this + 408);
      if (*(v8 + v2))
      {
        break;
      }

      if (v7 >= 1)
      {
        v9 = 0;
        v10 = *(v1 + 6) + 4 * *(v6 + 4 * v3);
        v11 = *(this + 456);
        v12 = 1;
        do
        {
          while ((*(v11 + *(v10 + 4 * v9)) & 1) != 0)
          {
            v12 = 0;
            v4[v9] = 1;
            v5[v9] = 1;
            if (v9)
            {
              v13 = v9;
            }

            else
            {
              v13 = v7;
            }

            v5[v13 - 1] = 1;
            if (v7 - 1 == v9++)
            {
              goto LABEL_24;
            }
          }

          ++v9;
        }

        while (v7 != v9);
        if (v12)
        {
          goto LABEL_21;
        }

LABEL_24:
        *(*(this + 168) + 4 * v2) = 1;
        v16 = (*(v1 + 9) + 4 * *(v6 + 4 * v3));
        v17 = *(v6 + 8 * v2);
        if (v17 == 3)
        {
          v23 = *(*(this + 432) + v16[1]) & 0xE | (*(*(this + 432) + *v16) >> 1) & 0xF | (2 * *(*(this + 432) + v16[2])) & 0xC;
          v22 = *(v8 + v2);
        }

        else
        {
          if (v17 != 4)
          {
            v24 = *(v8 + v2) & 0xE1;
            *(v8 + v2) &= 0xE1u;
            if (v17 >= 1)
            {
              do
              {
                v25 = *v16++;
                v24 |= *(*(this + 432) + v25) & 0x1E;
                *(v8 + v2) = v24;
                --v17;
              }

              while (v17);
            }

            goto LABEL_21;
          }

          v18 = *(this + 432);
          v19 = *(v18 + *v16);
          v20 = *(v18 + v16[1]) & 0xE;
          v21 = (2 * *(v18 + v16[2])) & 0xC;
          LOBYTE(v18) = 4 * *(v18 + v16[3]);
          v22 = *(v8 + v2);
          v23 = v20 | (v19 >> 1) & 0xF | v21 | v18 & 8;
        }

        v15 = v22 & 0xE1 | (2 * (v23 & 0xF));
        goto LABEL_20;
      }

LABEL_21:
      ++v2;
      v1 = *(this + 8);
      if (v2 >= *v1)
      {
        return this;
      }
    }

    if (v7 >= 1)
    {
      do
      {
        *v4++ = 2;
        *v5++ = 2;
        --v7;
      }

      while (v7);
    }

    *(*(this + 168) + 4 * v2) = 2;
    v15 = *(v8 + v2) & 0xE1;
LABEL_20:
    *(v8 + v2) = v15;
    goto LABEL_21;
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::markSparseFaceChildren()
{
  __assert_rtn("markSparseFaceChildren", "quadRefinement.cpp", 931, "_splitType == Sdc::SPLIT_TO_QUADS");
}

{
  __assert_rtn("markSparseFaceChildren", "quadRefinement.cpp", 920, "_parentFaceTag.size() > 0");
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::TopologyRefiner(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = *(a1 + 8) & 0xC0 | 1;
  *(a1 + 12) &= 0xC0u;
  *(a1 + 16) = *(a1 + 16) & 0xF000 | 0xF0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 96) = 0u;
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level *>::reserve((a1 + 40), 0xAuLL);
  operator new();
}

{
  OpenSubdiv::v3_1_1::Far::TopologyRefiner::TopologyRefiner(a1, a2, a3);
}

void *std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Statement *>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::assembleFarLevels(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this)
{
  std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::resize(this + 11, (*(this + 6) - *(this + 5)) >> 3);
  v2 = *(this + 11);
  v2[1] = 0;
  v3 = *(this + 5);
  *v2 = *v3;
  v2[2] = 0;
  v4 = *(this + 8);
  v5 = *(this + 9) - v4;
  v6 = v5 >> 3;
  if ((v5 >> 3))
  {
    v2[2] = *v4;
    if (v6 >= 2)
    {
      v7 = ((v5 >> 3) & 0x7FFFFFFF) - 1;
      v8 = v2 + 5;
      v9 = v4 + 1;
      v10 = v3 + 1;
      do
      {
        *(v8 - 1) = *(v9 - 1);
        v11 = *v10++;
        *(v8 - 2) = v11;
        v12 = *v9++;
        *v8 = v12;
        v8 += 3;
        --v7;
      }

      while (v7);
    }

    v13 = &v2[3 * v6];
    v13[1] = *(v4 + (((v5 << 29) - 0x100000000) >> 29));
    *v13 = *(v3 + ((v5 << 29) >> 29));
    v13[2] = 0;
  }
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::~TopologyRefiner(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this)
{
  v3 = *(this + 5);
  v2 = *(this + 6);
  if (((v2 - v3) >> 3) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::Level::~Level(v5);
        MEMORY[0x21CF07610]();
        v3 = *(this + 5);
        v2 = *(this + 6);
      }

      ++v4;
    }

    while (v4 < ((v2 - v3) >> 3));
  }

  v6 = *(this + 8);
  v7 = *(this + 9);
  if (((v7 - v6) >> 3) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v6[v8];
      if (v9)
      {
        (*(*v9 + 8))(v6[v8]);
        v6 = *(this + 8);
        v7 = *(this + 9);
      }

      ++v8;
    }

    while (v8 < ((v7 - v6) >> 3));
  }

  v10 = *(this + 11);
  if (v10)
  {
    *(this + 12) = v10;
    operator delete(v10);
    v6 = *(this + 8);
  }

  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v11 = *(this + 5);
  if (v11)
  {
    *(this + 6) = v11;
    operator delete(v11);
  }
}

int32x2_t OpenSubdiv::v3_1_1::Far::TopologyRefiner::initializeInventory(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this)
{
  v1 = *(this + 5);
  v2 = (*(this + 6) - v1) >> 3;
  if (v2)
  {
    if (v2 != 1)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefiner::initializeInventory();
    }

    v3 = *v1;
    result = vrev64_s32(*(v3 + 4));
    *(this + 20) = result;
    v5 = (*(v3 + 56) - *(v3 + 48)) >> 2;
    *(this + 7) = *v3;
    *(this + 8) = v5;
    *(this + 9) = *(v3 + 20);
  }

  else
  {
    *(this + 28) = 0;
    *(this + 20) = 0;
    *(this + 9) = 0;
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefiner::updateInventory(uint64_t this, const OpenSubdiv::v3_1_1::Vtr::internal::Level *a2)
{
  *v2.i8 = vrev64_s32(*(a2 + 4));
  v2.i32[2] = *a2;
  v2.i32[3] = (*(a2 + 7) - *(a2 + 6)) >> 2;
  *(this + 20) = vaddq_s32(*(this + 20), v2);
  v3 = *(a2 + 5);
  if (*(this + 36) > v3)
  {
    v3 = *(this + 36);
  }

  *(this + 36) = v3;
  return this;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::appendRefinement(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this, OpenSubdiv::v3_1_1::Vtr::internal::Refinement *a2)
{
  v5 = *(this + 9);
  v4 = *(this + 10);
  if (v5 >= v4)
  {
    v7 = *(this + 8);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Statement *>>(this + 64, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(this + 8);
    v14 = *(this + 9) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(this + 8);
    *(this + 8) = v15;
    *(this + 9) = v6;
    *(this + 10) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(this + 9) = v6;
}

void std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this, int a2)
{
  v2 = *(this + 5);
  if (((*(this + 6) - v2) >> 3) < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  do
  {
    v6 = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*(v2 + 8 * v5++), a2) + v6;
    v2 = *(this + 5);
  }

  while (v5 < ((*(this + 6) - v2) >> 3));
  return v6;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::RefineUniform(unsigned int *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!*(**(a1 + 5) + 8))
  {
    v10 = "Failure in TopologyRefiner::RefineUniform() -- base level is uninitialized.";
    goto LABEL_5;
  }

  if (*(a1 + 9) != *(a1 + 8))
  {
    v10 = "Failure in TopologyRefiner::RefineUniform() -- previous refinements already applied.";
LABEL_5:

    OpenSubdiv::v3_1_1::Far::Error(4, v10, a3, a4, a5, a6, a7, a8, a9);
    return;
  }

  *(a1 + 12) = a2;
  v11 = a2 & 0xF;
  *(a1 + 8) = a1[2] & 0xC3 | (4 * (a2 & 0xF)) | 1;
  OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetTopologicalSplitType(*a1);
  if (v11)
  {
    operator new();
  }

  OpenSubdiv::v3_1_1::Far::TopologyRefiner::assembleFarLevels(a1);
}

uint64_t OpenSubdiv::v3_1_1::Far::internal::FeatureMask::InitializeFeatures(uint64_t result, _WORD *a2, OpenSubdiv::v3_1_1::Sdc *a3)
{
  v4 = result;
  v5 = 15;
  if ((*a2 & 0x100) != 0)
  {
    result = OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularFaceSize(a3);
    v6 = result == 4;
    if (result == 4)
    {
      v5 = 11;
    }

    else
    {
      v5 = 15;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 | *v4 & 0xFFF0;
  *v4 = v5 | *v4 & 0xFFF0;
  if (v6 | ((*a2 & 0x200) >> 9))
  {
    v8 = 0;
  }

  else
  {
    v8 = 16;
  }

  v9 = v8 | v7 & 0xFFFFFFEF;
  *v4 = v9;
  v10 = (v9 & 0xFFFFFC1F | (*a2 >> 4) & 0x20) ^ 0x3E0;
  *v4 = v10;
  *v4 = v10 & 0xFBFF | *a2 & 0x400;
  return result;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::RefineAdaptive(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v19 = a2;
  v9 = a1 + 10;
  if (!*(**(a1 + 5) + 8))
  {
    v11 = "Failure in TopologyRefiner::RefineAdaptive() -- base level is uninitialized.";
    goto LABEL_15;
  }

  if (*(a1 + 9) != *(a1 + 8))
  {
    v11 = "Failure in TopologyRefiner::RefineAdaptive() -- previous refinements already applied.";
LABEL_15:

    OpenSubdiv::v3_1_1::Far::Error(4, v11, a3, a4, a5, a6, a7, a8, a9);
    return;
  }

  if (*a1 != 1)
  {
    v11 = "Failure in TopologyRefiner::RefineAdaptive() -- currently only supported for Catmark scheme.";
    goto LABEL_15;
  }

  *(a1 + 8) &= ~1u;
  *(a1 + 8) = a2;
  v12 = a2 & 0xF;
  OpenSubdiv::v3_1_1::Far::internal::FeatureMask::InitializeFeatures(&v18, &v19, 1);
  if ((v18 & 0x400) != 0)
  {
    v13 = *(**v9 + 456);
    v14 = *(**v9 + 464) - v13;
    if ((v14 >> 3) < 1)
    {
      goto LABEL_11;
    }

    v15 = 0;
    v16 = (v14 >> 3) & 0x7FFFFFFF;
    do
    {
      v17 = *v13++;
      v15 |= *(v17 + 12) ^ 1;
      --v16;
    }

    while (v16);
    if ((v15 & 1) == 0)
    {
LABEL_11:
      LOWORD(v18) = v18 & 0xFBFF;
    }
  }

  OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetTopologicalSplitType(*a1);
  if (v12)
  {
    operator new();
  }

  *(a1 + 8) = ((a1[18] - a1[16]) >> 1) & 0x3C | a1[2] & 0xC3;
  OpenSubdiv::v3_1_1::Far::TopologyRefiner::assembleFarLevels(a1);
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::selectFeatureAdaptiveComponents(int a1, OpenSubdiv::v3_1_1::Vtr::internal::Refinement **this, _DWORD *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    v3 = a3;
    v5 = *(*this + 1);
    if ((*a3 & 0x400) != 0)
    {
      v43 = (*(v5 + 58) - *(v5 + 57)) >> 3;
    }

    else
    {
      LODWORD(v43) = 0;
    }

    if (*v5 >= 1)
    {
      v6 = 0;
      v41 = *(*this + 8);
      v42 = v5[3];
      while (1)
      {
        if (*(*(v5 + 12) + v6))
        {
          goto LABEL_75;
        }

        v7 = *(v5 + 3);
        if (!v42)
        {
          v8 = (v7 + 8 * v6);
          v9 = *v8;
          if (v9 != v41)
          {
            if (v9 >= 1)
            {
              v29 = 0;
              v30 = *(v5 + 6) + 4 * v8[1];
              do
              {
                v31 = *(v30 + 4 * v29);
                v32 = *(v5 + 33);
                v33 = *(v32 + 8 * v31);
                if (v33 >= 1)
                {
                  v34 = (*(v5 + 36) + 4 * *(v32 + 8 * v31 + 4));
                  do
                  {
                    v35 = *v34++;
                    OpenSubdiv::v3_1_1::Vtr::internal::SparseSelector::selectFace(this, v35);
                    --v33;
                  }

                  while (v33);
                }

                ++v29;
              }

              while (v29 != v9);
            }

            goto LABEL_75;
          }
        }

        v10 = *(v7 + 8 * v6);
        OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v5, v6, &v44, 0xFFFFFFFF);
        v11 = OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag::BitwiseOr(&v44, v10);
        if ((v11 & 0x800) != 0)
        {
          goto LABEL_16;
        }

        if ((v11 & 1) != 0 && (*v3 & 0x200) != 0)
        {
          goto LABEL_74;
        }

        if (v11 & 2) != 0 && (*v3)
        {
          if ((v11 & 0x780) == 0x80)
          {
            goto LABEL_74;
          }

          if (v5[3] <= 1 && v10 >= 1)
          {
            v37 = &v44;
            while (1)
            {
              v38 = *v37++;
              if ((v38 & 0x782) == 0x82)
              {
                break;
              }

              if (!--v10)
              {
                goto LABEL_15;
              }
            }

LABEL_74:
            OpenSubdiv::v3_1_1::Vtr::internal::SparseSelector::selectFace(this, v6);
            goto LABEL_75;
          }
        }

LABEL_15:
        if ((v11 & 0x780) == 0x80)
        {
          goto LABEL_16;
        }

        if ((v11 & 0x80) == 0)
        {
          goto LABEL_74;
        }

        if ((v11 & 0x60) != 0)
        {
          if ((~*v3 & 0xC) == 0)
          {
            goto LABEL_74;
          }

          isSingleCreasePatch = OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(v5, v6, 0, 0);
          LOWORD(v12) = *v3;
          if (isSingleCreasePatch)
          {
            if ((v12 & 4) != 0)
            {
              goto LABEL_74;
            }
          }

          else if ((v12 & 8) != 0)
          {
            goto LABEL_74;
          }

          goto LABEL_17;
        }

        if ((v11 & 0x1010) == 0)
        {
          goto LABEL_16;
        }

        if ((v11 & 0x4000) != 0)
        {
          break;
        }

        if ((v11 & 4) != 0)
        {
          if ((v11 & 0x400) == 0)
          {
            goto LABEL_16;
          }

          LOWORD(v12) = *v3;
          if ((v11 & 8) == 0)
          {
LABEL_98:
            if ((v12 & 0x20) != 0)
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
          LOWORD(v12) = *v3;
          if ((v11 & 0x400) != 0)
          {
            goto LABEL_98;
          }

          if ((v12 & 0x10) != 0)
          {
            goto LABEL_74;
          }
        }

LABEL_17:
        if ((v12 & 0x400) != 0 && v43 >= 1)
        {
          v13 = 0;
          while (1)
          {
            while (OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(v5, v6, v13))
            {
              if (++v13 >= v43)
              {
                goto LABEL_75;
              }
            }

            v14 = v3;
            v15 = *(v5 + 3);
            v16 = *(v15 + 4 * ((2 * v6) | 1));
            v17 = *(v5 + 6);
            v18 = *(v15 + 8 * v6);
            if (OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(v5, v6, v13))
            {
              OpenSubdiv::v3_1_1::Far::TopologyRefiner::selectFeatureAdaptiveComponents();
            }

            if (v18 >= 1)
            {
              v19 = (v17 + 4 * v16);
              v20 = &v44;
              v21 = v18;
              do
              {
                v22 = *v19++;
                *v20++ = OpenSubdiv::v3_1_1::Vtr::internal::Level::getVertexCompositeFVarVTag(v5, v22, v13);
                --v21;
              }

              while (v21);
            }

            v23 = OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag::BitwiseOr(&v44, v18);
            v3 = v14;
            if ((v23 & 1) != 0 && (*v14 & 0x200) != 0)
            {
              goto LABEL_74;
            }

            if ((v23 & 2) != 0)
            {
              if (v23 & 0x80) == 0 || (*v14)
              {
                goto LABEL_74;
              }
            }

            else if ((v23 & 0x80) == 0)
            {
              goto LABEL_74;
            }

            if ((v23 & 0x4000) != 0)
            {
              v27 = (v23 >> 7) & 0xF;
              if (v27 >= 8)
              {
                v26 = HIBYTE(*v14) & 1;
                if (v26)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v27 < 4)
              {
                if ((v23 & 0x100) != 0)
                {
                  v26 = (*v14 >> 6) & 1;
                  if (v26)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_57;
                }

LABEL_46:
                v26 = 0;
                goto LABEL_57;
              }

              if ((v23 & 4) != 0)
              {
                v28 = 2;
              }

              else
              {
                v28 = 128;
              }

              v26 = (*v14 & v28) != 0;
              if ((*v14 & v28) != 0)
              {
                goto LABEL_58;
              }
            }

            else if ((v23 & 4) != 0)
            {
              if ((v23 & 0x400) == 0)
              {
                goto LABEL_46;
              }

              v26 = (*v14 >> 5) & 1;
              if ((v23 & 8) != 0)
              {
                v26 = 0;
              }

              if (v26)
              {
LABEL_58:
                if (v26)
                {
                  goto LABEL_74;
                }

                break;
              }
            }

            else
            {
              v24 = *v14;
              v25 = (v24 >> 4) & 1;
              v26 = (v24 >> 5) & 1;
              if ((v23 & 0x400) == 0)
              {
                v26 = v25;
              }

              if (v26)
              {
                goto LABEL_58;
              }
            }

LABEL_57:
            if (++v13 >= v43)
            {
              goto LABEL_58;
            }
          }
        }

LABEL_75:
        if (++v6 >= *v5)
        {
          return;
        }
      }

      v39 = (v11 >> 7) & 0xF;
      if (v39 >= 8)
      {
        LOWORD(v12) = *v3;
        if ((*v3 & 0x100) != 0)
        {
          goto LABEL_74;
        }

        goto LABEL_17;
      }

      if (v39 >= 4)
      {
        v12 = *v3;
        if ((v11 & 4) != 0)
        {
          v40 = 2;
        }

        else
        {
          v40 = 128;
        }

        if ((v12 & v40) != 0)
        {
          goto LABEL_74;
        }

        goto LABEL_17;
      }

      if ((v11 & 0x100) != 0)
      {
        LOWORD(v12) = *v3;
        if ((*v3 & 0x40) != 0)
        {
          goto LABEL_74;
        }

        goto LABEL_17;
      }

LABEL_16:
      LOWORD(v12) = *v3;
      goto LABEL_17;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::__append(uint64_t *a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    a1[1] = &v5[24 * (24 * a2 / 0x18)];
  }

  else
  {
    v6 = *a1;
    v7 = &v5[-*a1];
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(a1, v11);
    }

    v12 = 8 * (v7 >> 3) - v7;
    if (v6 != v5)
    {
      v13 = v12;
      do
      {
        v14 = *v6;
        *(v13 + 16) = *(v6 + 2);
        *v13 = v14;
        v13 += 24;
        v6 += 24;
      }

      while (v6 != v5);
      v6 = *a1;
    }

    *a1 = v12;
    a1[1] = 24 * v8 + 24 * (24 * a2 / 0x18);
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

double OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::EndCapLegacyGregoryPatchFactory(OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  *this = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::GetPatchPoints(uint64_t a1, OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a3, int a4, int a5, int a6)
{
  v19 = a3;
  if (a6 < 0)
  {
    v11 = *(this + 3);
    FaceFVarValues = (*(this + 6) + 4 * *(v11 + 8 * a3 + 4));
    v10 = *(v11 + 8 * a3);
  }

  else
  {
    FaceFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceFVarValues(this, a3, a6);
  }

  v17 = FaceFVarValues;
  v18 = v10;
  v12 = 0;
  if ((OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(this, &v17) & 4) != 0)
  {
    v13 = 40;
    v14 = 80;
    do
    {
      v16 = v17[v12] + a5;
      std::vector<int>::push_back[abi:nn200100]((a1 + 32), &v16);
      ++v12;
    }

    while (v12 != 4);
  }

  else
  {
    v13 = 16;
    v14 = 56;
    do
    {
      v16 = v17[v12] + a5;
      std::vector<int>::push_back[abi:nn200100]((a1 + 8), &v16);
      ++v12;
    }

    while (v12 != 4);
  }

  std::vector<int>::push_back[abi:nn200100]((a1 + v14), &v19);
  return *(a1 + v13) - 16;
}

void OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::Finalize(void *a1, int a2, std::vector<int> *this, std::vector<int> *a4, unsigned int *a5)
{
  v8 = a1;
  v9 = a1[7];
  v10 = a1[8];
  v11 = v10 - v9;
  v39 = a1[10];
  v41 = a1[11];
  v12 = (v41 - v39) >> 2;
  v13 = v12 + ((v10 - v9) >> 2);
  v14 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  std::vector<float>::resize(this, 4 * v13);
  if (v13)
  {
    v15 = v8;
    begin = this->__begin_;
    if (v10 == v9)
    {
      v19 = v8;
    }

    else
    {
      v17 = 0;
      v18 = (v11 >> 2) <= 1 ? 1 : v11 >> 2;
      v19 = v15;
      do
      {
        OpenSubdiv::v3_1_1::Far::getQuadOffsets(v14, *(v19[7] + 4 * v17), begin, a5);
        begin += 4;
        ++v17;
      }

      while (v18 != v17);
    }

    v8 = v19;
    if (v41 != v39)
    {
      v20 = 0;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        OpenSubdiv::v3_1_1::Far::getQuadOffsets(v14, *(v19[10] + 4 * v20), begin, a5);
        begin += 4;
        ++v20;
      }

      while (v12 != v20);
    }
  }

  v21 = (2 * a2) | 1;
  std::vector<float>::resize(a4, *(*v8 + 20) * v21);
  v22 = 0;
  v23 = 0;
  v24 = (*(*v8 + 8) >> 2) & 0xF;
  v25 = v21;
  v26 = (v24 + 1);
  v27 = (8 * ((2 * a2) >> 1)) | 4;
  v42 = v24;
  v43 = v8;
  v40 = v26;
  do
  {
    v28 = *(*(*v8 + 40) + 8 * v22);
    v29 = *(v28 + 2);
    if (v22 == v24 && v29 >= 1)
    {
      v45 = v22;
      v30 = 0;
      v31 = v23 * v25;
      v32 = 4 * v31 + 4;
      do
      {
        v33 = a4->__begin_;
        v34 = &a4->__begin_[v31];
        *v34 = 0;
        v35 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(v28, v30, v34 + 1, 0xFFFFFFFF);
        if (v35 >= 1)
        {
          v36 = v35;
          v37 = (v33 + v32);
          do
          {
            *v37++ += v23;
            --v36;
          }

          while (v36);
        }

        if (v35)
        {
          v34[v35 + 1] = v34[v35];
          v38 = ~(v35 >> 1);
        }

        else
        {
          v38 = v35 >> 1;
        }

        *v34 = v38;
        v31 += v25;
        ++v30;
        v29 = *(v28 + 2);
        v32 += v27;
      }

      while (v30 < v29);
      v8 = v43;
      v22 = v45;
      v26 = v40;
      v24 = v42;
    }

    v23 += v29;
    ++v22;
  }

  while (v22 != v26);
}

uint64_t OpenSubdiv::v3_1_1::Far::getQuadOffsets(OpenSubdiv::v3_1_1::Far *this, const OpenSubdiv::v3_1_1::Vtr::internal::Level *a2, uint64_t a3, unsigned int *a4)
{
  v5 = a2;
  if ((a4 & 0x80000000) != 0)
  {
    result = *(this + 6) + 4 * *(*(this + 3) + 4 * ((2 * a2) | 1));
  }

  else
  {
    result = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceFVarValues(this, a2, a4);
  }

  v8 = 0;
  v9 = *(this + 36);
  v10 = *(this + 33);
  v11 = *(this + 42);
  do
  {
    v12 = *(result + 4 * v8);
    v13 = 2 * v12;
    v14 = *(v10 + 8 * v12);
    if (v14 < 1)
    {
LABEL_12:
      OpenSubdiv::v3_1_1::Far::getQuadOffsets();
    }

    v15 = 0;
    v16 = v9 + 4 * *(v10 + 8 * v12 + 4);
    v17 = *(v11 + 4 * v13);
    while (*(v16 + 4 * v15) != v5)
    {
      if (v14 == ++v15)
      {
        goto LABEL_12;
      }
    }

    *(a3 + 4 * v8++) = v15 | (((v15 + 1) % v17) << 8);
  }

  while (v8 != 4);
  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::resizeComponentTopology(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = **(a1 + 40);
  *(v5 + 8) = v4;
  std::vector<float>::resize((v5 + 264), 2 * v4);
  std::vector<float>::resize((v5 + 336), 2 * v4);
  std::vector<float>::resize((v5 + 408), v4);
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize(v5 + 432, v4);
  bzero(*(v5 + 432), 2 * *(v5 + 8));
  v6 = a2[1];
  v7 = **(a1 + 40);
  LODWORD(v7->__begin_) = v6;
  std::vector<float>::resize(v7 + 1, 2 * v6);
  begin = v7[4].__begin_;
  v9 = v7[4].__end_ - begin;
  if (v6 <= v9)
  {
    if (v6 < v9)
    {
      v7[4].__end_ = &begin[v6];
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(&v7[4], v6 - v9);
    begin = v7[4].__begin_;
  }

  bzero(begin, SLODWORD(v7->__begin_));
  if (a2[1] >= 1)
  {
    v10 = 0;
    v11 = *(a2 + 1);
    v12 = **(a1 + 40);
    v13 = *(v12 + 24);
    do
    {
      v14 = *(v11 + 4 * v10);
      *v13 = v14;
      if (v10)
      {
        v15 = *(v13 - 1) + *(v13 - 2);
      }

      else
      {
        v15 = 0;
      }

      v13[1] = v15;
      if (*(v12 + 20) > v14)
      {
        v14 = *(v12 + 20);
      }

      *(v12 + 20) = v14;
      ++v10;
      v13 += 2;
    }

    while (v10 < a2[1]);
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignComponentTopology(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = **(a1 + 40);
    v5 = *(v4 + 24);
    v6 = *(v4 + 48);
    v7 = *(a2 + 88);
    v8 = *(a2 + 16);
    do
    {
      v9 = *(v5 + 8 * v2);
      v10 = *(v5 + 8 * v2 + 4);
      v11 = (v6 + 4 * v10);
      if (v7)
      {
        *v11 = *(v8 + 4 * v3++);
        if (v9 >= 2)
        {
          v12 = v9 + 1;
          v13 = (v6 - 4 + 4 * v10 + 4 * v9);
          v14 = (v8 + 4 * v3);
          do
          {
            v15 = *v14++;
            *v13-- = v15;
            --v12;
            ++v3;
          }

          while (v12 > 2);
        }
      }

      else if (v9 >= 1)
      {
        v16 = (v8 + 4 * v3);
        v3 += v9;
        do
        {
          v17 = *v16++;
          *v11++ = v17;
          --v9;
        }

        while (v9);
      }

      ++v2;
    }

    while (v2 < *(a2 + 4));
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignComponentTags(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24) >= 1)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      if (*(a2 + 40))
      {
        v5 = 0;
        v6 = (v4 + 4);
        do
        {
          Edge = OpenSubdiv::v3_1_1::Vtr::internal::Level::findEdge(**(a1 + 40), *(v6 - 1), *v6);
          if (Edge == -1)
          {
            snprintf(__str, 0x400uLL, "Edge %d specified to be sharp does not exist (%d, %d)", v5, *(v6 - 1), *v6);
            OpenSubdiv::v3_1_1::Far::Warning("%s", v8, __str);
          }

          else
          {
            *(*(**(a1 + 40) + 216) + 4 * Edge) = *(*(a2 + 40) + 4 * v5);
          }

          ++v5;
          v6 += 2;
        }

        while (v5 < *(a2 + 24));
      }
    }
  }

  if (*(a2 + 48) >= 1 && *(a2 + 56) && *(a2 + 64))
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 56) + 4 * v9);
      if ((v10 & 0x80000000) != 0 || (v11 = **(a1 + 40), v10 >= *(v11 + 8)))
      {
        snprintf(__str, 0x400uLL, "Vertex %d specified to be sharp does not exist", *(*(a2 + 56) + 4 * v9));
        OpenSubdiv::v3_1_1::Far::Warning("%s", v12, __str);
      }

      else
      {
        *(*(v11 + 408) + 4 * v10) = *(*(a2 + 64) + 4 * v9);
      }

      ++v9;
    }

    while (v9 < *(a2 + 48));
  }

  if (*(a2 + 72) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(a2 + 80) + 4 * v13);
      v15 = *(**(a1 + 40) + 96);
      *(v15 + v14) |= 1u;
      *(a1 + 8) |= 2u;
      ++v13;
    }

    while (v13 < *(a2 + 72));
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignFaceVaryingTopology(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 92) >= 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::createFVarChannel();
  }

  return 1;
}

BOOL OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::allocate(OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer *this, MTLContext *a2)
{
  v3 = [a2->var0 newBufferWithLength:4 * *(this + 1) * *this options:0];
  v4 = v3;
  *(this + 1) = v3;
  if (v3)
  {
    *(this + 16) = 1;
    [v3 setLabel:@"OSD VertexBuffer"];
  }

  return v4 != 0;
}

void *OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::UpdateData(OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer *this, const float *a2, uint64_t a3, uint64_t a4, MTLContext *a5)
{
  v5 = a4;
  *(this + 16) = 1;
  v8 = ([*(this + 1) contents] + 4 * *this * a3);
  v9 = 4 * *this * v5;

  return memcpy(v8, a2, v9);
}

uint64_t AnimCodec::AnimDecoder::getInfo(uint64_t a1, unint64_t a2, uint64_t *a3, _DWORD *a4, uint64_t a5)
{
  if (a2 < 0x18)
  {
    return 3;
  }

  for (i = 0; i != 4; ++i)
  {
    *a3 = i + 1;
    *(&v26 + i) = *(a1 + i);
  }

  if (v26 != 179426549)
  {
    return 3;
  }

  for (j = 0; j != 4; ++j)
  {
    *a3 = j + 5;
    *(&v26 + j) = *(a1 + 4 + j);
  }

  v7 = 0;
  *a4 = v26;
  *a3 = 9;
  *(a5 + 8) = *(a1 + 8);
  v8 = (*a3)++;
  *(a5 + 9) = *(a1 + v8);
  v9 = *a3;
  v10 = a1 + *a3;
  v11 = *a3 + 1;
  v12 = &v26;
  v13 = 1;
  do
  {
    v14 = v13;
    *a3 = v11 + v7;
    *v12 = *(v10 + v7++);
    v12 = &v25;
    v13 = 0;
  }

  while ((v14 & 1) != 0);
  v15 = 0;
  v16 = v25;
  *(a5 + 10) = v26;
  *(a5 + 11) = v16;
  v17 = -v7;
  do
  {
    *a3 = v9 + v7 + 1 + v15;
    *(&v26 + v15) = *(a1 + v9 + v15 + v7);
    ++v15;
    --v17;
  }

  while (v15 != 4);
  v18 = 0;
  *a5 = v26;
  v19 = -v17;
  do
  {
    *a3 = v9 + v19 + 1;
    v20 = *(a1 + v9 + v19++);
    *(&v26 + v18++) = v20;
  }

  while (v18 != 4);
  *(a5 + 4) = v26;
  v21 = v9 + v19;
  *a3 = v21 + 1;
  v22 = *(v21 + a1);
  *a3 = v21 + 2;
  v23 = *(v21 + a1 + 1);
  *a3 = v21 + 4;
  *(a5 + 12) = v22;
  *(a5 + 16) = v23;
  if (v21 != 20)
  {
    AnimCodec::AnimDecoder::getInfo();
  }

  return 0;
}

uint64_t AnimCodec::AnimDecoder::decompress(AnimCodec::AnimDecoder *this, const unsigned __int8 *a2, unint64_t a3, AnimCodec *a4, int *a5, uint64_t a6, const int *a7, int a8, unint64_t a9, int *a10)
{
  v28[0] = a2;
  v28[1] = a3;
  v29 = 0;
  v27 = 0;
  Info = AnimCodec::AnimDecoder::getInfo(a2, a3, &v29, &v27, &v30);
  if (!Info)
  {
    if (v32 == 1 && v33 == 0)
    {
      Info = 2;
      if (a6)
      {
        if (a7)
        {
          v18 = v31;
          if (v31)
          {
            if (v30 <= a3 && (v19 = v27, v19 == AnimCodec::ComputeCRC32(v28[0] + 8, (v30 - 8))))
            {
              v26 = 0;
              memset(v25, 0, sizeof(v25));
              memset(&__p, 0, sizeof(__p));
              v21 = AnimCodec::ComputeAdjacencyInfo(a4, a5, a7, a8, a9, v25, v20);
              if (!v21)
              {
                v21 = AnimCodec::ComputeTraversalOrder(v25, &__p);
                if (!v21)
                {
                  v21 = AnimCodec::AnimDecoder::decompress(v21, v25, &__p, v22, a6, v18, v28, a10);
                }
              }

              Info = v21;
              if (__p.__begin_)
              {
                __p.__end_ = __p.__begin_;
                operator delete(__p.__begin_);
              }

              vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(v25);
            }

            else
            {
              return 3;
            }
          }
        }
      }
    }

    else
    {
      return 4;
    }
  }

  return Info;
}

uint64_t AnimCodec::AnimDecoder::decompress(uint64_t a1, AnimCodec::StaticAdjacencyInformation *a2, void *a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a7 + 16);
  v13 = *(a7 + 8) - v12;
  v14 = *a7 + v12;
  v81 = v13;
  v82 = v14;
  AnimCodec::ArithmeticDecoder::start(&v81);
  v63 = a2;
  v15 = *(a2 + 4) - *(a2 + 3);
  v16 = v15 >> 2;
  if ((v15 >> 2) < 1)
  {
    return 2;
  }

  v80 = 0x8000;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  __p = 0;
  v69 = 0;
  v70 = 0;
  std::vector<AnimCodec::ArithmeticContext>::resize(&v77, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&v74, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&v71, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&__p, 31 * a5);
  memset(&v67, 0, sizeof(v67));
  memset(&v66, 0, sizeof(v66));
  memset(&v65, 0, sizeof(v65));
  std::vector<float>::resize(&v67, a5);
  std::vector<float>::resize(&v66, a5);
  std::vector<float>::resize(&v65, a5);
  if (a6 < 1)
  {
    v56 = 0;
    goto LABEL_47;
  }

  v17 = 0;
  v58 = a6;
  v61 = (v15 >> 2) & 0x7FFFFFFF;
  v62 = 4 * a5;
  v18 = a3;
  do
  {
    v59 = v17;
    v19 = 0;
    v64 = 1;
    do
    {
      v20 = *(*v18 + 4 * v19);
      if (a5 >= 1)
      {
        bzero(v66.__begin_, v62);
      }

      started = AnimCodec::StaticAdjacencyInformation::neighborsStartIndex(v63, v20);
      v22 = AnimCodec::StaticAdjacencyInformation::neighborsEndIndex(v63, v20);
      if (v22 > started)
      {
        v23 = 0;
        v24 = *(v63 + 6);
        begin = v66.__begin_;
        v26 = started;
        while (1)
        {
          v27 = *(v24 + 4 * v26);
          if (v27 < 0)
          {
            break;
          }

          if (v27 >= v16)
          {
            v56 = 2;
            goto LABEL_47;
          }

          if (a5 >= 1)
          {
            v28 = (a8 + 4 * (v27 * a5));
            v29 = a5;
            v30 = begin;
            do
            {
              v31 = *v28++;
              *v30++ += v31;
              --v29;
            }

            while (v29);
          }

          ++v23;
          ++v26;
          if (v23 == v22 - started)
          {
            v23 = v22 - started;
            break;
          }
        }

        if (v23 < 2)
        {
          goto LABEL_20;
        }

        if (a5 < 1)
        {
          v55 = AnimCodec::ArithmeticDecoder::decode(&v81, &v80) != (v64 & 1);
          goto LABEL_40;
        }

        v32 = v66.__begin_;
        v33 = a5;
        do
        {
          *v32 = (*v32 + (v23 >> 1)) / v23;
          ++v32;
          --v33;
        }

        while (v33);
      }

LABEL_20:
      v34 = AnimCodec::ArithmeticDecoder::decode(&v81, &v80);
      v35 = v64 & 1;
      v36 = v34 == v35;
      v37 = v34 != v35;
      if (v36)
      {
        if (a5 < 1)
        {
          v64 = 0;
          goto LABEL_41;
        }

        v64 = v37;
        v38 = 0;
        do
        {
          if (AnimCodec::ArithmeticDecoder::decode(&v81, v71 + v38))
          {
            v39 = AnimCodec::ArithmeticDecoder::decode(&v81, v77 + v38);
            v40 = AnimCodec::ArithmeticDecoder::decode(&v81, __p + 31 * v38);
            v41 = v40 + 2 * AnimCodec::ArithmeticDecoder::decode(&v81, __p + 31 * v38 + v40 + 1);
            v42 = v41 + 4 * AnimCodec::ArithmeticDecoder::decode(&v81, __p + 31 * v38 + v41 + 3);
            v43 = v42 + 8 * AnimCodec::ArithmeticDecoder::decode(&v81, __p + 31 * v38 + v42 + 7);
            v44 = v43 + 16 * AnimCodec::ArithmeticDecoder::decode(&v81, __p + 31 * v38 + v43 + 15);
            if (v44 > 30)
            {
              v45 = AnimCodec::ArithmeticDecoder::decodeExpGolomb(&v81, 6, v74 + v38) + 32;
            }

            else
            {
              v45 = v44 + 1;
            }

            if (!v39)
            {
              v45 = -v45;
            }
          }

          else
          {
            v45 = 0;
          }

          v65.__begin_[v38++] = v45;
        }

        while (v38 != a5);
        v18 = a3;
        goto LABEL_34;
      }

      if (a5 >= 1)
      {
        v64 = v37;
        bzero(v65.__begin_, v62);
LABEL_34:
        v46 = v66.__begin_;
        v47 = v65.__begin_;
        v48 = v67.__begin_;
        v49 = 4 * v20 * a5;
        v50 = a5;
        do
        {
          v52 = *v46++;
          v51 = v52;
          v53 = *v47++;
          v54 = v53 + v51;
          *v48++ = v54;
          *(a8 + v49) = v54;
          v49 += 4;
          --v50;
        }

        while (v50);
        goto LABEL_41;
      }

      v55 = 1;
LABEL_40:
      v64 = v55;
LABEL_41:
      ++v19;
    }

    while (v19 != v61);
    v56 = 0;
    v17 = v59 + 1;
    a8 += 4 * v16 * a5;
  }

  while (v59 + 1 != v58);
LABEL_47:
  if (v65.__begin_)
  {
    v65.__end_ = v65.__begin_;
    operator delete(v65.__begin_);
  }

  if (v66.__begin_)
  {
    v66.__end_ = v66.__begin_;
    operator delete(v66.__begin_);
  }

  if (v67.__begin_)
  {
    v67.__end_ = v67.__begin_;
    operator delete(v67.__begin_);
  }

  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  return v56;
}

void std::vector<AnimCodec::ArithmeticContext>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<AnimCodec::ArithmeticContext>::__append(a1, a2 - v2);
  }
}

uint64_t AnimCodec::StaticAdjacencyInformation::neighborsStartIndex(AnimCodec::StaticAdjacencyInformation *this, int a2)
{
  if (((*(this + 4) - *(this + 3)) >> 2) <= a2)
  {
    AnimCodec::StaticAdjacencyInformation::neighborsStartIndex();
  }

  return *(*this + 4 * a2);
}

uint64_t AnimCodec::StaticAdjacencyInformation::neighborsEndIndex(AnimCodec::StaticAdjacencyInformation *this, int a2)
{
  v2 = *(this + 3);
  if (((*(this + 4) - v2) >> 2) <= a2)
  {
    AnimCodec::StaticAdjacencyInformation::neighborsEndIndex();
  }

  return (*(v2 + 4 * a2) + *(*this + 4 * a2));
}

BOOL AnimCodec::ArithmeticDecoder::decode(unsigned int *a1, _WORD *a2)
{
  v2 = a1[7];
  v3 = a1[8];
  if (v2 > 0x40000000)
  {
    v10 = a1[7];
  }

  else
  {
    v4 = a1[10];
    do
    {
      v3 *= 2;
      a1[10] = --v4;
      if (!v4)
      {
        v5 = *(a1 + 2);
        *(a1 + 2) = v5 + 1;
        v6 = *a1;
        if (v5 + 1 >= v6)
        {
          v7 = 65280;
        }

        else
        {
          v7 = *(*(a1 + 1) + v5 + 1) << 8;
        }

        v8 = v5 + 2;
        *(a1 + 2) = v8;
        if (v8 >= v6)
        {
          v9 = 255;
        }

        else
        {
          v9 = *(*(a1 + 1) + v8);
        }

        v3 |= v7 | v9;
        v4 = 16;
        a1[10] = 16;
      }

      v10 = 2 * v2;
      v11 = v2 >= 0x20000001;
      v2 *= 2;
    }

    while (!v11);
  }

  v12 = *a2;
  v13 = (HIWORD(v10) * v12) & 0xFFFF0000;
  v14 = (v12 >> 7) & 0x1FE;
  v15 = v10 - v13;
  v16 = v3 >= v13;
  if (v3 >= v13)
  {
    ++v14;
  }

  *a2 = *(a1 + v14 + 24) + v12;
  if (v3 < v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  if (v3 < v13)
  {
    v13 = 0;
  }

  a1[7] = v17;
  a1[8] = v3 - v13;
  return v16;
}

uint64_t AnimCodec::ArithmeticDecoder::decodeExpGolomb(unsigned int *a1, int a2, _WORD *a3)
{
  v6 = 0;
  if (AnimCodec::ArithmeticDecoder::decode(a1, a3))
  {
    v7 = a2;
    do
    {
      a2 = v7 + 1;
      v6 |= 1 << v7;
      v8 = AnimCodec::ArithmeticDecoder::decode(a1, a3);
      v7 = a2;
    }

    while (v8);
  }

  v9 = 0;
  if (a2)
  {
    v10 = a2 - 1;
    do
    {
      v12 = 0x8000;
      v9 |= AnimCodec::ArithmeticDecoder::decode(a1, &v12) << v10--;
    }

    while (v10 != -1);
  }

  return (v9 + v6);
}

uint64_t AnimCodec::ComputeAdjacencyInfo(AnimCodec *this, int *a2, const int *a3, int a4, int a5, std::vector<int> *a6, AnimCodec::StaticAdjacencyInformation *a7)
{
  result = 2;
  if (this && a2 && a3 >= 1)
  {
    AnimCodec::StaticAdjacencyInformation::resize(a6, a3);
    if (a5 >= 1)
    {
      v12 = a5;
      v13 = a2;
      do
      {
        v14 = *v13++;
        AnimCodec::StaticAdjacencyInformation::incrementNeighborCount(a6, v14, 2);
        --v12;
      }

      while (v12);
    }

    AnimCodec::StaticAdjacencyInformation::updateShift(a6);
    if (a4 < 1)
    {
      return 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v27 = a2 - 1;
      v28 = a2;
      v26 = a2 + 1;
      v17 = a4;
      while (1)
      {
        v18 = *(this + v15);
        v19 = (v18 - 1);
        if (v18 < 1)
        {
          break;
        }

        if (v18 == 1)
        {
          v20 = v16;
        }

        else
        {
          v20 = (v18 + v16);
          if (v20 > a5)
          {
            return 2;
          }

          v21 = &v26[v16];
          do
          {
            v22 = *(v21 - 1);
            v23 = *v21;
            if (v22 != *v21)
            {
              AnimCodec::StaticAdjacencyInformation::insertNeighbor(a6, *(v21 - 1), *v21);
              AnimCodec::StaticAdjacencyInformation::insertNeighbor(a6, v23, v22);
            }

            ++v21;
            --v19;
          }

          while (v19);
          v24 = v28[v16];
          v25 = v27[v20];
          if (v24 != v25)
          {
            AnimCodec::StaticAdjacencyInformation::insertNeighbor(a6, v28[v16], v27[v20]);
            AnimCodec::StaticAdjacencyInformation::insertNeighbor(a6, v25, v24);
          }
        }

        ++v15;
        v16 = v20;
        if (v15 == v17)
        {
          return 0;
        }
      }

      return 2;
    }
  }

  return result;
}

uint64_t AnimCodec::ComputeTraversalOrder(AnimCodec::StaticAdjacencyInformation *a1, std::vector<int> *this)
{
  v2 = *(a1 + 4) - *(a1 + 3);
  v3 = v2 >> 2;
  if ((v2 >> 2) < 1)
  {
    return 2;
  }

  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  v6 = (v2 >> 2) & 0x7FFFFFFF;
  std::vector<float>::resize(this, v6);
  __p = 0;
  v36 = 0;
  v37 = 0;
  std::vector<BOOL>::resize(&__p, v6, 0);
  if (v36 >= 1)
  {
    v40 = __p;
    v41 = 0;
    std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(&v40, v36);
  }

  v7 = 0;
  v8 = 0;
  LODWORD(v40) = 0;
  while (1)
  {
    v9 = v8 >> 6;
    v10 = *(__p + v9);
    if ((v10 & (1 << v8)) != 0)
    {
      *(__p + v9) = v10 & ~(1 << v8);
      this->__begin_[v7] = v8;
      std::deque<int>::push_back(v38, &v40);
      v11 = *(&v39 + 1);
      ++v7;
      if (*(&v39 + 1))
      {
        break;
      }
    }

LABEL_19:
    v8 = v40 + 1;
    LODWORD(v40) = v8;
    if (v8 >= v3)
    {
      v20 = 0;
      do
      {
        v21 = this->__begin_[v20];
        *(__p + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        started = AnimCodec::StaticAdjacencyInformation::neighborsStartIndex(a1, v21);
        v23 = AnimCodec::StaticAdjacencyInformation::neighborsEndIndex(a1, v21);
        v24 = *(a1 + 6);
        if (started >= v23)
        {
          v25 = started;
          v26 = v23;
        }

        else
        {
          v25 = started;
          v26 = v23;
          v27 = __p;
          v28 = (v24 + 4 * started);
          v29 = v23 - started;
          do
          {
            if (((*&v27[(*v28 >> 3) & 0x1FFFFFFFFFFFFFF8] >> *v28) & 1) == 0)
            {
              *v28 = -1;
            }

            ++v28;
            --v29;
          }

          while (v29);
        }

        v30 = 126 - 2 * __clz((4 * v26 - 4 * v25) >> 2);
        if (4 * v26 == 4 * v25)
        {
          v31 = 0;
        }

        else
        {
          v31 = v30;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>((v24 + 4 * v25), (v24 + 4 * v26), &v40, v31, 1);
        ++v20;
      }

      while (v20 != v6);
      v32 = 2 * (v7 != v3);
      goto LABEL_34;
    }
  }

  while (1)
  {
    v12 = *(*(*(&v38[0] + 1) + ((v39 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v39 & 0x3FF));
    *&v39 = v39 + 1;
    *(&v39 + 1) = v11 - 1;
    if (v39 >= 0x800)
    {
      operator delete(**(&v38[0] + 1));
      *(&v38[0] + 1) += 8;
      *&v39 = v39 - 1024;
    }

    v13 = AnimCodec::StaticAdjacencyInformation::neighborsStartIndex(a1, v12);
    v14 = AnimCodec::StaticAdjacencyInformation::neighborsEndIndex(a1, v12);
    v15 = v14 - v13;
    if (v14 > v13)
    {
      break;
    }

LABEL_18:
    v11 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_19;
    }
  }

  v16 = 4 * v13;
  while (1)
  {
    v17 = *(*(a1 + 6) + v16);
    v34 = v17;
    if (v17 >= v3 || v17 == v12)
    {
      break;
    }

    v19 = *(__p + (v17 >> 6));
    if ((v19 & (1 << v17)) != 0)
    {
      *(__p + (v17 >> 6)) = v19 & ~(1 << v17);
      this->__begin_[v7] = v17;
      std::deque<int>::push_back(v38, &v34);
      ++v7;
    }

    v16 += 4;
    if (!--v15)
    {
      goto LABEL_18;
    }
  }

  v32 = 2;
LABEL_34:
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<int>::~deque[abi:nn200100](v38);
  return v32;
}

void AnimCodec::StaticAdjacencyInformation::resize(std::vector<int> *this, int a2)
{
  std::vector<float>::resize(this, a2 + 1);
  std::vector<float>::resize(this + 1, a2);
  v4 = this->__end_ - this->__begin_;
  if (v4 >= 1)
  {
    bzero(this->__begin_, v4);
  }

  begin = this[1].__begin_;
  v6 = this[1].__end_ - begin;
  if (v6 >= 1)
  {

    bzero(begin, v6);
  }
}

void *AnimCodec::StaticAdjacencyInformation::incrementNeighborCount(void *this, int a2, int a3)
{
  if (((this[4] - this[3]) >> 2) <= a2)
  {
    AnimCodec::StaticAdjacencyInformation::incrementNeighborCount();
  }

  *(*this + 4 * a2 + 4) += a3;
  return this;
}

void AnimCodec::StaticAdjacencyInformation::updateShift(std::vector<int> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  v3 = end - this->__begin_;
  if ((v3 >> 2) >= 2)
  {
    v4 = (v3 >> 2) & 0x7FFFFFFF;
    v7 = *begin;
    v5 = begin + 1;
    v6 = v7;
    v8 = v4 - 1;
    do
    {
      v6 += *v5;
      *v5++ = v6;
      --v8;
    }

    while (v8);
  }

  std::vector<float>::resize(this + 2, *(end - 1));
}

AnimCodec::StaticAdjacencyInformation *AnimCodec::StaticAdjacencyInformation::insertNeighbor(AnimCodec::StaticAdjacencyInformation *this, int a2, int a3)
{
  v3 = *(*(this + 3) + 4 * a2);
  if (v3 < 1)
  {
    return AnimCodec::StaticAdjacencyInformation::addNeighbor(this, a2, a3);
  }

  v4 = (*(this + 6) + 4 * *(*this + 4 * a2));
  while (1)
  {
    v5 = *v4++;
    if (v5 == a3)
    {
      break;
    }

    if (!--v3)
    {
      return AnimCodec::StaticAdjacencyInformation::addNeighbor(this, a2, a3);
    }
  }

  return this;
}

uint64_t AnimCodec::StaticAdjacencyInformation::addNeighbor(AnimCodec::StaticAdjacencyInformation *this, int a2, int a3)
{
  v6 = *(*(this + 3) + 4 * a2);
  result = AnimCodec::StaticAdjacencyInformation::maxNeighborCount(this, a2);
  if (v6 >= result)
  {
    AnimCodec::StaticAdjacencyInformation::addNeighbor();
  }

  v8 = *(*this + 4 * a2);
  v9 = *(this + 3);
  v10 = *(v9 + 4 * a2);
  *(v9 + 4 * a2) = v10 + 1;
  *(*(this + 6) + 4 * (v10 + v8)) = a3;
  return result;
}

uint64_t AnimCodec::StaticAdjacencyInformation::maxNeighborCount(AnimCodec::StaticAdjacencyInformation *this, int a2)
{
  if (((*(this + 4) - *(this + 3)) >> 2) <= a2)
  {
    AnimCodec::StaticAdjacencyInformation::maxNeighborCount();
  }

  return (*(*this + 4 * a2 + 4) - *(*this + 4 * a2));
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:nn200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v20, v5);
}

unint64_t *std::__copy_aligned[abi:nn200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void *std::deque<int>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<int>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<int>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<int *>::emplace_back<int *&>(a1, &v10);
}

void *std::__split_buffer<int *>::emplace_back<int *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<int *>::emplace_front<int *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<int *>::emplace_back<int *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<int *>::emplace_front<int *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

int *std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v59 = v9[1];
          v60 = *(a2 - 1);
          if (v59 <= v60)
          {
            v61 = *(a2 - 1);
          }

          else
          {
            v61 = v9[1];
          }

          if (v59 >= v60)
          {
            v59 = *(a2 - 1);
          }

          *(a2 - 1) = v59;
          v9[1] = v61;
          v62 = *(a2 - 1);
          if (v62 <= *v9)
          {
            v63 = *v9;
          }

          else
          {
            v63 = *(a2 - 1);
          }

          if (v62 >= *v9)
          {
            v62 = *v9;
          }

          *(a2 - 1) = v62;
          v65 = *v9;
          v64 = v9[1];
          if (v63 <= v64)
          {
            v65 = v9[1];
          }

          if (v63 < v64)
          {
            v64 = v63;
          }

          *v9 = v65;
          v9[1] = v64;
          return result;
        case 4:
          v89 = v9[1];
          v88 = v9[2];
          if (*v9 <= v88)
          {
            v90 = v9[2];
          }

          else
          {
            v90 = *v9;
          }

          if (*v9 < v88)
          {
            v88 = *v9;
          }

          v9[2] = v88;
          *v9 = v90;
          v91 = *(a2 - 1);
          if (v89 <= v91)
          {
            v92 = *(a2 - 1);
          }

          else
          {
            v92 = v89;
          }

          if (v89 < v91)
          {
            v91 = v89;
          }

          *(a2 - 1) = v91;
          v93 = *v9;
          if (*v9 <= v92)
          {
            v94 = v92;
          }

          else
          {
            v94 = *v9;
          }

          if (v93 >= v92)
          {
            v93 = v92;
          }

          *v9 = v94;
          v9[1] = v93;
          v95 = v9[2];
          v96 = *(a2 - 1);
          if (v95 <= v96)
          {
            v97 = *(a2 - 1);
          }

          else
          {
            v97 = v9[2];
          }

          if (v95 >= v96)
          {
            v95 = *(a2 - 1);
          }

          *(a2 - 1) = v95;
          v98 = v9[1];
          if (v98 <= v97)
          {
            v99 = v97;
          }

          else
          {
            v99 = v9[1];
          }

          if (v98 >= v97)
          {
            v98 = v97;
          }

          v9[1] = v99;
          v9[2] = v98;
          return result;
        case 5:
          v66 = *v9;
          v67 = v9[1];
          if (*v9 <= v67)
          {
            v68 = v9[1];
          }

          else
          {
            v68 = *v9;
          }

          if (v66 >= v67)
          {
            v66 = v9[1];
          }

          *v9 = v68;
          v9[1] = v66;
          v69 = v9[3];
          v70 = *(a2 - 1);
          if (v69 <= v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v9[3];
          }

          if (v69 >= v70)
          {
            v69 = *(a2 - 1);
          }

          *(a2 - 1) = v69;
          v9[3] = v71;
          v72 = *(a2 - 1);
          v73 = v9[2];
          if (v72 <= v73)
          {
            v74 = v9[2];
          }

          else
          {
            v74 = *(a2 - 1);
          }

          if (v72 >= v73)
          {
            v72 = v9[2];
          }

          *(a2 - 1) = v72;
          v76 = v9[2];
          v75 = v9[3];
          v77 = v9[1];
          if (v74 <= v75)
          {
            v76 = v9[3];
          }

          if (v74 < v75)
          {
            v75 = v74;
          }

          v9[2] = v76;
          v9[3] = v75;
          v78 = *(a2 - 1);
          if (v77 <= v78)
          {
            v79 = *(a2 - 1);
          }

          else
          {
            v79 = v77;
          }

          if (v77 < v78)
          {
            v78 = v77;
          }

          *(a2 - 1) = v78;
          v80 = *v9;
          v82 = v9[2];
          v81 = v9[3];
          if (v81 <= *v9)
          {
            v83 = *v9;
          }

          else
          {
            v83 = v9[3];
          }

          if (v81 >= v80)
          {
            v81 = *v9;
          }

          if (v83 <= v82)
          {
            v80 = v9[2];
          }

          if (v83 < v82)
          {
            v82 = v83;
          }

          if (v81 <= v79)
          {
            v84 = v79;
          }

          else
          {
            v84 = v81;
          }

          if (v81 >= v79)
          {
            v81 = v79;
          }

          if (v84 <= v82)
          {
            v79 = v82;
          }

          *v9 = v80;
          v9[1] = v79;
          if (v84 >= v82)
          {
            v85 = v82;
          }

          else
          {
            v85 = v84;
          }

          v9[2] = v85;
          v9[3] = v81;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v86 = *(a2 - 1);
        v87 = *v9;
        if (v86 > *v9)
        {
          *v9 = v86;
          *(a2 - 1) = v87;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v48 = *v9;
      if (*v9 <= v14)
      {
        v49 = *(a2 - 1);
      }

      else
      {
        v49 = *v9;
      }

      if (v48 >= v14)
      {
        v48 = *(a2 - 1);
      }

      *(a2 - 1) = v48;
      *v9 = v49;
      v50 = *(a2 - 1);
      v51 = v9[v13];
      if (v50 <= v51)
      {
        v52 = v9[v13];
      }

      else
      {
        v52 = *(a2 - 1);
      }

      if (v50 >= v51)
      {
        v50 = v9[v13];
      }

      *(a2 - 1) = v50;
      v53 = *v9;
      v54 = v52 <= *v9;
      if (v52 > *v9)
      {
        v53 = v9[v13];
      }

      v9[v13] = v53;
      v55 = *v9;
      if (v54)
      {
        v55 = v52;
      }

      *v9 = v55;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 <= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 <= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 >= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 <= *v15;
      if (v19 > *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v22 = *v15;
      if (v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v23 = *(v15 - 1);
      v24 = *(a2 - 2);
      if (v23 <= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = *(v15 - 1);
      }

      if (v23 >= v24)
      {
        v23 = *(a2 - 2);
      }

      *(a2 - 2) = v23;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 <= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 >= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 <= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 >= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 <= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 >= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (v39)
      {
        v40 = v37;
      }

      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = *v15;
      }

      if (v41 < v40)
      {
        v40 = *v15;
      }

      v43 = *(v15 - 1);
      if (v40 <= v43)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= v43)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v43 <= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v43;
      }

      if (v43 <= v42)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }

      *(v15 - 1) = v45;
      *v15 = v46;
      v47 = *v9;
      *v9 = v46;
      *v15 = v47;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
      v9 = result;
      goto LABEL_99;
    }

LABEL_94:
    v56 = std::__bitset_partition[abi:nn200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
    if ((v57 & 1) == 0)
    {
      goto LABEL_97;
    }

    v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v9, v56);
    v9 = v56 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v56 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v58)
    {
LABEL_97:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v8, v56, a3, -v11, a5 & 1);
      v9 = v56 + 1;
LABEL_99:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v100 = v9 + 1;
  v102 = v9 == a2 || v100 == a2;
  if (a5)
  {
    if (!v102)
    {
      v103 = 0;
      v104 = v9;
      do
      {
        v106 = *v104;
        v105 = v104[1];
        v104 = v100;
        if (v105 > v106)
        {
          v107 = v103;
          while (1)
          {
            *(v9 + v107 + 4) = v106;
            if (!v107)
            {
              break;
            }

            v106 = *(v9 + v107 - 4);
            v107 -= 4;
            if (v105 <= v106)
            {
              v108 = (v9 + v107 + 4);
              goto LABEL_204;
            }
          }

          v108 = v9;
LABEL_204:
          *v108 = v105;
        }

        v100 = v104 + 1;
        v103 += 4;
      }

      while (v104 + 1 != a2);
    }
  }

  else if (!v102)
  {
    do
    {
      v110 = *v8;
      v109 = v8[1];
      v8 = v100;
      if (v109 > v110)
      {
        do
        {
          *v100 = v110;
          v110 = *(v100 - 2);
          --v100;
        }

        while (v109 > v110);
        *v100 = v109;
      }

      v100 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

signed int *std::__bitset_partition[abi:nn200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(signed int *a1, signed int *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s32(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_21C27F640;
      v18 = xmmword_21C27F630;
      v19 = 0uLL;
      do
      {
        v20 = vcgeq_s32(v13, *(v7 + v12));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_21C27F640;
    v27 = xmmword_21C27F630;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_s32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > v2) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= v2) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = v2;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= v19)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}