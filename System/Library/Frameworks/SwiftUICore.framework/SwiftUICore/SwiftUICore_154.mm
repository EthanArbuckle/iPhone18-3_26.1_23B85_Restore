uint64_t CornerMaskingConfiguration.replacing(corner:with:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[4];
  v8 = *(a2 + 40);
  v9 = a2[6];
  v10 = *v3;
  v11 = *(a2 + 1);
  v12 = *(v3 + 1);
  v13 = v3[4];
  v14 = v3[6];
  v15 = v3[7];
  v16 = *(v3 + 64);
  v17 = *(v3 + 9);
  v18 = v3[11];
  v19 = *(v3 + 96);
  v20 = v3[13];
  v21 = v3[14];
  v22 = *(v3 + 120);
  v23 = *(v3 + 8);
  v24 = v3[18];
  v25 = *(v3 + 152);
  v26 = v3[20];
  result = v3[21];
  v28 = *(v3 + 176);
  v29 = *(v3 + 23);
  v30 = v3[25];
  v31 = *(v3 + 208);
  v32 = v3[27];
  if (v4 > 1)
  {
    v40[0] = *(v3 + 8);
    v39[0] = *(v3 + 40);
    v36[0] = *(v3 + 120);
    if (v4 == 2)
    {
      v38[0] = v6;
      v16 = v6;
      v37[0] = v8;
      v19 = v8;
      v6 = v40[0];
      v35[0] = *(v3 + 152);
      v8 = v39[0];
      v15 = v5;
      v34[0] = *(v3 + 176);
      v18 = v7;
      v20 = v9;
      v17 = v11;
      v33[0] = *(v3 + 208);
    }

    else
    {
      v34[0] = v6;
      v28 = v6;
      v33[0] = v8;
      v31 = v8;
      v6 = v40[0];
      v35[0] = *(v3 + 152);
      v8 = v39[0];
      result = v5;
      v38[0] = *(v3 + 64);
      v30 = v7;
      v32 = v9;
      v29 = v11;
      v37[0] = *(v3 + 96);
    }
  }

  else
  {
    if (v4)
    {
      v40[0] = *(v3 + 8);
      v39[0] = *(v3 + 40);
      v36[0] = v6;
      v35[0] = v8;
      v22 = v6;
      v38[0] = *(v3 + 64);
      v25 = v8;
      v6 = v40[0];
      v37[0] = *(v3 + 96);
      v8 = v39[0];
      v21 = v5;
      v34[0] = *(v3 + 176);
      v24 = v7;
      v26 = v9;
      v23 = v11;
    }

    else
    {
      v40[0] = v6;
      v39[0] = v8;
      v36[0] = *(v3 + 120);
      v35[0] = *(v3 + 152);
      v38[0] = *(v3 + 64);
      v37[0] = *(v3 + 96);
      v10 = v5;
      v34[0] = *(v3 + 176);
      v13 = v7;
      v14 = v9;
      v12 = v11;
    }

    v33[0] = *(v3 + 208);
  }

  *a3 = v10;
  *(a3 + 8) = v6;
  *(a3 + 9) = *v40;
  *(a3 + 12) = *&v40[3];
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v8;
  *(a3 + 41) = *v39;
  *(a3 + 44) = *&v39[3];
  *(a3 + 48) = v14;
  *(a3 + 56) = v15;
  *(a3 + 64) = v16;
  *(a3 + 68) = *&v38[3];
  *(a3 + 65) = *v38;
  *(a3 + 72) = v17;
  *(a3 + 88) = v18;
  *(a3 + 96) = v19;
  *(a3 + 100) = *&v37[3];
  *(a3 + 97) = *v37;
  *(a3 + 104) = v20;
  *(a3 + 112) = v21;
  *(a3 + 120) = v22;
  *(a3 + 121) = *v36;
  *(a3 + 124) = *&v36[3];
  *(a3 + 128) = v23;
  *(a3 + 144) = v24;
  *(a3 + 152) = v25;
  *(a3 + 156) = *&v35[3];
  *(a3 + 153) = *v35;
  *(a3 + 160) = v26;
  *(a3 + 168) = result;
  *(a3 + 176) = v28;
  *(a3 + 180) = *&v34[3];
  *(a3 + 177) = *v34;
  *(a3 + 184) = v29;
  *(a3 + 200) = v30;
  *(a3 + 208) = v31;
  *(a3 + 212) = *&v33[3];
  *(a3 + 209) = *v33;
  *(a3 + 216) = v32;
  return result;
}

double CornerMaskingConfiguration.CornerStyle.animatableData.getter()
{
  v1 = v0[2];
  v2 = *(v0 + 6);
  v7 = *(v0 + 3);
  v8 = v1;
  v6 = v2;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v3 = MEMORY[0x1E69E7DE0];
  v4 = *(*(MEMORY[0x1E69E7DE0] - 8) + 8);
  v4(&v6, MEMORY[0x1E69E7DE0]);
  v4(&v7, v3);
  v4(&v8, v3);
  return v1;
}

void CornerMaskingConfiguration.CornerStyle.animatableData.setter(double a1, double a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 48) = a3;
  v4 = a1;
  if (a2 == 1.0)
  {
    v4 = 0.0;
  }

  *v3 = v4;
  *(v3 + 8) = a2 == 1.0;
  *(v3 + 32) = a3;
  *(v3 + 40) = 0;
}

void (*CornerMaskingConfiguration.animatableData.modify(uint64_t *a1))(_OWORD **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x208uLL);
  }

  *a1 = v3;
  *(v3 + 512) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  *(v3 + 64) = v1[4];
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[9];
  *(v3 + 128) = v1[8];
  *(v3 + 144) = v10;
  *(v3 + 96) = v8;
  *(v3 + 112) = v9;
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[13];
  *(v3 + 192) = v1[12];
  *(v3 + 208) = v13;
  *(v3 + 160) = v11;
  *(v3 + 176) = v12;
  CornerMaskingConfiguration.animatableData.getter((v3 + 416));
  return CornerMaskingConfiguration.animatableData.modify;
}

void CornerMaskingConfiguration.animatableData.modify(_OWORD **a1, char a2)
{
  v2 = *a1;
  v3 = 20;
  if (a2)
  {
    v3 = 14;
  }

  v4 = &v2[v3];
  v5 = v2[29];
  v4[2] = v2[28];
  v4[3] = v5;
  v6 = v2[31];
  v4[4] = v2[30];
  v4[5] = v6;
  v7 = v2[27];
  *v4 = v2[26];
  v4[1] = v7;
  CornerMaskingConfiguration.animatableData.setter(&v2[v3]);

  free(v2);
}

Swift::Int CornerMaskingConfiguration.CornerStyle.Representation.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x193AC11E0](v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CornerMaskingConfiguration.CornerStyle.Representation(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CornerMaskingConfiguration.CornerStyle.Representation()
{
  if (v0[1])
  {
    return MEMORY[0x193AC11A0](1);
  }

  v2 = *v0;
  MEMORY[0x193AC11A0](0);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x193AC11E0](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CornerMaskingConfiguration.CornerStyle.Representation()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x193AC11E0](v3);
  }

  return Hasher._finalize()();
}

void static CornerMaskingConfiguration.CornerStyle.capsule.getter(uint64_t a1@<X8>)
{
  *a1 = 0x7FF0000000000000;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0x7FF0000000000000;
  *(a1 + 40) = 0;
}

uint64_t key path getter for CornerMaskingConfiguration.CornerStyle.animatableData : CornerMaskingConfiguration.CornerStyle@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v5 = a1[6];
  v10 = a1[3];
  v4 = v10;
  v11 = v3;
  v9 = v5;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v6 = MEMORY[0x1E69E7DE0];
  v7 = *(*(MEMORY[0x1E69E7DE0] - 8) + 8);
  v7(&v9, MEMORY[0x1E69E7DE0]);
  v7(&v10, v6);
  result = (v7)(&v11, v6);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void (*CornerMaskingConfiguration.CornerStyle.animatableData.modify(void *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[6] = v1;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v3[3] = v5;
  v8 = v3 + 3;
  v3[4] = v6;
  v9 = v3 + 4;
  v3[5] = v7;
  v10 = v3 + 5;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v11 = MEMORY[0x1E69E7DE0];
  v12 = *(*(MEMORY[0x1E69E7DE0] - 8) + 8);
  v12(v10, MEMORY[0x1E69E7DE0]);
  v12(v9, v11);
  v12(v8, v11);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  return CornerMaskingConfiguration.CornerStyle.animatableData.modify;
}

void CornerMaskingConfiguration.CornerStyle.animatableData.modify(void **a1)
{
  v1 = *a1;
  v2 = *(v1 + 6);
  v3 = v1[1];
  v4 = *(v1 + 2);
  v5 = *v1;
  if (v3 == 1.0)
  {
    v5 = 0.0;
  }

  *(v2 + 16) = *v1;
  *(v2 + 24) = v3;
  *(v2 + 48) = v4;
  *v2 = v5;
  *(v2 + 8) = v3 == 1.0;
  *(v2 + 32) = v4;
  *(v2 + 40) = 0;
  free(v1);
}

uint64_t CornerMaskingConfiguration.CornerStyle.hash(into:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0 + 4);
  v4 = *(v0 + 40);
  v5 = v0[6];
  if (v0[1])
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    v6 = *v0;
    MEMORY[0x193AC11A0](0);
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    MEMORY[0x193AC11E0](*&v7);
  }

  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x193AC11E0](*&v8);
  if (v1 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v1;
  }

  MEMORY[0x193AC11E0](*&v9);
  if (v4)
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193AC11E0](v10);
  }

  v11 = 0.0;
  if (v5 != 0.0)
  {
    v11 = v5;
  }

  return MEMORY[0x193AC11E0](*&v11);
}

Swift::Int CornerMaskingConfiguration.CornerStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 6);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x193AC11E0](v8);
  }

  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x193AC11E0](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x193AC11E0](*&v10);
  if (v6)
  {
    MEMORY[0x193AC11A0](1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x193AC11E0](v11);
  }

  v12 = 0.0;
  if (v7 != 0.0)
  {
    v12 = v7;
  }

  MEMORY[0x193AC11E0](*&v12);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CornerMaskingConfiguration.CornerStyle()
{
  Hasher.init(_seed:)();
  CornerMaskingConfiguration.CornerStyle.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for Animatable.animatableData.getter in conformance CornerMaskingConfiguration.CornerStyle(uint64_t a1@<X8>)
{
  *a1 = CornerMaskingConfiguration.CornerStyle.animatableData.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

double *protocol witness for Animatable.animatableData.setter in conformance CornerMaskingConfiguration.CornerStyle(double *result)
{
  v2 = *result;
  v3 = result[1];
  v4 = *(result + 2);
  *(v1 + 16) = *result;
  *(v1 + 24) = v3;
  *(v1 + 48) = v4;
  v5 = v2;
  if (v3 == 1.0)
  {
    v5 = 0.0;
  }

  *v1 = v5;
  *(v1 + 8) = v3 == 1.0;
  *(v1 + 32) = v4;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance CornerMaskingConfiguration.CornerStyle(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CornerMaskingConfiguration.CornerStyle.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

double protocol witness for Animatable.animatableData.getter in conformance CornerMaskingConfiguration@<D0>(_OWORD *a1@<X8>)
{
  CornerMaskingConfiguration.animatableData.getter(v6);
  v2 = v6[3];
  a1[2] = v6[2];
  a1[3] = v2;
  v3 = v6[5];
  a1[4] = v6[4];
  a1[5] = v3;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance CornerMaskingConfiguration(uint64_t *a1))(_OWORD **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x208uLL);
  }

  *a1 = v3;
  *(v3 + 512) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  *(v3 + 64) = v1[4];
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[9];
  *(v3 + 128) = v1[8];
  *(v3 + 144) = v10;
  *(v3 + 96) = v8;
  *(v3 + 112) = v9;
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[13];
  *(v3 + 192) = v1[12];
  *(v3 + 208) = v13;
  *(v3 + 160) = v11;
  *(v3 + 176) = v12;
  CornerMaskingConfiguration.animatableData.getter((v3 + 416));
  return CornerMaskingConfiguration.animatableData.modify;
}

unint64_t *Edge.Corner.Style.init(_:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[4];
  if (result[1])
  {
    if (result[5])
    {
      v3 = 1;
      _Q2 = xmmword_18DDAB500;
      v5 = 0;
      v2 = 0;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v3 = 1;
      __asm { FMOV            V2.2D, #1.0 }

      *&_Q2 = result[4];
      v5 = 0;
    }
  }

  else
  {
    v5 = *result;
    v3 = 0;
    if (result[5])
    {
      v6 = 1;
      _Q2 = *result;
      v2 = 0;
    }

    else
    {
      v6 = 0;
      _Q2 = *result;
    }
  }

  *a2 = v5;
  *(a2 + 8) = v3;
  *(a2 + 16) = _Q2;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  *(a2 + 48) = v6;
  *(a2 + 56) = v2;
  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance ContainerShapeKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = &type metadata for DefaultContainerShapeType;
  *(a1 + 8) = &protocol witness table for DefaultContainerShapeType;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  return result;
}

__n128 specialized CornerConfigurationShape_v1.corners(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D2>, double a3@<D3>)
{
  LOBYTE(v14) = 0;
  if (a3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  *&v14 = v4;
  BYTE8(v14) = 0;
  v15 = *&v4;
  *&v16 = 0;
  BYTE8(v16) = 0;
  v17.n128_u64[0] = 0;
  v17.n128_f64[1] = v4;
  LOBYTE(v18) = 0;
  *(&v18 + 1) = v4;
  v19 = 0uLL;
  LOBYTE(v20) = 0;
  *(&v20 + 1) = 0;
  *&v21 = v4;
  BYTE8(v21) = 0;
  v22 = *&v4;
  *&v23 = 0;
  BYTE8(v23) = 0;
  *&v24 = 0;
  *(&v24 + 1) = v4;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = v4;
  v26 = 0uLL;
  LOBYTE(v27) = 0;
  *(&v27 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v14);
  v5 = v25;
  v6 = v27;
  *(a1 + 192) = v26;
  *(a1 + 208) = v6;
  v7 = v21;
  v8 = v23;
  v9 = v24;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v9;
  *(a1 + 176) = v5;
  v10 = v19;
  v11 = v20;
  *(a1 + 64) = v18;
  *(a1 + 80) = v10;
  *(a1 + 224) = v28;
  *(a1 + 96) = v11;
  *(a1 + 112) = v7;
  v12 = v15;
  *a1 = v14;
  *(a1 + 16) = v12;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t _CornerConfigurationToRoundedRectangularShape.corners(in:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    (*(*(a4 + 32) + 16))(v8, *(a4 + 16));
  }

  else
  {
    (*(*(a4 + 32) + 24))(v8, *(a4 + 16), a1, a2);
  }

  type metadata accessor for CornerMaskingConfiguration?();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _CornerConfigurationToRoundedRectangularShape.corners(in:), 0, MEMORY[0x1E69E73E0], &type metadata for RoundedRectangularShapeCorners, v6, a5);
}

double _CornerConfigurationToRoundedRectangularShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(*(a1 + 24) + 8) + 24))(v5, *(a1 + 16));
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t _CornerConfigurationToRoundedRectangularShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _CornerConfigurationToRoundedRectangularShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*_CornerConfigurationToRoundedRectangularShape.animatableData.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v9 = a2 + 16;
  v8 = *(a2 + 16);
  v10 = *(*(*(v9 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v7[3] = v12;
  v13 = *(v12 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v7[5] = v14;
  (*(v10 + 24))(v8, v10);
  return _CornerConfigurationToRoundedRectangularShape.animatableData.modify;
}

void _CornerConfigurationToRoundedRectangularShape.animatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    specialized _CornerConfigurationToRoundedRectangularShape.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _CornerConfigurationToRoundedRectangularShape.animatableData.setter((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _CornerConfigurationToRoundedRectangularShape<A>(uint64_t a1, uint64_t a2)
{
  specialized _CornerConfigurationToRoundedRectangularShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _CornerConfigurationToRoundedRectangularShape<A>(void *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = _CornerConfigurationToRoundedRectangularShape.animatableData.modify(v4, a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

double protocol witness for Shape.path(in:) in conformance _CornerConfigurationToRoundedRectangularShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _CornerConfigurationToRoundedRectangularShape.path(in:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

__n128 Rectangle.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  *&v11 = 0;
  BYTE8(v11) = 0;
  v12 = 0uLL;
  *&v13 = 0;
  BYTE8(v13) = 0;
  v14 = 0uLL;
  LOBYTE(v15) = 0;
  *(&v15 + 1) = 0;
  v16 = 0uLL;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0;
  *&v18 = 0;
  BYTE8(v18) = 0;
  v19 = 0uLL;
  *&v20 = 0;
  BYTE8(v20) = 0;
  v21 = 0uLL;
  LOBYTE(v22) = 0;
  *(&v22 + 1) = 0;
  v23 = 0uLL;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v11);
  v2 = v22;
  v3 = v24;
  *(a1 + 192) = v23;
  *(a1 + 208) = v3;
  v4 = v18;
  v5 = v20;
  v6 = v21;
  *(a1 + 128) = v19;
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  *(a1 + 176) = v2;
  v7 = v16;
  v8 = v17;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 224) = v25;
  *(a1 + 96) = v8;
  *(a1 + 112) = v4;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

__n128 protocol witness for CornerConfigurationShape_v1.corners.getter in conformance Rectangle@<Q0>(uint64_t a1@<X8>)
{
  *&v11 = 0;
  BYTE8(v11) = 0;
  v12 = 0uLL;
  *&v13 = 0;
  BYTE8(v13) = 0;
  v14 = 0uLL;
  LOBYTE(v15) = 0;
  *(&v15 + 1) = 0;
  v16 = 0uLL;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0;
  *&v18 = 0;
  BYTE8(v18) = 0;
  v19 = 0uLL;
  *&v20 = 0;
  BYTE8(v20) = 0;
  v21 = 0uLL;
  LOBYTE(v22) = 0;
  *(&v22 + 1) = 0;
  v23 = 0uLL;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v11);
  v2 = v22;
  v3 = v24;
  *(a1 + 192) = v23;
  *(a1 + 208) = v3;
  v4 = v18;
  v5 = v20;
  v6 = v21;
  *(a1 + 128) = v19;
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  *(a1 + 176) = v2;
  v7 = v16;
  v8 = v17;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 224) = v25;
  *(a1 + 96) = v8;
  *(a1 + 112) = v4;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

__n128 RoundedRectangle.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v1[1] < *v1)
  {
    v3 = v1[1];
  }

  *&v13 = v3;
  BYTE8(v13) = 0;
  v14 = *&v3;
  *&v15 = 0;
  BYTE8(v15) = 0;
  v16.n128_u64[0] = 0;
  v16.n128_f64[1] = v3;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = v3;
  v18 = 0uLL;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = 0;
  *&v20 = v3;
  BYTE8(v20) = 0;
  v21 = *&v3;
  *&v22 = 0;
  BYTE8(v22) = 0;
  *&v23 = 0;
  *(&v23 + 1) = v3;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = v3;
  v25 = 0uLL;
  LOBYTE(v26) = 0;
  *(&v26 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v13);
  v4 = v24;
  v5 = v26;
  *(a1 + 192) = v25;
  *(a1 + 208) = v5;
  v6 = v20;
  v7 = v22;
  v8 = v23;
  *(a1 + 128) = v21;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  *(a1 + 176) = v4;
  v9 = v18;
  v10 = v19;
  *(a1 + 64) = v17;
  *(a1 + 80) = v9;
  *(a1 + 224) = v27;
  *(a1 + 96) = v10;
  *(a1 + 112) = v6;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  result = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = result;
  return result;
}

__n128 Circle.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  *&v11 = 0x7FF0000000000000;
  BYTE8(v11) = 0;
  *&v13 = 0;
  v12 = 0x7FF0000000000000uLL;
  BYTE8(v13) = 0;
  v14.n128_u64[0] = 0;
  v14.n128_u64[1] = 0x7FF0000000000000;
  LOBYTE(v15) = 0;
  v16 = 0uLL;
  *(&v15 + 1) = 0x7FF0000000000000;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0;
  *&v18 = 0x7FF0000000000000;
  BYTE8(v18) = 0;
  *&v20 = 0;
  v19 = 0x7FF0000000000000uLL;
  BYTE8(v20) = 0;
  *&v21 = 0;
  *(&v21 + 1) = 0x7FF0000000000000;
  LOBYTE(v22) = 0;
  v23 = 0uLL;
  *(&v22 + 1) = 0x7FF0000000000000;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v11);
  v2 = v22;
  v3 = v24;
  *(a1 + 192) = v23;
  *(a1 + 208) = v3;
  v4 = v18;
  v5 = v20;
  v6 = v21;
  *(a1 + 128) = v19;
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  *(a1 + 176) = v2;
  v7 = v16;
  v8 = v17;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 224) = v25;
  *(a1 + 96) = v8;
  *(a1 + 112) = v4;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

__n128 Circle.corners(in:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  LOBYTE(v13) = 0;
  if (a2 >= a3)
  {
    a2 = a3;
  }

  *&v13 = a2 * 0.5;
  BYTE8(v13) = 0;
  v14 = COERCE_UNSIGNED_INT64(a2 * 0.5);
  *&v15 = 0;
  BYTE8(v15) = 0;
  v16.n128_u64[0] = 0;
  v16.n128_f64[1] = a2 * 0.5;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = a2 * 0.5;
  v18 = 0uLL;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = 0;
  *&v20 = a2 * 0.5;
  BYTE8(v20) = 0;
  *&v21 = a2 * 0.5;
  *(&v21 + 1) = 0;
  *&v22 = 0;
  BYTE8(v22) = 0;
  *&v23 = 0;
  *(&v23 + 1) = a2 * 0.5;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = a2 * 0.5;
  v25 = 0uLL;
  LOBYTE(v26) = 0;
  *(&v26 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v13);
  v4 = v24;
  v5 = v26;
  *(a1 + 192) = v25;
  *(a1 + 208) = v5;
  v6 = v20;
  v7 = v22;
  v8 = v23;
  *(a1 + 128) = v21;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  *(a1 + 176) = v4;
  v9 = v18;
  v10 = v19;
  *(a1 + 64) = v17;
  *(a1 + 80) = v9;
  *(a1 + 224) = v27;
  *(a1 + 96) = v10;
  *(a1 + 112) = v6;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  result = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = result;
  return result;
}

__n128 Capsule.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  *&v11 = 0x7FF0000000000000;
  BYTE8(v11) = 0;
  *&v13 = 0;
  v12 = 0x7FF0000000000000uLL;
  BYTE8(v13) = 0;
  v14.n128_u64[0] = 0;
  v14.n128_u64[1] = 0x7FF0000000000000;
  LOBYTE(v15) = 0;
  v16 = 0uLL;
  *(&v15 + 1) = 0x7FF0000000000000;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0;
  *&v18 = 0x7FF0000000000000;
  BYTE8(v18) = 0;
  *&v20 = 0;
  v19 = 0x7FF0000000000000uLL;
  BYTE8(v20) = 0;
  *&v21 = 0;
  *(&v21 + 1) = 0x7FF0000000000000;
  LOBYTE(v22) = 0;
  v23 = 0uLL;
  *(&v22 + 1) = 0x7FF0000000000000;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = 0;
  _s7SwiftUI26CornerMaskingConfigurationVSgWOi_(&v11);
  v2 = v22;
  v3 = v24;
  *(a1 + 192) = v23;
  *(a1 + 208) = v3;
  v4 = v18;
  v5 = v20;
  v6 = v21;
  *(a1 + 128) = v19;
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  *(a1 + 176) = v2;
  v7 = v16;
  v8 = v17;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 224) = v25;
  *(a1 + 96) = v8;
  *(a1 + 112) = v4;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

_BYTE *closure #1 in CornerMaskingConfiguration.fixedCornerRadii(replacingUndefinedWith:)(_BYTE *result)
{
  v1 = *result;
  if (*result && v1 != 1 && v1 != 2 && v1 != 3)
  {
    __break(1u);
  }

  return result;
}

__n128 RootContainerShape.overrideValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 RootContainerShape.overrideValue.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

double RootContainerShape.value.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3 != 2)
  {
    v11 = *v1;
    v12 = v1[1];
    *a1 = *v1;
    *(a1 + 16) = v12;
    *(a1 + 32) = v3 & 1;
    return *&v11;
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v4 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_8:
    *(a1 + 32) = 1;
    *&v11 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return *&v11;
  }

  v5 = *(v4 + 208);

  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for RootContainerShapeProvider();
  (*(v5 + 16))(v18, v7, v7, ObjectType, v5);
  swift_unknownObjectRelease();
  v8 = v19;
  if (!v19)
  {
    outlined destroy of RootContainerShapeProvider?(v18);
    goto LABEL_8;
  }

  v9 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v9 + 8))(v16, v8, v9);
  v10 = v17;
  v14 = v16[1];
  v15 = v16[0];
  __swift_destroy_boxed_opaque_existential_1(v18);
  *&v11 = v15;
  *a1 = v15;
  *(a1 + 16) = v14;
  *(a1 + 32) = v10;
  return *&v11;
}

double protocol witness for static Rule.initialValue.getter in conformance RootContainerShape@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

BOOL specialized static CornerMaskingConfiguration.CornerStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (v3 == v8)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 != 1 || v2 != v7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (*(a2 + 8))
    {
      return result;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 || v2 != v7)
    {
      return result;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  return v6 == *(a2 + 48);
}

uint64_t specialized _CornerConfigurationToRoundedRectangularShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(*(a2 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(v4 + 32))(v8, v3, v4);
}

void type metadata accessor for CornerMaskingConfiguration?()
{
  if (!lazy cache variable for type metadata for CornerMaskingConfiguration?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CornerMaskingConfiguration?);
    }
  }
}

unint64_t type metadata accessor for RootContainerShapeProvider()
{
  result = lazy cache variable for type metadata for RootContainerShapeProvider;
  if (!lazy cache variable for type metadata for RootContainerShapeProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RootContainerShapeProvider);
  }

  return result;
}

uint64_t outlined destroy of RootContainerShapeProvider?(uint64_t a1)
{
  type metadata accessor for RootContainerShapeProvider?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for RootContainerShapeProvider?()
{
  if (!lazy cache variable for type metadata for RootContainerShapeProvider?)
  {
    type metadata accessor for RootContainerShapeProvider();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RootContainerShapeProvider?);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for ContainerRelativeShape._Inset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ImplicitContainerShape(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ImplicitContainerShape and conformance ImplicitContainerShape();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PartialContainerRelativeShape(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ContainerShapeTransform(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ContainerShapeTransform and conformance ContainerShapeTransform();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _CornerConfigurationToRoundedRectangularShape<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RootContainerShape and conformance RootContainerShape()
{
  result = lazy protocol witness table cache variable for type RootContainerShape and conformance RootContainerShape;
  if (!lazy protocol witness table cache variable for type RootContainerShape and conformance RootContainerShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootContainerShape and conformance RootContainerShape);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartialContainerRelativeShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[240])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialContainerRelativeShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t getEnumTagSinglePayload for CornerMaskingConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CornerMaskingConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 224) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RootContainerShape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for RootContainerShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerShapeEnvironment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContainerShapeEnvironment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ContainerShapeEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ContainerShapeEnvironment and conformance ContainerShapeEnvironment();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle.Representation and conformance CornerMaskingConfiguration.CornerStyle.Representation()
{
  result = lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle.Representation and conformance CornerMaskingConfiguration.CornerStyle.Representation;
  if (!lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle.Representation and conformance CornerMaskingConfiguration.CornerStyle.Representation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerMaskingConfiguration.CornerStyle.Representation and conformance CornerMaskingConfiguration.CornerStyle.Representation);
  }

  return result;
}

uint64_t _ResolvedKeyframeTrackContent.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _ResolvedKeyframeTrackContent.Segment();
  result = static Array._allocateUninitialized(_:)();
  *a1 = result;
  return result;
}

uint64_t _ResolvedKeyframeTrackContent.Segment.end.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for _ResolvedKeyframeTrackContent.Linear();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  v6 = type metadata accessor for _ResolvedKeyframeTrackContent._Spring();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for _ResolvedKeyframeTrackContent.Cubic();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v29, a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = v28;
      (*(v28 + 32))(v8, v16, v6);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      (*(*(AssociatedTypeWitness - 8) + 16))(v30, v8, AssociatedTypeWitness);
      return (*(v21 + 8))(v8, v6);
    }

    else
    {
      (*(v26 + 32))(v5, v16, v27);
      v24 = swift_getAssociatedTypeWitness();
      return (*(*(v24 - 8) + 32))(v30, v5, v24);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v10 + 32))(v12, v16, v9);
    v23 = swift_getAssociatedTypeWitness();
    (*(*(v23 - 8) + 16))(v30, v12, v23);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v19 = swift_getAssociatedTypeWitness();
    return (*(*(v19 - 8) + 32))(v30, v16, v19);
  }
}

uint64_t MergedKeyframeTrackContent.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1, a3);
  v8 = type metadata accessor for MergedKeyframeTrackContent();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 60), a2, a4);
}

uint64_t KeyframeTrackContent<>._resolve(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a3 + 40))(a2, a3, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t _ResolvedKeyframeTrackContent.append(_:)(uint64_t a1)
{
  v2 = type metadata accessor for _ResolvedKeyframeTrackContent.Segment();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t _ResolvedKeyframeTrackContent.Cubic.init(to:startVelocity:endVelocity:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v11 = type metadata accessor for _ResolvedKeyframeTrackContent.Cubic();
  v12 = v11[9];
  v13 = type metadata accessor for Optional();
  v14 = *(*(v13 - 8) + 32);
  v14(a4 + v12, a2, v13);
  result = (v14)(a4 + v11[10], a3, v13);
  *(a4 + v11[11]) = a5;
  return result;
}

uint64_t _ResolvedKeyframeTrackContent._Spring.init(to:spring:startVelocity:duration:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v19 = *a2;
  v11 = *(a2 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  v13 = type metadata accessor for _ResolvedKeyframeTrackContent._Spring();
  v14 = a6 + v13[9];
  *v14 = v19;
  *(v14 + 16) = v11;
  v15 = v13[10];
  v16 = type metadata accessor for Optional();
  result = (*(*(v16 - 8) + 32))(a6 + v15, a3, v16);
  v18 = a6 + v13[11];
  *v18 = a4;
  *(v18 + 8) = a5 & 1;
  return result;
}

__n128 _ResolvedKeyframeTrackContent.Linear.init(to:duration:timingCurve:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(a2 + 16);
  v14 = *a2;
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v10 = type metadata accessor for _ResolvedKeyframeTrackContent.Linear();
  *(a3 + *(v10 + 36)) = a4;
  v11 = a3 + *(v10 + 40);
  result = v14;
  *v11 = v14;
  *(v11 + 16) = v13;
  *(v11 + 32) = v8;
  return result;
}

uint64_t CubicKeyframe.init(_:duration:startVelocity:endVelocity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v56 = a3;
  v64 = a2;
  v61 = a6;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v55 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v47 - v21;
  v63 = AssociatedTypeWitness;
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  v54 = type metadata accessor for _ResolvedKeyframeTrackContent.Cubic();
  v52 = *(v54 - 8);
  v25 = MEMORY[0x1EEE9AC00](v54);
  v51 = &v47 - v26;
  v27 = *(a5 + 24);
  v53 = v24;
  v59 = a1;
  v27(a4, a5, v25);
  v28 = v12;
  v49 = *(v12 + 16);
  v50 = v11;
  v49(v16, v64, v11);
  v29 = *(a4 - 1);
  v30 = 1;
  v48 = *(v29 + 48);
  v31 = v48(v16, 1, a4);
  v60 = a5;
  v58 = v28;
  v47 = v27;
  if (v31 == 1)
  {
    v32 = v28;
    v33 = v50;
    v34 = v50;
    v35 = v16;
    v36 = v62;
  }

  else
  {
    v36 = v62;
    (v27)(a4, a5);
    v30 = 0;
    v32 = v29;
    v34 = a4;
    v33 = v50;
    v35 = v16;
  }

  (*(v32 + 8))(v35, v34);
  v37 = *(v65 + 56);
  v65 += 56;
  v37(v36, v30, 1, v63);
  v39 = v56;
  v38 = v57;
  v49(v57, v56, v33);
  if (v48(v38, 1, a4) == 1)
  {
    v40 = *(v58 + 8);
    v40(v39, v33);
    v40(v64, v33);
    (*(v29 + 8))(v59, a4);
    v40(v38, v33);
    v41 = 1;
    v42 = v55;
  }

  else
  {
    v42 = v55;
    v50 = v37;
    v47(a4, v60);
    v43 = *(v58 + 8);
    v43(v39, v33);
    v37 = v50;
    v43(v64, v33);
    v44 = *(v29 + 8);
    v44(v59, a4);
    v44(v38, a4);
    v41 = 0;
  }

  v37(v42, v41, 1, v63);
  v45 = v51;
  _ResolvedKeyframeTrackContent.Cubic.init(to:startVelocity:endVelocity:duration:)(v53, v62, v42, v51, a7);
  return (*(v52 + 32))(v61, v45, v54);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance CubicKeyframe<A>()
{
  swift_getWitnessTable();

  PrimitiveKeyframeTrackContent.body.getter();
}

uint64_t SpringKeyframe.init(_:duration:spring:startVelocity:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a5;
  v40 = a3;
  v41 = a2;
  v42 = a8;
  v45 = a1;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v43 = &v33 - v17;
  v39 = AssociatedTypeWitness;
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v38 = type metadata accessor for _ResolvedKeyframeTrackContent._Spring();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v22 = &v33 - v21;
  v33 = *a4;
  v23 = *(a4 + 16);
  v24 = *(a7 + 24);
  v37 = v20;
  v44 = a7;
  v24(a6, a7);
  v46 = v33;
  v47 = v23;
  v25 = v34;
  v26 = v11;
  (*(v12 + 16))(v14);
  v27 = *(a6 - 8);
  if ((*(v27 + 48))(v14, 1, a6) == 1)
  {
    v28 = *(v12 + 8);
    v28(v25, v26);
    (*(v27 + 8))(v45, a6);
    v28(v14, v26);
    v29 = 1;
  }

  else
  {
    v24(a6, v44);
    (*(v12 + 8))(v25, v26);
    v30 = *(v27 + 8);
    v30(v45, a6);
    v30(v14, a6);
    v29 = 0;
  }

  v31 = v43;
  (*(v36 + 56))(v43, v29, 1, v39);
  _ResolvedKeyframeTrackContent._Spring.init(to:spring:startVelocity:duration:)(v37, &v46, v31, v41, v40 & 1, v22);
  return (*(v35 + 32))(v42, v22, v38);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance SpringKeyframe<A>()
{
  swift_getWitnessTable();

  PrimitiveKeyframeTrackContent.body.getter();
}

void LinearKeyframe.init(_:duration:timingCurve:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v15 = &v18 - v14;
  v16 = *(a2 + 32);
  (*(a4 + 24))(a3, a4, v13);
  (*(*(a3 - 8) + 8))(a1, a3);
  v17 = *a2;
  v19[1] = a2[1];
  v19[0] = v17;
  v20 = v16;
  _ResolvedKeyframeTrackContent.Linear.init(to:duration:timingCurve:)(v15, v19, a5, a6);
}

uint64_t CubicKeyframe._resolve(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, double))
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for _ResolvedKeyframeTrackContent.Segment();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a3(0, v5, v6, v9);
  (*(*(v12 - 8) + 16))(v11, v3, v12);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ResolvedKeyframeTrackContent();
  _ResolvedKeyframeTrackContent.append(_:)(v11);
  return (*(v8 + 8))(v11, v7);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance LinearKeyframe<A>()
{
  swift_getWitnessTable();

  PrimitiveKeyframeTrackContent.body.getter();
}

uint64_t MoveKeyframe._resolve(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = type metadata accessor for _ResolvedKeyframeTrackContent.Segment();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v3 + 24))(v2, v3, v6);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ResolvedKeyframeTrackContent();
  _ResolvedKeyframeTrackContent.append(_:)(v8);
  return (*(v5 + 8))(v8, v4);
}

void protocol witness for KeyframeTrackContent.body.getter in conformance MoveKeyframe<A>()
{
  swift_getWitnessTable();

  PrimitiveKeyframeTrackContent.body.getter();
}

void protocol witness for KeyframeTrackContent.body.getter in conformance MergedKeyframeTrackContent<A, B, C>()
{
  swift_getWitnessTable();

  PrimitiveKeyframeTrackContent.body.getter();
}

void protocol witness for KeyframeTrackContent.body.getter in conformance EmptyKeyframeTrackContent<A>()
{
  swift_getWitnessTable();

  PrimitiveKeyframeTrackContent.body.getter();
}

uint64_t ArrayKeyframeTrackContent._resolve(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  v20 = a5;
  v7 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v18 = v9;
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x193ABF2C0](v11, v12, v8);
  if (result)
  {
    v14 = 0;
    v15 = *(v20 + 48);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v7 + 16))(v10, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, a4);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v18 != 8)
        {
          __break(1u);
          return result;
        }

        v21 = result;
        (*(v7 + 16))(v10, &v21, a4);
        result = swift_unknownObjectRelease();
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v15(v19, a4, v20);
      (*(v7 + 8))(v10, a4);
      result = MEMORY[0x193ABF2C0](a2, a4);
      ++v14;
    }

    while (v17 != result);
  }

  return result;
}

void protocol witness for KeyframeTrackContent.body.getter in conformance ArrayKeyframeTrackContent<A, B>()
{
  swift_getWitnessTable();

  PrimitiveKeyframeTrackContent.body.getter();
}

void protocol witness for KeyframeTrackContent.body.getter in conformance KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>()
{
  swift_getWitnessTable();

  PrimitiveKeyframeTrackContent.body.getter();
}

uint64_t instantiation function for generic protocol witness table for CubicKeyframe<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SpringKeyframe<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LinearKeyframe<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MoveKeyframe<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t default associated conformance accessor for KeyframeTrackContent.KeyframeTrackContent.Value: Animatable()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t getEnumTagSinglePayload for CubicKeyframe(_DWORD *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = *(v4 + 64);
  if (v6)
  {
    v8 = *(v4 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_28:
    v17 = *(v5 + 48);

    return v17(a1);
  }

  v9 = ((v8 + ((v8 + *(v5 + 80) + ((v7 + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v6 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_27;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_27:
    if (v6)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for CubicKeyframe(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9) & ~v9;
  if (!v7)
  {
    ++v8;
  }

  v11 = ((v8 + ((v8 + v9 + v10) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (((v8 + ((v8 + v9 + v10) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v7 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_16:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = *(v6 + 56);

      v18(a1, a2);
      return;
    }
  }

  if (v11)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  if (v11)
  {
    v17 = ~v7 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t getEnumTagSinglePayload for SpringKeyframe(unsigned __int8 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = v6 + 7;
  v8 = v6 + 8;
  if (v5)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
LABEL_30:
    v17 = *(v4 + 48);

    return v17(a1);
  }

  v9 = ((v8 + (((v7 & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 24) & ~*(v4 + 80))) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 <= 3)
  {
    v10 = ((a2 - v5 + 255) >> 8) + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v13 = *&a1[v9];
      if (!v13)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v12 || (v13 = a1[v9]) == 0)
  {
LABEL_29:
    if (v5)
    {
      goto LABEL_30;
    }

    return 0;
  }

  v14 = (v13 - 1) << (8 * v9);
  v15 = v9 > 3;
  if (v9 <= 3)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v19 = *a1;
  }

  else
  {
    v19 = *a1;
  }

  return v5 + (v19 | v16) + 1;
}

void storeEnumTagSinglePayload for SpringKeyframe(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v8 + 7;
  v10 = (((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = v8 + 8;
  if (v7)
  {
    v11 = v9;
  }

  v12 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v15 = 0;
    if (v7 >= a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v12 <= 3)
    {
      v13 = ((a3 - v7 + 255) >> 8) + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v7 >= a2)
    {
LABEL_16:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v12] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_31;
        }

        *&a1[v12] = 0;
      }

      else if (v15)
      {
        a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      }

      if (!a2)
      {
        return;
      }

LABEL_31:
      v18 = *(v6 + 56);

      v18(a1, a2);
      return;
    }
  }

  v16 = ~v7 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_26:
      if (v15 == 2)
      {
        *&a1[v12] = v17;
      }

      else
      {
        *&a1[v12] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v15)
  {
    a1[v12] = v17;
  }
}

uint64_t getEnumTagSinglePayload for LinearKeyframe(unsigned __int8 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_28:
    v15 = *(v5 + 48);

    return v15(a1);
  }

  v7 = ((((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v7 <= 3)
  {
    v8 = ((a2 - v6 + 255) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v7];
      if (!*&a1[v7])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v11 = *&a1[v7];
      if (!v11)
      {
        goto LABEL_27;
      }
    }
  }

  else if (!v10 || (v11 = a1[v7]) == 0)
  {
LABEL_27:
    if (v6)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v7);
  v13 = v7 > 3;
  if (v7 <= 3)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v17 = *a1;
  }

  else
  {
    v17 = *a1;
  }

  return v6 + (v17 | v14) + 1;
}

void storeEnumTagSinglePayload for LinearKeyframe(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = ((((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v7 >= a3)
  {
    v11 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((a3 - v7 + 255) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v11)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v14 = *(v6 + 56);

      v14(a1, a2);
      return;
    }
  }

  v12 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v13 = (v12 >> 8) + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_24:
      if (v11 == 2)
      {
        *&a1[v8] = v13;
      }

      else
      {
        *&a1[v8] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v11)
  {
    a1[v8] = v13;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for LinearKeyframe(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if ((v7 & 0x1000F8) != 0 || ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v10 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v12;
    v13 = *(v12 + 16);
    v15 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v15 + 32) = *(v12 + 32);
    *v15 = v14;
    *(v15 + 16) = v13;
  }

  return a1;
}

uint64_t destroy for LinearKeyframe(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for LinearKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v12;
  *(v9 + 16) = v11;
  return a1;
}

uint64_t assignWithCopy for LinearKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v12;
  *(v9 + 16) = v11;
  return a1;
}

uint64_t initializeWithTake for LinearKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v12;
  *(v9 + 16) = v11;
  return a1;
}

uint64_t assignWithTake for LinearKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v12;
  *(v9 + 16) = v11;
  return a1;
}

uint64_t type metadata completion function for _ResolvedKeyframeTrackContent._Spring()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SpringKeyframe(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = v6 + 1;
  }

  v10 = v7 & 0x100000;
  if (v8 > 7 || v10 != 0 || ((v9 + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    v14 = AssociatedTypeWitness;
    v15 = *(v5 + 16);
    v15(a1, a2, AssociatedTypeWitness);
    v16 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v18;
    if ((*(v5 + 48))(v17 + 24, 1, v14))
    {
      memcpy((v16 + 24), (v17 + 24), v9);
    }

    else
    {
      v15((v16 + 24), (v17 + 24), v14);
      (*(v5 + 56))(v16 + 24, 0, 1, v14);
    }

    v19 = (v17 + v9 + 31) & 0xFFFFFFFFFFFFFFF8;
    v20 = *v19;
    v21 = (v16 + v9 + 31) & 0xFFFFFFFFFFFFFFF8;
    *(v21 + 8) = *(v19 + 8);
    *v21 = v20;
  }

  return a1;
}

uint64_t destroy for SpringKeyframe(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v9 = *(v3 + 8);
  v9(a1, AssociatedTypeWitness);
  v4 = *(v3 + 48);
  v3 += 48;
  v5 = (a1 + *(v3 + 16) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v3 + 32);
  v7 = v5 + v6 + 24;
  result = v4(v7 & ~v6, 1, AssociatedTypeWitness);
  if (!result)
  {

    return v9(v7 & ~v6, AssociatedTypeWitness);
  }

  return result;
}

uint64_t initializeWithCopy for SpringKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 16);
  v7(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 + 64);
  v9 = (v8 + 7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  v12 = *(v5 + 80);
  v13 = ((v12 + 24 + v9) & ~v12);
  v14 = ((v12 + 24 + v10) & ~v12);
  if ((*(v6 + 48))(v14, 1, AssociatedTypeWitness))
  {
    v15 = *(v6 + 84);
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v8 + 1;
    }

    memcpy(v13, v14, v16);
  }

  else
  {
    v7(v13, v14, AssociatedTypeWitness);
    (*(v6 + 56))(v13, 0, 1, AssociatedTypeWitness);
    v15 = *(v6 + 84);
  }

  if (v15)
  {
    v17 = v8;
  }

  else
  {
    v17 = v8 + 1;
  }

  v18 = v13 + v17 + 7;
  v19 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v18 &= 0xFFFFFFFFFFFFFFF8;
  *(v18 + 8) = *(v19 + 8);
  *v18 = v20;
  return a1;
}

uint64_t assignWithCopy for SpringKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 24);
  v7(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 + 64);
  v24 = a1;
  v9 = ((v8 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v11 = *(v5 + 80);
  v12 = ((v9 + v11 + 24) & ~v11);
  v13 = ((v10 + v11 + 24) & ~v11);
  v14 = *(v6 + 48);
  v15 = v14(v12, 1, AssociatedTypeWitness);
  v16 = v14(v13, 1, AssociatedTypeWitness);
  if (v15)
  {
    if (!v16)
    {
      (*(v6 + 16))(v12, v13, AssociatedTypeWitness);
      (*(v6 + 56))(v12, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v17 = *(v6 + 84);
  }

  else
  {
    if (!v16)
    {
      v7(v12, v13, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(v12, AssociatedTypeWitness);
    v17 = *(v6 + 84);
  }

  if (v17)
  {
    v18 = v8;
  }

  else
  {
    v18 = v8 + 1;
  }

  memcpy(v12, v13, v18);
LABEL_12:
  if (*(v6 + 84))
  {
    v19 = v8;
  }

  else
  {
    v19 = v8 + 1;
  }

  v20 = v12 + v19 + 7;
  v21 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  v20 &= 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = v22;
  return v24;
}

uint64_t initializeWithTake for SpringKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 32);
  v7(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 + 64);
  v9 = (v8 + 7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  v12 = *(v5 + 80);
  v13 = ((v12 + 24 + v9) & ~v12);
  v14 = ((v12 + 24 + v10) & ~v12);
  if ((*(v6 + 48))(v14, 1, AssociatedTypeWitness))
  {
    v15 = *(v6 + 84);
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v8 + 1;
    }

    memcpy(v13, v14, v16);
  }

  else
  {
    v7(v13, v14, AssociatedTypeWitness);
    (*(v6 + 56))(v13, 0, 1, AssociatedTypeWitness);
    v15 = *(v6 + 84);
  }

  if (v15)
  {
    v17 = v8;
  }

  else
  {
    v17 = v8 + 1;
  }

  v18 = v13 + v17 + 7;
  v19 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v18 &= 0xFFFFFFFFFFFFFFF8;
  *(v18 + 8) = *(v19 + 8);
  *v18 = v20;
  return a1;
}

uint64_t assignWithTake for SpringKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 40);
  v7(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 + 64);
  v24 = a1;
  v9 = ((v8 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v11 = *(v5 + 80);
  v12 = ((v9 + v11 + 24) & ~v11);
  v13 = ((v10 + v11 + 24) & ~v11);
  v14 = *(v6 + 48);
  v15 = v14(v12, 1, AssociatedTypeWitness);
  v16 = v14(v13, 1, AssociatedTypeWitness);
  if (v15)
  {
    if (!v16)
    {
      (*(v6 + 32))(v12, v13, AssociatedTypeWitness);
      (*(v6 + 56))(v12, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v17 = *(v6 + 84);
  }

  else
  {
    if (!v16)
    {
      v7(v12, v13, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(v12, AssociatedTypeWitness);
    v17 = *(v6 + 84);
  }

  if (v17)
  {
    v18 = v8;
  }

  else
  {
    v18 = v8 + 1;
  }

  memcpy(v12, v13, v18);
LABEL_12:
  if (*(v6 + 84))
  {
    v19 = v8;
  }

  else
  {
    v19 = v8 + 1;
  }

  v20 = v12 + v19 + 7;
  v21 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  v20 &= 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = v22;
  return v24;
}

uint64_t type metadata completion function for _ResolvedKeyframeTrackContent.Cubic()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CubicKeyframe(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v6 + v7;
  if (*(v5 + 84))
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v10 = v6 + 1;
  }

  v11 = ((v10 + 7 + ((v10 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v7 & 0x100000;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    v16 = (v15 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    v17 = AssociatedTypeWitness;
    v18 = ~v8;
    v19 = *(v5 + 16);
    v19(a1, a2, AssociatedTypeWitness);
    v26 = a1;
    v20 = ((a1 + v9) & ~v8);
    v21 = ((a2 + v9) & ~v8);
    v25 = *(v5 + 48);
    if (v25(v21, 1, v17))
    {
      memcpy(v20, v21, v10);
    }

    else
    {
      v19(v20, v21, v17);
      (*(v5 + 56))(v20, 0, 1, v17);
    }

    v22 = ((v20 + v8 + v10) & v18);
    v23 = ((v21 + v8 + v10) & v18);
    if (v25(v23, 1, v17))
    {
      memcpy(v22, v23, v10);
    }

    else
    {
      v19(v22, v23, v17);
      (*(v5 + 56))(v22, 0, 1, v17);
    }

    v16 = v26;
    *((v22 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v23 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v16;
}

uint64_t destroy for CubicKeyframe(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = v3;
  v12 = *(v3 + 8);
  v12(a1, AssociatedTypeWitness);
  v5 = *(v3 + 80);
  v6 = *(v3 + 64) + v5;
  v7 = ~v5;
  v8 = (v6 + a1) & ~v5;
  v9 = *(v4 + 48);
  if (!v9(v8, 1, AssociatedTypeWitness))
  {
    v12(v8, AssociatedTypeWitness);
  }

  if (*(v4 + 84))
  {
    v10 = v6 + v8;
  }

  else
  {
    v10 = v6 + v8 + 1;
  }

  result = v9(v10 & v7, 1, AssociatedTypeWitness);
  if (!result)
  {

    return v12(v10 & v7, AssociatedTypeWitness);
  }

  return result;
}

void *initializeWithCopy for CubicKeyframe(void *a1, const void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 16);
  v7(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 + 64);
  v9 = *(v5 + 80);
  v19 = ~v9;
  v10 = ((a1 + v8 + v9) & ~v9);
  v11 = ((a2 + v8 + v9) & ~v9);
  v12 = *(v6 + 48);
  v18 = v7;
  if (v12(v11, 1, AssociatedTypeWitness))
  {
    v13 = *(v6 + 84);
    if (v13)
    {
      v14 = v8;
    }

    else
    {
      v14 = v8 + 1;
    }

    memcpy(v10, v11, v14);
  }

  else
  {
    v7(v10, v11, AssociatedTypeWitness);
    (*(v6 + 56))(v10, 0, 1, AssociatedTypeWitness);
    v13 = *(v6 + 84);
  }

  if (!v13)
  {
    ++v8;
  }

  v15 = ((v10 + v9 + v8) & v19);
  v16 = ((v11 + v9 + v8) & v19);
  if (v12(v16, 1, AssociatedTypeWitness))
  {
    memcpy(v15, v16, v8);
  }

  else
  {
    v18(v15, v16, AssociatedTypeWitness);
    (*(v6 + 56))(v15, 0, 1, AssociatedTypeWitness);
  }

  *((v15 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v16 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for CubicKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v21 = *(v5 + 24);
  v21(a1, a2, AssociatedTypeWitness);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v22 = ~v8;
  v23 = a1;
  v9 = ((v7 + v8 + a1) & ~v8);
  v10 = ((v7 + v8 + a2) & ~v8);
  v11 = *(v6 + 48);
  LODWORD(a1) = v11(v9, 1, AssociatedTypeWitness);
  v12 = v11(v10, 1, AssociatedTypeWitness);
  if (a1)
  {
    if (!v12)
    {
      (*(v6 + 16))(v9, v10, AssociatedTypeWitness);
      (*(v6 + 56))(v9, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v13 = *(v6 + 84);
  }

  else
  {
    if (!v12)
    {
      v21(v9, v10, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(v9, AssociatedTypeWitness);
    v13 = *(v6 + 84);
  }

  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = v7 + 1;
  }

  memcpy(v9, v10, v14);
LABEL_12:
  if (*(v6 + 84))
  {
    v15 = v7;
  }

  else
  {
    v15 = v7 + 1;
  }

  v16 = ((v9 + v8 + v15) & v22);
  v17 = ((v10 + v8 + v15) & v22);
  v18 = v11(v16, 1, AssociatedTypeWitness);
  v19 = v11(v17, 1, AssociatedTypeWitness);
  if (!v18)
  {
    if (!v19)
    {
      v21(v16, v17, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v6 + 8))(v16, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v19)
  {
LABEL_20:
    memcpy(v16, v17, v15);
    goto LABEL_21;
  }

  (*(v6 + 16))(v16, v17, AssociatedTypeWitness);
  (*(v6 + 56))(v16, 0, 1, AssociatedTypeWitness);
LABEL_21:
  *((v16 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v17 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v23;
}

void *initializeWithTake for CubicKeyframe(void *a1, const void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 32);
  v7(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 + 64);
  v9 = *(v5 + 80);
  v19 = ~v9;
  v10 = ((a1 + v8 + v9) & ~v9);
  v11 = ((a2 + v8 + v9) & ~v9);
  v12 = *(v6 + 48);
  v18 = v7;
  if (v12(v11, 1, AssociatedTypeWitness))
  {
    v13 = *(v6 + 84);
    if (v13)
    {
      v14 = v8;
    }

    else
    {
      v14 = v8 + 1;
    }

    memcpy(v10, v11, v14);
  }

  else
  {
    v7(v10, v11, AssociatedTypeWitness);
    (*(v6 + 56))(v10, 0, 1, AssociatedTypeWitness);
    v13 = *(v6 + 84);
  }

  if (!v13)
  {
    ++v8;
  }

  v15 = ((v10 + v9 + v8) & v19);
  v16 = ((v11 + v9 + v8) & v19);
  if (v12(v16, 1, AssociatedTypeWitness))
  {
    memcpy(v15, v16, v8);
  }

  else
  {
    v18(v15, v16, AssociatedTypeWitness);
    (*(v6 + 56))(v15, 0, 1, AssociatedTypeWitness);
  }

  *((v15 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v16 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for CubicKeyframe(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v21 = *(v5 + 40);
  v21(a1, a2, AssociatedTypeWitness);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v22 = ~v8;
  v23 = a1;
  v9 = ((v7 + v8 + a1) & ~v8);
  v10 = ((v7 + v8 + a2) & ~v8);
  v11 = *(v6 + 48);
  LODWORD(a1) = v11(v9, 1, AssociatedTypeWitness);
  v12 = v11(v10, 1, AssociatedTypeWitness);
  if (a1)
  {
    if (!v12)
    {
      (*(v6 + 32))(v9, v10, AssociatedTypeWitness);
      (*(v6 + 56))(v9, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v13 = *(v6 + 84);
  }

  else
  {
    if (!v12)
    {
      v21(v9, v10, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(v9, AssociatedTypeWitness);
    v13 = *(v6 + 84);
  }

  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = v7 + 1;
  }

  memcpy(v9, v10, v14);
LABEL_12:
  if (*(v6 + 84))
  {
    v15 = v7;
  }

  else
  {
    v15 = v7 + 1;
  }

  v16 = ((v9 + v8 + v15) & v22);
  v17 = ((v10 + v8 + v15) & v22);
  v18 = v11(v16, 1, AssociatedTypeWitness);
  v19 = v11(v17, 1, AssociatedTypeWitness);
  if (!v18)
  {
    if (!v19)
    {
      v21(v16, v17, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v6 + 8))(v16, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v19)
  {
LABEL_20:
    memcpy(v16, v17, v15);
    goto LABEL_21;
  }

  (*(v6 + 32))(v16, v17, AssociatedTypeWitness);
  (*(v6 + 56))(v16, 0, 1, AssociatedTypeWitness);
LABEL_21:
  *((v16 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v17 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v23;
}

uint64_t type metadata completion function for _ResolvedKeyframeTrackContent.Segment()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _ResolvedKeyframeTrackContent.Cubic();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for _ResolvedKeyframeTrackContent._Spring();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for _ResolvedKeyframeTrackContent.Linear();
        if (v4 <= 0x3F)
        {
          swift_initEnumMetadataMultiPayload();
          return 0;
        }
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _ResolvedKeyframeTrackContent.Segment(void *a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v6 + v7;
  if (*(v5 + 84))
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v10 = v6 + 1;
  }

  v11 = v10 + v7;
  v12 = v10 + 7;
  v13 = ((v10 + 7 + ((v11 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v6)
  {
    v13 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v14 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = ((v12 + ((v14 + v7 + 24) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 > v13)
  {
    v13 = ((v12 + ((v14 + v7 + 24) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v16 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  v18 = v7 & 0x100000;
  v19 = v8 <= 7 && v18 == 0;
  if (!v19 || v17 + 1 > 0x18)
  {
    v23 = *a2;
    *a1 = *a2;
    v24 = (v23 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));

    return v24;
  }

  v20 = *(a2 + v17);
  v54 = v16;
  if (v20 >= 4)
  {
    if (v17 <= 3)
    {
      v21 = v17;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a2;
        if (v17 >= 4)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = *a2 | (*(a2 + 2) << 16);
          if (v17 < 4)
          {
            goto LABEL_34;
          }

LABEL_32:
          v20 = v22 + 4;
          goto LABEL_35;
        }

        v22 = *a2;
        if (v17 >= 4)
        {
          goto LABEL_32;
        }
      }

LABEL_34:
      v20 = (v22 | ((v20 - 4) << (8 * v17))) + 4;
      goto LABEL_35;
    }

    if (!v21)
    {
      goto LABEL_35;
    }

    v22 = *a2;
    if (v17 < 4)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_35:
  v52 = AssociatedTypeWitness;
  v53 = *(v5 + 84);
  v55 = v15;
  v56 = v10 + 7;
  v57 = (v6 + v8) & ~v8;
  __n = v10;
  v59 = ~v8;
  v51 = *(v5 + 16);
  (v51)(a1, a2);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v24 = a1;
      v26 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = *v27;
      *(v26 + 16) = *(v27 + 16);
      *v26 = v28;
      v29 = (v26 + 24);
      v30 = (v27 + 24);
      if ((*(v5 + 48))(v27 + 24, 1, v52))
      {
        v31 = __n;
        memcpy(v29, v30, __n);
      }

      else
      {
        v51(v29, v30, v52);
        (*(v5 + 56))(v29, 0, 1, v52);
        v31 = __n;
      }

      v40 = v6 + 8;
      if (v53)
      {
        v40 = v6 + 7;
      }

      v41 = (v29 + v40) & 0xFFFFFFFFFFFFFFF8;
      v42 = (v30 + v40) & 0xFFFFFFFFFFFFFFF8;
      v43 = *v42;
      *(v41 + 8) = *(v42 + 8);
      *v41 = v43;
      v44 = ((v56 + ((v57 + v8 + v31) & v59)) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v44 <= v6)
      {
        v44 = v6;
      }

      if (v55 > v44)
      {
        v44 = v55;
      }

      if (v54 > v44)
      {
        v44 = v54;
      }

      *(a1 + v44) = 2;
    }

    else
    {
      v24 = a1;
      v34 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v35 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v34 = *v35;
      v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
      v37 = *v36;
      v38 = *(v36 + 16);
      v39 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(v39 + 32) = *(v36 + 32);
      *v39 = v37;
      *(v39 + 16) = v38;
      *(a1 + v17) = 3;
    }
  }

  else if (v20)
  {
    v24 = a1;
    v32 = ((a1 + v9) & v59);
    v33 = ((a2 + v9) & v59);
    v50 = *(v5 + 48);
    if (v50(v33, 1, v52))
    {
      memcpy(v32, v33, __n);
    }

    else
    {
      v51(v32, v33, v52);
      (*(v5 + 56))(v32, 0, 1, v52);
    }

    v45 = ((v32 + v11) & v59);
    v46 = ((v33 + v11) & v59);
    if (v50(v46, 1, v52))
    {
      v47 = __n;
      memcpy(v45, v46, __n);
    }

    else
    {
      v51(v45, v46, v52);
      (*(v5 + 56))(v45, 0, 1, v52);
      v47 = __n;
    }

    v48 = v6 + 8;
    if (v53)
    {
      v48 = v6 + 7;
    }

    *((v45 + v48) & 0xFFFFFFFFFFFFFFF8) = *((v46 + v48) & 0xFFFFFFFFFFFFFFF8);
    v49 = ((v56 + ((v57 + v8 + v47) & v59)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v49 <= v6)
    {
      v49 = v6;
    }

    if (v55 > v49)
    {
      v49 = v55;
    }

    if (v54 > v49)
    {
      v49 = v54;
    }

    *(a1 + v49) = 1;
  }

  else
  {
    v24 = a1;
    *(a1 + v17) = 0;
  }

  return v24;
}

uint64_t destroy for _ResolvedKeyframeTrackContent.Segment(unsigned __int16 *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  v6 = *(v3 + 80);
  if (*(v3 + 84))
  {
    v7 = *(v3 + 64);
  }

  else
  {
    v7 = v5 + 1;
  }

  v8 = ((v7 + 7 + ((v7 + v6 + ((v5 + v6) & ~v6)) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 <= v5)
  {
    v8 = v5;
  }

  v9 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 24) & ~v6;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (((v7 + 7 + v10) & 0xFFFFFFFFFFFFFFF8) + 9 > v8)
  {
    v8 = ((v7 + 7 + v10) & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  if (v11 > v8)
  {
    v8 = v11;
  }

  v12 = *(a1 + v8);
  if (v12 >= 4)
  {
    if (v8 <= 3)
    {
      v13 = v8;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a1;
        if (v8 >= 4)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = *a1 | (*(a1 + 2) << 16);
          if (v8 < 4)
          {
            goto LABEL_25;
          }

LABEL_23:
          v12 = v14 + 4;
          goto LABEL_26;
        }

        v14 = *a1;
        if (v8 >= 4)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      v12 = (v14 | ((v12 - 4) << (8 * v8))) + 4;
      goto LABEL_26;
    }

    if (!v13)
    {
      goto LABEL_26;
    }

    v14 = *a1;
    if (v8 < 4)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_26:
  v15 = ~v6;
  v20 = *(v4 + 8);
  result = v20(a1, AssociatedTypeWitness);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      return result;
    }

    v19 = (((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & v15;
    result = (*(v4 + 48))(v19, 1, AssociatedTypeWitness);
    if (result)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (v12)
  {
    v17 = (a1 + v5 + v6) & v15;
    v18 = *(v4 + 48);
    if (!v18(v17, 1, AssociatedTypeWitness))
    {
      v20(v17, AssociatedTypeWitness);
    }

    v19 = (v17 + v6 + v7) & v15;
    result = (v18)(v19, 1, AssociatedTypeWitness);
    if (!result)
    {
LABEL_35:

      return v20(v19, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t initializeWithCopy for _ResolvedKeyframeTrackContent.Segment(uint64_t a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  v46 = *(v4 + 84);
  if (v46)
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = v5 + 1;
  }

  v49 = (v5 + v6) & ~v6;
  v45 = v8 + v6;
  v9 = ((v8 + 7 + ((v8 + v6 + v49) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 <= v5)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v10 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  v12 = (v8 + 7 + ((v6 + v10 + 24) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  if (v12 + 9 > v9)
  {
    v9 = v12 + 9;
  }

  v50 = v11;
  if (v11 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(a2 + v13);
  v47 = v12 + 9;
  v48 = v8 + 7;
  if (v14 >= 4)
  {
    if (v13 <= 3)
    {
      v15 = v13;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
        if (v13 >= 4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a2 | (*(a2 + 2) << 16);
          if (v13 < 4)
          {
            goto LABEL_26;
          }

LABEL_24:
          v14 = v16 + 4;
          goto LABEL_27;
        }

        v16 = *a2;
        if (v13 >= 4)
        {
          goto LABEL_24;
        }
      }

LABEL_26:
      v14 = (v16 | ((v14 - 4) << (8 * v13))) + 4;
      goto LABEL_27;
    }

    if (!v15)
    {
      goto LABEL_27;
    }

    v16 = *a2;
    if (v13 < 4)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_27:
  __n = v8;
  v52 = ~v6;
  v17 = *(v4 + 16);
  v17(a1, a2, AssociatedTypeWitness);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v19 = (a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = *v20;
      *(v19 + 16) = *(v20 + 16);
      *v19 = v21;
      v22 = ((v19 + v6 + 24) & v52);
      v23 = ((v20 + v6 + 24) & v52);
      if ((*(v4 + 48))(v23, 1, AssociatedTypeWitness))
      {
        v24 = __n;
        memcpy(v22, v23, __n);
      }

      else
      {
        v17(v22, v23, AssociatedTypeWitness);
        (*(v4 + 56))(v22, 0, 1, AssociatedTypeWitness);
        v24 = __n;
      }

      v32 = v5 + 8;
      if (v46)
      {
        v32 = v5 + 7;
      }

      v33 = (v22 + v32) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v23 + v32) & 0xFFFFFFFFFFFFFFF8;
      v35 = *v34;
      *(v33 + 8) = *(v34 + 8);
      *v33 = v35;
      v36 = ((v48 + ((v49 + v6 + v24) & v52)) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v36 <= v5)
      {
        v36 = v5;
      }

      if (v47 > v36)
      {
        v36 = v47;
      }

      if (v50 <= v36)
      {
        v13 = v36;
      }

      else
      {
        v13 = v50;
      }

      v18 = 2;
    }

    else
    {
      v26 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v27 = ((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v27 = *v26;
      v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
      v29 = *v28;
      v30 = *(v28 + 16);
      v31 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(v31 + 32) = *(v28 + 32);
      *v31 = v29;
      *(v31 + 16) = v30;
      v18 = 3;
    }
  }

  else if (v14)
  {
    __dst = ((v7 + a1) & v52);
    v25 = ((a2 + v7) & v52);
    v43 = *(v4 + 48);
    if (v43(v25, 1, AssociatedTypeWitness))
    {
      memcpy(__dst, v25, __n);
    }

    else
    {
      v17(__dst, v25, AssociatedTypeWitness);
      (*(v4 + 56))(__dst, 0, 1, AssociatedTypeWitness);
    }

    v37 = ((__dst + v45) & v52);
    v38 = ((v25 + v45) & v52);
    if (v43(v38, 1, AssociatedTypeWitness))
    {
      v39 = __n;
      memcpy(v37, v38, __n);
    }

    else
    {
      v17(v37, v38, AssociatedTypeWitness);
      (*(v4 + 56))(v37, 0, 1, AssociatedTypeWitness);
      v39 = __n;
    }

    v40 = v5 + 8;
    if (v46)
    {
      v40 = v5 + 7;
    }

    *((v37 + v40) & 0xFFFFFFFFFFFFFFF8) = *((v38 + v40) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v48 + ((v49 + v6 + v39) & v52)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v41 <= v5)
    {
      v41 = v5;
    }

    if (v47 > v41)
    {
      v41 = v47;
    }

    if (v50 <= v41)
    {
      v13 = v41;
    }

    else
    {
      v13 = v50;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  result = a1;
  *(a1 + v13) = v18;
  return result;
}

unsigned __int16 *assignWithCopy for _ResolvedKeyframeTrackContent.Segment(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    v6 = *(v5 + 64);
    v7 = *(v5 + 80);
    v51 = v6 + v7;
    v54 = *(v5 + 84);
    if (v54)
    {
      v8 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    else
    {
      v8 = v6 + 1;
    }

    v57 = (v6 + v7) & ~v7;
    __n = v8;
    v9 = v8 + 7;
    v10 = ((v8 + 7 + ((v8 + v7 + v57) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v10 <= v6)
    {
      v10 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    v53 = v8 + v7;
    v11 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    v13 = (v9 + ((v7 + v11 + 24) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
    if (v13 + 9 > v10)
    {
      v10 = v13 + 9;
    }

    if (v12 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    v15 = *(a1 + v14);
    v55 = v13 + 9;
    v56 = v9;
    if (v15 < 4)
    {
LABEL_28:
      v60 = ~v7;
      v18 = *(v5 + 8);
      v59 = AssociatedTypeWitness;
      v18(a1, AssociatedTypeWitness);
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v20 = (((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 24) & v60;
          if (!(*(v5 + 48))(v20, 1, v59))
          {
LABEL_36:
            v18(v20, v59);
          }
        }
      }

      else if (v15)
      {
        v19 = (a1 + v51) & v60;
        v50 = *(v5 + 48);
        if (!v50(v19, 1, v59))
        {
          v18(v19, v59);
        }

        v20 = (v53 + v19) & v60;
        if (!v50(v20, 1, v59))
        {
          goto LABEL_36;
        }
      }

      v21 = *(a2 + v14);
      if (v21 < 4)
      {
        goto LABEL_53;
      }

      if (v14 <= 3)
      {
        v22 = v14;
      }

      else
      {
        v22 = 4;
      }

      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v23 = *a2;
          if (v14 >= 4)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v22 == 3)
          {
            v23 = *a2 | (*(a2 + 2) << 16);
            if (v14 < 4)
            {
              goto LABEL_52;
            }

LABEL_50:
            v21 = v23 + 4;
            goto LABEL_53;
          }

          v23 = *a2;
          if (v14 >= 4)
          {
            goto LABEL_50;
          }
        }

LABEL_52:
        v21 = (v23 | ((v21 - 4) << (8 * v14))) + 4;
LABEL_53:
        v24 = *(v5 + 16);
        v24(a1, a2, v59);
        if (v21 > 1)
        {
          if (v21 != 2)
          {
            v33 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
            v34 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v33 = *v34;
            v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
            v36 = *v35;
            v37 = *(v35 + 16);
            v38 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v38 + 32) = *(v35 + 32);
            *v38 = v36;
            *(v38 + 16) = v37;
            *(a1 + v14) = 3;
            return a1;
          }

          v25 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
          v26 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
          v27 = *v26;
          *(v25 + 16) = *(v26 + 16);
          *v25 = v27;
          v28 = ((v25 + v7 + 24) & v60);
          v29 = ((v26 + v7 + 24) & v60);
          if ((*(v5 + 48))(v29, 1, v59))
          {
            v30 = __n;
            memcpy(v28, v29, __n);
          }

          else
          {
            v24(v28, v29, v59);
            (*(v5 + 56))(v28, 0, 1, v59);
            v30 = __n;
          }

          v39 = v6 + 8;
          if (v54)
          {
            v39 = v6 + 7;
          }

          v40 = (v28 + v39) & 0xFFFFFFFFFFFFFFF8;
          v41 = (v29 + v39) & 0xFFFFFFFFFFFFFFF8;
          v42 = *v41;
          *(v40 + 8) = *(v41 + 8);
          *v40 = v42;
          v43 = ((v56 + ((v57 + v7 + v30) & v60)) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v43 <= v6)
          {
            v43 = v6;
          }

          if (v55 > v43)
          {
            v43 = v55;
          }

          if (v12 > v43)
          {
            v43 = v12;
          }

          v44 = 2;
        }

        else
        {
          if (!v21)
          {
            *(a1 + v14) = 0;
            return a1;
          }

          v31 = ((a1 + v51) & v60);
          v32 = ((a2 + v51) & v60);
          v52 = *(v5 + 48);
          if (v52(v32, 1, v59))
          {
            memcpy(v31, v32, __n);
          }

          else
          {
            v24(v31, v32, v59);
            (*(v5 + 56))(v31, 0, 1, v59);
          }

          v45 = ((v31 + v53) & v60);
          v46 = ((v32 + v53) & v60);
          if (v52(v46, 1, v59))
          {
            v47 = __n;
            memcpy(v45, v46, __n);
          }

          else
          {
            v24(v45, v46, v59);
            (*(v5 + 56))(v45, 0, 1, v59);
            v47 = __n;
          }

          v48 = v6 + 8;
          if (v54)
          {
            v48 = v6 + 7;
          }

          *((v45 + v48) & 0xFFFFFFFFFFFFFFF8) = *((v46 + v48) & 0xFFFFFFFFFFFFFFF8);
          v43 = ((v56 + ((v57 + v7 + v47) & v60)) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v43 <= v6)
          {
            v43 = v6;
          }

          if (v55 > v43)
          {
            v43 = v55;
          }

          if (v12 > v43)
          {
            v43 = v12;
          }

          v44 = 1;
        }

        *(a1 + v43) = v44;
        return a1;
      }

      if (!v22)
      {
        goto LABEL_53;
      }

      v23 = *a2;
      if (v14 < 4)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (v14 <= 3)
    {
      v16 = v14;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a1;
        if (v14 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
          if (v14 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v15 = v17 + 4;
          goto LABEL_28;
        }

        v17 = *a1;
        if (v14 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v15 = (v17 | ((v15 - 4) << (8 * v14))) + 4;
      goto LABEL_28;
    }

    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = *a1;
    if (v14 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  return a1;
}

uint64_t initializeWithTake for _ResolvedKeyframeTrackContent.Segment(uint64_t a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  v46 = *(v4 + 84);
  if (v46)
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = v5 + 1;
  }

  v49 = (v5 + v6) & ~v6;
  v45 = v8 + v6;
  v9 = ((v8 + 7 + ((v8 + v6 + v49) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 <= v5)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v10 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  v12 = (v8 + 7 + ((v6 + v10 + 24) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  if (v12 + 9 > v9)
  {
    v9 = v12 + 9;
  }

  v50 = v11;
  if (v11 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(a2 + v13);
  v47 = v12 + 9;
  v48 = v8 + 7;
  if (v14 >= 4)
  {
    if (v13 <= 3)
    {
      v15 = v13;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
        if (v13 >= 4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a2 | (*(a2 + 2) << 16);
          if (v13 < 4)
          {
            goto LABEL_26;
          }

LABEL_24:
          v14 = v16 + 4;
          goto LABEL_27;
        }

        v16 = *a2;
        if (v13 >= 4)
        {
          goto LABEL_24;
        }
      }

LABEL_26:
      v14 = (v16 | ((v14 - 4) << (8 * v13))) + 4;
      goto LABEL_27;
    }

    if (!v15)
    {
      goto LABEL_27;
    }

    v16 = *a2;
    if (v13 < 4)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_27:
  __n = v8;
  v52 = ~v6;
  v17 = *(v4 + 32);
  v17(a1, a2, AssociatedTypeWitness);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v19 = (a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = *v20;
      *(v19 + 16) = *(v20 + 16);
      *v19 = v21;
      v22 = ((v19 + v6 + 24) & v52);
      v23 = ((v20 + v6 + 24) & v52);
      if ((*(v4 + 48))(v23, 1, AssociatedTypeWitness))
      {
        v24 = __n;
        memcpy(v22, v23, __n);
      }

      else
      {
        v17(v22, v23, AssociatedTypeWitness);
        (*(v4 + 56))(v22, 0, 1, AssociatedTypeWitness);
        v24 = __n;
      }

      v32 = v5 + 8;
      if (v46)
      {
        v32 = v5 + 7;
      }

      v33 = (v22 + v32) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v23 + v32) & 0xFFFFFFFFFFFFFFF8;
      v35 = *v34;
      *(v33 + 8) = *(v34 + 8);
      *v33 = v35;
      v36 = ((v48 + ((v49 + v6 + v24) & v52)) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v36 <= v5)
      {
        v36 = v5;
      }

      if (v47 > v36)
      {
        v36 = v47;
      }

      if (v50 <= v36)
      {
        v13 = v36;
      }

      else
      {
        v13 = v50;
      }

      v18 = 2;
    }

    else
    {
      v26 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v27 = ((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v27 = *v26;
      v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
      v29 = *v28;
      v30 = *(v28 + 16);
      v31 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(v31 + 32) = *(v28 + 32);
      *v31 = v29;
      *(v31 + 16) = v30;
      v18 = 3;
    }
  }

  else if (v14)
  {
    __dst = ((v7 + a1) & v52);
    v25 = ((a2 + v7) & v52);
    v43 = *(v4 + 48);
    if (v43(v25, 1, AssociatedTypeWitness))
    {
      memcpy(__dst, v25, __n);
    }

    else
    {
      v17(__dst, v25, AssociatedTypeWitness);
      (*(v4 + 56))(__dst, 0, 1, AssociatedTypeWitness);
    }

    v37 = ((__dst + v45) & v52);
    v38 = ((v25 + v45) & v52);
    if (v43(v38, 1, AssociatedTypeWitness))
    {
      v39 = __n;
      memcpy(v37, v38, __n);
    }

    else
    {
      v17(v37, v38, AssociatedTypeWitness);
      (*(v4 + 56))(v37, 0, 1, AssociatedTypeWitness);
      v39 = __n;
    }

    v40 = v5 + 8;
    if (v46)
    {
      v40 = v5 + 7;
    }

    *((v37 + v40) & 0xFFFFFFFFFFFFFFF8) = *((v38 + v40) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v48 + ((v49 + v6 + v39) & v52)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v41 <= v5)
    {
      v41 = v5;
    }

    if (v47 > v41)
    {
      v41 = v47;
    }

    if (v50 <= v41)
    {
      v13 = v41;
    }

    else
    {
      v13 = v50;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  result = a1;
  *(a1 + v13) = v18;
  return result;
}

unsigned __int16 *assignWithTake for _ResolvedKeyframeTrackContent.Segment(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    v6 = *(v5 + 64);
    v7 = *(v5 + 80);
    v51 = v6 + v7;
    v54 = *(v5 + 84);
    if (v54)
    {
      v8 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    else
    {
      v8 = v6 + 1;
    }

    v57 = (v6 + v7) & ~v7;
    __n = v8;
    v9 = v8 + 7;
    v10 = ((v8 + 7 + ((v8 + v7 + v57) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v10 <= v6)
    {
      v10 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    v53 = v8 + v7;
    v11 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    v13 = (v9 + ((v7 + v11 + 24) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
    if (v13 + 9 > v10)
    {
      v10 = v13 + 9;
    }

    if (v12 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    v15 = *(a1 + v14);
    v55 = v13 + 9;
    v56 = v9;
    if (v15 < 4)
    {
LABEL_28:
      v60 = ~v7;
      v18 = *(v5 + 8);
      v59 = AssociatedTypeWitness;
      v18(a1, AssociatedTypeWitness);
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v20 = (((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 24) & v60;
          if (!(*(v5 + 48))(v20, 1, v59))
          {
LABEL_36:
            v18(v20, v59);
          }
        }
      }

      else if (v15)
      {
        v19 = (a1 + v51) & v60;
        v50 = *(v5 + 48);
        if (!v50(v19, 1, v59))
        {
          v18(v19, v59);
        }

        v20 = (v53 + v19) & v60;
        if (!v50(v20, 1, v59))
        {
          goto LABEL_36;
        }
      }

      v21 = *(a2 + v14);
      if (v21 < 4)
      {
        goto LABEL_53;
      }

      if (v14 <= 3)
      {
        v22 = v14;
      }

      else
      {
        v22 = 4;
      }

      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v23 = *a2;
          if (v14 >= 4)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v22 == 3)
          {
            v23 = *a2 | (*(a2 + 2) << 16);
            if (v14 < 4)
            {
              goto LABEL_52;
            }

LABEL_50:
            v21 = v23 + 4;
            goto LABEL_53;
          }

          v23 = *a2;
          if (v14 >= 4)
          {
            goto LABEL_50;
          }
        }

LABEL_52:
        v21 = (v23 | ((v21 - 4) << (8 * v14))) + 4;
LABEL_53:
        v24 = *(v5 + 32);
        v24(a1, a2, v59);
        if (v21 > 1)
        {
          if (v21 != 2)
          {
            v33 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
            v34 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v33 = *v34;
            v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
            v36 = *v35;
            v37 = *(v35 + 16);
            v38 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v38 + 32) = *(v35 + 32);
            *v38 = v36;
            *(v38 + 16) = v37;
            *(a1 + v14) = 3;
            return a1;
          }

          v25 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
          v26 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
          v27 = *v26;
          *(v25 + 16) = *(v26 + 16);
          *v25 = v27;
          v28 = ((v25 + v7 + 24) & v60);
          v29 = ((v26 + v7 + 24) & v60);
          if ((*(v5 + 48))(v29, 1, v59))
          {
            v30 = __n;
            memcpy(v28, v29, __n);
          }

          else
          {
            v24(v28, v29, v59);
            (*(v5 + 56))(v28, 0, 1, v59);
            v30 = __n;
          }

          v39 = v6 + 8;
          if (v54)
          {
            v39 = v6 + 7;
          }

          v40 = (v28 + v39) & 0xFFFFFFFFFFFFFFF8;
          v41 = (v29 + v39) & 0xFFFFFFFFFFFFFFF8;
          v42 = *v41;
          *(v40 + 8) = *(v41 + 8);
          *v40 = v42;
          v43 = ((v56 + ((v57 + v7 + v30) & v60)) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v43 <= v6)
          {
            v43 = v6;
          }

          if (v55 > v43)
          {
            v43 = v55;
          }

          if (v12 > v43)
          {
            v43 = v12;
          }

          v44 = 2;
        }

        else
        {
          if (!v21)
          {
            *(a1 + v14) = 0;
            return a1;
          }

          v31 = ((a1 + v51) & v60);
          v32 = ((a2 + v51) & v60);
          v52 = *(v5 + 48);
          if (v52(v32, 1, v59))
          {
            memcpy(v31, v32, __n);
          }

          else
          {
            v24(v31, v32, v59);
            (*(v5 + 56))(v31, 0, 1, v59);
          }

          v45 = ((v31 + v53) & v60);
          v46 = ((v32 + v53) & v60);
          if (v52(v46, 1, v59))
          {
            v47 = __n;
            memcpy(v45, v46, __n);
          }

          else
          {
            v24(v45, v46, v59);
            (*(v5 + 56))(v45, 0, 1, v59);
            v47 = __n;
          }

          v48 = v6 + 8;
          if (v54)
          {
            v48 = v6 + 7;
          }

          *((v45 + v48) & 0xFFFFFFFFFFFFFFF8) = *((v46 + v48) & 0xFFFFFFFFFFFFFFF8);
          v43 = ((v56 + ((v57 + v7 + v47) & v60)) & 0xFFFFFFFFFFFFFFF8) + 8;
          if (v43 <= v6)
          {
            v43 = v6;
          }

          if (v55 > v43)
          {
            v43 = v55;
          }

          if (v12 > v43)
          {
            v43 = v12;
          }

          v44 = 1;
        }

        *(a1 + v43) = v44;
        return a1;
      }

      if (!v22)
      {
        goto LABEL_53;
      }

      v23 = *a2;
      if (v14 < 4)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (v14 <= 3)
    {
      v16 = v14;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a1;
        if (v14 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
          if (v14 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v15 = v17 + 4;
          goto LABEL_28;
        }

        v17 = *a1;
        if (v14 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v15 = (v17 | ((v15 - 4) << (8 * v14))) + 4;
      goto LABEL_28;
    }

    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = *a1;
    if (v14 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for _ResolvedKeyframeTrackContent.Segment(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + v6 + 24) & ~v6;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (*(v4 + 84))
  {
    v10 = v5;
  }

  else
  {
    v10 = v5 + 1;
  }

  v11 = ((v10 + 7 + ((v10 + v6 + ((v5 + v6) & ~v6)) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 > v5)
  {
    v5 = v11;
  }

  if (((v10 + 7 + v8) & 0xFFFFFFFFFFFFFFF8) + 9 > v5)
  {
    v5 = ((v10 + 7 + v8) & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  if (v9 <= v5)
  {
    v9 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_32;
  }

  v12 = v9 + 1;
  v13 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 252) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v16 < 2)
    {
LABEL_32:
      v18 = *(a1 + v9);
      if (v18 >= 4)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_32;
  }

LABEL_21:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 253;
}

void storeEnumTagSinglePayload for _ResolvedKeyframeTrackContent.Segment(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + v8 + 24) & ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (*(v6 + 84))
  {
    v12 = v7;
  }

  else
  {
    v12 = v7 + 1;
  }

  v13 = ((v12 + 7 + ((v12 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 > v7)
  {
    v7 = v13;
  }

  if (((v12 + 7 + v10) & 0xFFFFFFFFFFFFFFF8) + 9 > v7)
  {
    v7 = ((v12 + 7 + v10) & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  if (v11 > v7)
  {
    v7 = v11;
  }

  v14 = v7 + 1;
  if (a3 < 0xFD)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 252) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFC)
  {
    v16 = a2 - 253;
    if (v14 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v7 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_46:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_46;
          }
        }

LABEL_43:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      a1[v7] = -a2;
      return;
    }

LABEL_31:
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_31;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_32;
  }
}

uint64_t getEnumTag for _ResolvedKeyframeTrackContent.Segment(unsigned __int16 *a1)
{
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = *(v2 + 64);
  v4 = *(v2 + 80);
  if (*(v2 + 84))
  {
    v5 = v3;
  }

  else
  {
    v5 = v3 + 1;
  }

  v6 = (v5 + v4 + ((v3 + v4) & ~v4)) & ~v4;
  v7 = v5 + 7;
  v8 = ((v7 + v6) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 <= v3)
  {
    v8 = v3;
  }

  v9 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + v4 + 24) & ~v4;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  v12 = ((v7 + v10) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v12 <= v8)
  {
    v12 = v8;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  result = *(a1 + v11);
  if (result >= 4)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a1;
        if (v11 >= 4)
        {
          return (v15 + 4);
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = *a1 | (*(a1 + 2) << 16);
          if (v11 < 4)
          {
            return (v15 | ((result - 4) << (8 * v11))) + 4;
          }

          return (v15 + 4);
        }

        v15 = *a1;
        if (v11 >= 4)
        {
          return (v15 + 4);
        }
      }

      return (v15 | ((result - 4) << (8 * v11))) + 4;
    }

    if (!v14)
    {
      return result;
    }

    v15 = *a1;
    if (v11 < 4)
    {
      return (v15 | ((result - 4) << (8 * v11))) + 4;
    }

    return (v15 + 4);
  }

  return result;
}

void destructiveInjectEnumTag for _ResolvedKeyframeTrackContent.Segment(_BYTE *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (*(v4 + 84))
  {
    v7 = *(v4 + 64);
  }

  else
  {
    v7 = v5 + 1;
  }

  v8 = (v7 + v6 + ((v5 + v6) & ~v6)) & ~v6;
  v9 = v7 + 7;
  v10 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 <= v5)
  {
    v10 = v5;
  }

  v11 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v6 + 24) & ~v6;
  if (a2 > 3)
  {
    v15 = ((v9 + v12) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v15 > v10)
    {
      v10 = v15;
    }

    if (((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v10)
    {
      v10 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    }

    v16 = a2 - 4;
    if (v10 < 4)
    {
      a1[v10] = (v16 >> (8 * v10)) + 4;
      if (!v10)
      {
        return;
      }

      v16 &= ~(-1 << (8 * v10));
    }

    else
    {
      a1[v10] = 4;
    }

    if (v10 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v10;
    }

    bzero(a1, v10);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      else
      {
        *a1 = v16;
      }
    }

    else if (v17 == 1)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }
  }

  else
  {
    v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    v14 = ((v9 + v12) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v14 > v10)
    {
      v10 = v14;
    }

    if (v13 > v10)
    {
      v10 = v13;
    }

    a1[v10] = a2;
  }
}

uint64_t instantiation function for generic protocol witness table for ArrayKeyframeTrackContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MergedKeyframeTrackContent<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for EmptyKeyframeTrackContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void specialized PrimitiveKeyframeTrackContent.bodyError()()
{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance _ImpossibleExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for SerialExecutor.enqueue(_:) in conformance _ImpossibleExecutor(a1, a2, a3, MEMORY[0x1E69E8560]);
}

{
  return protocol witness for SerialExecutor.enqueue(_:) in conformance _ImpossibleExecutor(a1, a2, a3, MEMORY[0x1E69E8570]);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance _ImpossibleExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = lazy protocol witness table accessor for type _ImpossibleExecutor and conformance _ImpossibleExecutor(&lazy protocol witness table cache variable for type _ImpossibleExecutor and conformance _ImpossibleExecutor, 255, type metadata accessor for _ImpossibleExecutor);

  return a4(a1, v6, v7);
}

uint64_t protocol witness for Executor.enqueue(_:) in conformance _ImpossibleExecutor(uint64_t a1)
{
  return MEMORY[0x1EEE6D878](a1, *v1);
}

{
  return MEMORY[0x1EEE6D888](a1, *v1);
}

uint64_t static _ImpossibleActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static _ImpossibleActor.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static _ImpossibleActor.shared = a1;
}

uint64_t (*static _ImpossibleActor.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

uint64_t key path getter for static _ImpossibleActor.shared : _ImpossibleActor.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static _ImpossibleActor.shared;
}

uint64_t key path setter for static _ImpossibleActor.shared : _ImpossibleActor.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static _ImpossibleActor.shared = v1;
}

uint64_t _ImpossibleActor.unownedExecutor.getter()
{
  type metadata accessor for _ImpossibleExecutor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type _ImpossibleExecutor and conformance _ImpossibleExecutor(&lazy protocol witness table cache variable for type _ImpossibleExecutor and conformance _ImpossibleExecutor, 255, type metadata accessor for _ImpossibleExecutor);
  return SerialExecutor.asUnownedSerialExecutor()();
}

uint64_t protocol witness for Actor.unownedExecutor.getter in conformance _ImpossibleActor()
{
  type metadata accessor for _ImpossibleExecutor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type _ImpossibleExecutor and conformance _ImpossibleExecutor(&lazy protocol witness table cache variable for type _ImpossibleExecutor and conformance _ImpossibleExecutor, 255, type metadata accessor for _ImpossibleExecutor);
  return SerialExecutor.asUnownedSerialExecutor()();
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance _ImpossibleActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance _ImpossibleActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for _ImpossibleActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t lazy protocol witness table accessor for type _ImpossibleExecutor and conformance _ImpossibleExecutor(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static PhaseAnimator.Behavior.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      if (v2 != v3)
      {
        v4 = *(*v2 + 88);
        swift_retain_n();
        swift_retain_n();
        LOBYTE(v4) = v4(v3);

        return v4 & 1;
      }

      return 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t PhaseAnimator.init<A, B>(_:trigger:content:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28[1] = a7;
  v30 = a6;
  v31 = a5;
  v32 = a4;
  v29 = a3;
  v17 = *(a10 - 8);
  v28[2] = a14;
  MEMORY[0x1EEE9AC00](a1);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  (*(v20 + 16))(v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a9);
  v23 = Array.init<A>(_:)();
  v24 = v29;
  v25 = v30;
  *a8 = v23;
  *(a8 + 8) = v24;
  v26 = v32;
  *(a8 + 24) = v31;
  *(a8 + 32) = v25;
  *(a8 + 16) = v26;
  (*(v17 + 16))(v19, a2, a10);
  AnyEquatable.init<A>(_:)(v19, a10, &v33);
  (*(v17 + 8))(a2, a10);
  result = (*(v20 + 8))(a1, a9);
  *(a8 + 40) = v33;
  return result;
}

uint64_t PhaseAnimator.init<A>(_:content:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v19 = a5;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  (*(v13 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v16 = Array.init<A>(_:)();
  result = (*(v13 + 8))(a1, a6);
  *a7 = v16;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v19;
  *(a7 + 40) = 0;
  return result;
}

uint64_t PhaseAnimator.body.getter(void *a1)
{
  v25 = *v1;
  v26 = v1[1];
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  *&v32 = *v1;
  v5 = a1[2];
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v6 = a1[3];
    v7 = a1[4];
    v27 = a1[5];
    *&v32 = v5;
    *(&v32 + 1) = v6;
    *&v33 = v7;
    *(&v33 + 1) = v27;
    v8 = type metadata accessor for PhaseAnimator.EmptyPhasesView();
    swift_getWitnessTable();
    View.onAppear(perform:)(closure #1 in PhaseAnimator.body.getter, 0, v8);
    v36 = v32;
    v37 = v33;
    v9 = type metadata accessor for ModifiedContent();
    WitnessTable = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(&v36, v9, WitnessTable);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7);
    v11 = v40;
    v12 = v41;
    v32 = v40;
    v33 = v41;
    static ViewBuilder.buildExpression<A>(_:)(&v32, v9, WitnessTable);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v12);
    v13 = v36;
    v14 = v37;
    v28 = v36;
    v29 = v37;
    *&v32 = v5;
    *(&v32 + 1) = v6;
    *&v33 = v7;
    *(&v33 + 1) = v27;
    type metadata accessor for PhaseAnimator.StateTransitioningContainer();
    static ViewBuilder.buildEither<A, B>(first:)(&v28, v9, &v32);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v13);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v14);
  }

  else
  {
    v23 = a1[4];
    v24 = a1[3];
    v22 = a1[5];
    v32 = v25;
    v33 = v26;
    *&v34 = v3;
    *(&v34 + 1) = v4;
    *&v40 = v5;
    *(&v40 + 1) = v24;
    *&v41 = v23;
    *(&v41 + 1) = v22;
    v15 = type metadata accessor for PhaseAnimator.StateTransitioningContainer();
    static ViewBuilder.buildExpression<A>(_:)(&v32, v15, &protocol witness table for PhaseAnimator<A, B>.StateTransitioningContainer);

    v32 = v40;
    v33 = v41;
    v34 = v42;
    static ViewBuilder.buildExpression<A>(_:)(&v32, v15, &protocol witness table for PhaseAnimator<A, B>.StateTransitioningContainer);

    v28 = v36;
    v29 = v37;
    v30 = v38;
    v31 = v39;
    *&v32 = v5;
    *(&v32 + 1) = v24;
    *&v33 = v23;
    *(&v33 + 1) = v22;
    type metadata accessor for PhaseAnimator.EmptyPhasesView();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)(&v28, v15, &v32);
  }

  v16 = a1[3];
  v17 = a1[4];
  v18 = a1[5];
  *&v40 = v5;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  type metadata accessor for PhaseAnimator.EmptyPhasesView();
  type metadata accessor for ModifiedContent();
  *&v40 = v5;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  type metadata accessor for PhaseAnimator.StateTransitioningContainer();
  v19 = type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v32, v19, v20);
  return outlined consume of _ConditionalContent<ModifiedContent<PhaseAnimator<A, B>.EmptyPhasesView, _AppearanceActionModifier>, PhaseAnimator<A, B>.StateTransitioningContainer>.Storage<A, B>(v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35);
}

uint64_t closure #1 in PhaseAnimator.body.getter()
{
  static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t outlined consume of _ConditionalContent<ModifiedContent<PhaseAnimator<A, B>.EmptyPhasesView, _AppearanceActionModifier>, PhaseAnimator<A, B>.StateTransitioningContainer>.Storage<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a1);

    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3);
  }
}

uint64_t static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a3;
  v88 = *MEMORY[0x1E69E9840];
  v41 = *a1;
  v11 = a2[3];
  v79 = a2[2];
  v80 = v11;
  v81 = a2[4];
  v82 = *(a2 + 20);
  v12 = a2[1];
  v77 = *a2;
  v78 = v12;
  Attribute.init<A>(body:value:flags:update:)();
  v13 = AGCreateWeakAttribute();
  *&v72 = -1;
  BYTE8(v72) = 0;
  *&v83 = v10;
  *(&v83 + 1) = a4;
  *&v84 = a5;
  *(&v84 + 1) = a6;
  v52 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.AnimationCompletion();
  v14 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v72, partial apply for closure #1 in Attribute.init(value:), v51, v52, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v16 = AGCreateWeakAttribute();
  LODWORD(v10) = DWORD2(v78);
  v17 = HIDWORD(v78);
  v39 = HIDWORD(v78);
  v18 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v19 = *(v18 + 68);

  v74 = 0uLL;
  LODWORD(v75) = 0;
  LOBYTE(v53) = 1;
  LOBYTE(v69[0]) = 1;
  *&v72 = __PAIR64__(v17, v41);
  *(&v72 + 1) = __PAIR64__(v10, v19);
  *&v73 = v16;
  *(&v73 + 1) = v13;
  *(&v75 + 1) = 0;
  v76[0] = 1;
  *&v76[4] = *&v43[3];
  *&v76[1] = *v43;
  *&v76[8] = xmmword_18DD85500;
  *&v76[24] = 0;
  v76[28] = 1;
  *&v83 = a3;
  *(&v83 + 1) = a4;
  *&v84 = a5;
  *(&v84 + 1) = a6;
  v48 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value();
  *&v83 = a3;
  *(&v83 + 1) = a4;
  *&v84 = a5;
  *(&v84 + 1) = a6;
  v20 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child();
  v49 = v20;
  WitnessTable = swift_getWitnessTable();
  v21 = type metadata accessor for Attribute();
  v22 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v72, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v47, v20, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v23);
  v85 = v74;
  v86 = v75;
  v87[0] = *v76;
  *(v87 + 13) = *&v76[13];
  v83 = v72;
  v84 = v73;
  (*(*(v20 - 8) + 8))(&v83, v20);
  LODWORD(v20) = v63;
  v24 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  LODWORD(v10) = *(v24 + 68);

  closure #1 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(1, a3, a4, a5, a6);
  LODWORD(v24) = AGGraphCreateOffsetAttribute2();
  closure #2 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(1, a3, a4, a5, a6);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  *&v63 = __PAIR64__(v10, v39);
  *(&v63 + 1) = __PAIR64__(OffsetAttribute2, v24);
  *&v72 = a3;
  *(&v72 + 1) = a4;
  *&v73 = a5;
  *(&v73 + 1) = a6;
  v45 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.TransactionRule();
  v46 = swift_getWitnessTable();
  type metadata accessor for Attribute<Transaction>(0, &lazy cache variable for type metadata for Attribute<Transaction>, &type metadata for Transaction, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v63, closure #1 in Attribute.init<A>(_:)partial apply, v44, v45, MEMORY[0x1E69E73E0], v26, v22, v27);
  v40 = __PAIR64__(v20, v72);
  v28 = static PhaseAnimator.StateTransitioningContainer.appearanceHandler(_:_:)(v13, 1);
  v30 = v29;
  v31 = static PhaseAnimator.StateTransitioningContainer.appearanceHandler(_:_:)(v13, 0);
  *&v72 = v28;
  *(&v72 + 1) = v30;
  *&v73 = v31;
  *(&v73 + 1) = v32;

  v33 = Attribute.init<A>(body:value:flags:update:)();

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v65 = v79;
  v66 = v80;
  v67 = v81;
  v68 = v82;
  v63 = v77;
  v64 = v78;
  v35 = v79;
  LODWORD(v65) = 0;
  v72 = v77;
  v73 = v78;
  *&v76[16] = v82;
  v75 = v80;
  *v76 = v81;
  v74 = v65;
  v36 = *MEMORY[0x1E698D3F8];
  *&v69[0] = __PAIR64__(DWORD2(v78), v33);
  WORD4(v70) = 0;
  *(&v69[0] + 1) = 1;
  v69[1] = 0uLL;
  *&v70 = 0;
  HIDWORD(v70) = 0;
  v71 = v36;
  v59 = v69[0];
  v60 = 0uLL;
  v61 = v70;
  v62 = v36;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(&v77, &v53);
  outlined init with copy of _ViewInputs(&v72, &v53);
  lazy protocol witness table accessor for type AppearanceEffect and conformance AppearanceEffect();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of AppearanceEffect(v69);
  AGGraphSetFlags();
  v55 = v74;
  v56 = v75;
  v57 = *v76;
  v58 = *&v76[16];
  v53 = v72;
  v54 = v73;
  closure #3 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(&v53, v40, a3, a4, a5, a6, a7);
  outlined destroy of _ViewInputs(&v72);
  LODWORD(v65) = v35;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a7, &v63);
    AGSubgraphEndTreeElement();
  }

  v55 = v65;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v53 = v63;
  v54 = v64;
  return outlined destroy of _ViewInputs(&v53);
}

uint64_t closure #1 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v6 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value();
  v7 = *(v6 + 52);
  v11[2] = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, &type metadata for Transaction, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12;
}

uint64_t closure #2 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v6 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value();
  v7 = *(v6 + 56);
  v13[2] = v6;
  type metadata accessor for Attribute<Transaction>(0, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14;
}

uint64_t (*static PhaseAnimator.StateTransitioningContainer.appearanceHandler(_:_:)(unint64_t a1, char a2))()
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = swift_allocObject();
  specialized static GraphHost.currentHost.getter();
  swift_weakInit();

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 28) = v4;
  *(v6 + 32) = a2;
  return partial apply for closure #1 in static PhaseAnimator.StateTransitioningContainer.appearanceHandler(_:_:);
}

uint64_t closure #3 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 48);
  v53[2] = *(a1 + 32);
  v53[3] = v11;
  v53[4] = *(a1 + 64);
  v54 = *(a1 + 80);
  v12 = *(a1 + 16);
  v53[0] = *a1;
  v53[1] = v12;
  if (*(*(a4 - 8) + 64))
  {
    outlined init with copy of _ViewInputs(v53, v48);
    closure #1 in closure #3 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(1, a3, a4, a5, a6, type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value, partial apply for closure #1 in static PointerOffset.of(_:));
  }

  else
  {
    outlined init with copy of _ViewInputs(v53, v48);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v25);
  v16 = v25;
  *v48 = *a1;
  *&v48[12] = *(a1 + 12);
  v17 = *(a1 + 48);
  v49 = *(a1 + 32);
  v50 = v17;
  v51 = *(a1 + 64);
  v18 = *(a1 + 80);
  *&v48[28] = a2;
  v52 = v18;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v40 = v49;
  v41 = v50;
  v42 = v51;
  v43 = v52;
  v38 = *v48;
  v39 = *&v48[16];
  v20 = v49;
  LODWORD(v40) = 0;
  *v26 = v16;
  v44[0] = *v48;
  v44[1] = *&v48[16];
  v45 = v52;
  v44[3] = v50;
  v44[4] = v51;
  v44[2] = v40;
  v34 = v40;
  v35 = v50;
  v36 = v51;
  v37 = v52;
  v32 = *v48;
  v33 = *&v48[16];
  v21 = *(a6 + 24);
  outlined init with copy of _ViewInputs(v48, v46);
  outlined init with copy of _ViewInputs(v44, v46);
  v21(v26, &v32, a4, a6);
  v46[2] = v34;
  v46[3] = v35;
  v46[4] = v36;
  v47 = v37;
  v46[0] = v32;
  v46[1] = v33;
  outlined destroy of _ViewInputs(v46);
  LODWORD(v40) = v20;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v38);
    AGSubgraphEndTreeElement();
  }

  *v26 = *a1;
  *&v26[12] = *(a1 + 12);
  v27 = a2;
  v22 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = v22;
  v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  outlined destroy of _ViewInputs(v26);
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v32 = v38;
  v33 = v39;
  return outlined destroy of _ViewInputs(&v32);
}

uint64_t PhaseAnimator.StateTransitioningContainer.Child.view.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhaseAnimator.StateTransitioningContainer();
  Value = AGGraphGetValue();
  v4 = *(Value + 32);
  v3 = *(Value + 40);
  v6 = *(Value + 16);
  *a1 = *Value;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
}

uint64_t PhaseAnimator.StateTransitioningContainer.Child.Value.init(content:phaseChangeTransaction:phaseChangeTransactionSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value();
  *(a5 + *(result + 52)) = a2;
  v9 = a5 + *(result + 56);
  *v9 = a3;
  *(v9 + 4) = BYTE4(a3) & 1;
  return result;
}

uint64_t PhaseAnimator.StateTransitioningContainer.Child.clampedIndex.getter(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 7);
  v4 = *(v1 + 64);
  if ((v4 & 1) != 0 && v3)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = v1[1];
  v11 = *v1;
  v12 = v7;
  v13 = v2;
  v14 = *(v1 + 40);
  v15 = v3;
  v16 = v4;
  *v17 = *(v1 + 65);
  *&v17[12] = *(v1 + 77);
  PhaseAnimator.StateTransitioningContainer.Child.view.getter(&v10);
  v8 = v10;

  v9 = MEMORY[0x193ABF270](v8, v6);

  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else if (v9 - 1 >= v2)
  {
    return v2;
  }

  else
  {
    return v9 - 1;
  }

  return result;
}

Swift::Void __swiftcall PhaseAnimator.StateTransitioningContainer.Child.updateValue()()
{
  v2 = v0;
  v3 = *(v1 + 48);
  if (v3 != *AGGraphGetValue() >> 1)
  {
    *(v1 + 48) = *AGGraphGetValue() >> 1;
    *(v1 + 32) = 0;
    outlined consume of SafeAreaInsets.OptionalValue?(*(v1 + 72));
    *(v1 + 72) = 1;
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
    ++*(v1 + 40);
  }

  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  *&v39 = v5;
  *(&v39 + 1) = v4;
  *&v40 = v6;
  *(&v40 + 1) = v7;
  v8 = type metadata accessor for PhaseAnimator.StateTransitioningContainer();
  Value = AGGraphGetValue();
  v11 = v10;
  v13 = Value[1];
  v12 = Value[2];
  v39 = *Value;
  v40 = v13;
  v41 = v12;
  Attribute = AGWeakAttributeGetAttribute();
  v15 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v16 = *(v8 - 8);
    (*(v16 + 16))(&v35, &v39, v8);
    $defer #1 <A, B>() in PhaseAnimator.StateTransitioningContainer.Child.updateValue()(v1, &v39, v5, v4, v6, v7);
    (*(v16 + 8))(&v39, v8);
    return;
  }

  v33 = *(v8 - 8);
  (*(v33 + 16))(&v35, &v39, v8);
  v17 = AGGraphGetValue();
  if (v18)
  {
    if (*v17 == 1)
    {
      if (!*(&v41 + 1))
      {
        PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(*(v1 + 32));
      }
    }

    else
    {
      *(v1 + 32) = 0;
      outlined consume of SafeAreaInsets.OptionalValue?(*(v1 + 72));
      *(v1 + 72) = 1;
      *(v1 + 56) = 0;
      *(v1 + 64) = 1;
      ++*(v1 + 40);
    }
  }

  if (v11)
  {
    v19 = *(v1 + 56);
    v20 = *(v1 + 64);
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
    if (v20 == 1 && v19 && !*(&v41 + 1))
    {
      PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(*(v1 + 32));
    }
  }

  v21 = *(v1 + 72);
  if (v21 != 1)
  {
    v32 = v7;
    v22 = *(&v41 + 1);
    v34 = *(v1 + 72);
    v35 = *(&v41 + 1);
    outlined copy of SafeAreaInsets.OptionalValue?(v21);

    v23 = static PhaseAnimator.Behavior.== infix(_:_:)(&v35, &v34);

    if (v23)
    {
      goto LABEL_17;
    }

    if (!v21)
    {
      v7 = v32;
      if (v22)
      {
        PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(0);
      }

      goto LABEL_28;
    }

    v7 = v32;
    if (v22)
    {
      if (v21 != v22)
      {
        v31 = *(*v21 + 88);

        if (v31(v24))
        {

          outlined consume of SafeAreaInsets.OptionalValue?(v21);
          goto LABEL_18;
        }

        PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(0);

LABEL_17:
        outlined consume of SafeAreaInsets.OptionalValue?(v21);
LABEL_18:
        v7 = v32;
        goto LABEL_28;
      }
    }

    else
    {
      PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(*(v1 + 32));
    }

    outlined consume of SafeAreaInsets.OptionalValue?(v21);
  }

LABEL_28:
  v25 = *(&v41 + 1);
  v26 = *(v1 + 72);
  *(v1 + 72) = *(&v41 + 1);

  outlined consume of SafeAreaInsets.OptionalValue?(v26);
  if (AGWeakAttributeGetAttribute() != v15)
  {
    v35 = v5;
    v36 = v4;
    v37 = v6;
    v38 = v7;
    type metadata accessor for PhaseAnimator.StateTransitioningContainer.AnimationCompletion();
    v27 = AGGraphGetValue();
    if ((v28 & 1) != 0 && *v27 == *(v1 + 40))
    {
      v29 = *(v27 + 8);
      v35 = v5;
      v36 = v4;
      v37 = v6;
      v38 = v7;
      type metadata accessor for PhaseAnimator.Behavior();
      if (!v25 || *(v1 + 32))
      {
        if (v29)
        {
          *(v1 + 56) = 0;
          *(v1 + 64) = 1;
          v30 = *(v1 + 32);
        }

        else
        {
          v30 = *(v1 + 32);
          v35 = v5;
          v36 = v4;
          v37 = v6;
          v38 = v7;
          type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.EndlessLoopState();
          if (*(v1 + 64) == 1 && !*(v1 + 56))
          {
            *(v1 + 56) = v30;
            *(v1 + 64) = 0;
          }
        }

        PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(v30);
      }
    }
  }

  $defer #1 <A, B>() in PhaseAnimator.StateTransitioningContainer.Child.updateValue()(v1, &v39, v5, v4, v6, v7);
  (*(v33 + 8))(&v39, v8);
}

uint64_t $defer #1 <A, B>() in PhaseAnimator.StateTransitioningContainer.Child.updateValue()(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v36 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v46 = v17;
  *(&v46 + 1) = v18;
  *&v47 = v19;
  *(&v47 + 1) = v20;
  v34 = v19;
  v35 = v20;
  v37 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child.Value();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v22 = &v32 - v21;
  v23 = *(a2 + 8);
  v32 = *(a2 + 16);
  v33 = v23;
  v24 = a1[3];
  v48 = a1[2];
  v49 = v24;
  v50[0] = a1[4];
  *(v50 + 13) = *(a1 + 77);
  v25 = a1[1];
  v46 = *a1;
  v47 = v25;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v26 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child();
  PhaseAnimator.StateTransitioningContainer.Child.clampedIndex.getter(v26);
  Array.subscript.getter();
  v33(v13);
  (*(v36 + 8))(v13, a3);
  v27 = *(a1 + 10);
  v28 = *(a1 + 22);
  LOBYTE(v46) = *(a1 + 92);
  PhaseAnimator.StateTransitioningContainer.Child.Value.init(content:phaseChangeTransaction:phaseChangeTransactionSeed:)(v16, v27, v28 | (v46 << 32), a4, v22);
  v40 = v26;
  WitnessTable = swift_getWitnessTable();

  v29 = v37;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, partial apply for closure #1 in StatefulRule.value.setter, v39, v37, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v30);
  return (*(v38 + 8))(v22, v29);
}

Swift::Void __swiftcall PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(Swift::Int from)
{
  v3 = v2;
  v4 = v1;
  v6 = v2[3];
  v26 = v2[2];
  v27 = v6;
  v28[0] = v2[4];
  *(v28 + 13) = *(v2 + 77);
  v7 = v2[1];
  v24 = *v2;
  v25 = v7;
  PhaseAnimator.StateTransitioningContainer.Child.view.getter(v21);
  v8 = *&v21[0];

  v9 = *(v4 + 16);
  v10 = MEMORY[0x193ABF270](v8, v9);

  if (v10 >= 2)
  {
    v11 = v3[3];
    v26 = v3[2];
    v27 = v11;
    v28[0] = v3[4];
    *(v28 + 13) = *(v3 + 77);
    v12 = v3[1];
    v24 = *v3;
    v25 = v12;
    PhaseAnimator.StateTransitioningContainer.Child.view.getter(v23);
    v13 = v23[5];

    if (v13)
    {

      v14 = from + 1;
      if (__OFADD__(from, 1))
      {
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = from + 1;
      if (__OFADD__(from, 1))
      {
        __break(1u);
        return;
      }
    }

    v15 = v3[3];
    v21[2] = v3[2];
    v21[3] = v15;
    v22[0] = v3[4];
    *(v22 + 13) = *(v3 + 77);
    v16 = v3[1];
    v21[0] = *v3;
    v21[1] = v16;
    PhaseAnimator.StateTransitioningContainer.Child.view.getter(&v20);
    v17 = v20;

    v18 = MEMORY[0x193ABF270](v17, v9);

    if (v14 >= v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(v19);
  }
}

Swift::Void __swiftcall PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(Swift::Int to)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[2];
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](to);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 7);
  if (*(v2 + 64) == 1)
  {
    if (v10)
    {
      return;
    }
  }

  else if (v10 == to)
  {
    *(v2 + 7) = 1;
    *(v2 + 64) = 1;
    *(v2 + 4) = 0;
    return;
  }

  v11 = v2[3];
  *&v48[16] = v2[2];
  v49 = v11;
  *v50 = v2[4];
  *&v50[13] = *(v2 + 77);
  v12 = v2[1];
  v47 = *v2;
  *v48 = v12;
  PhaseAnimator.StateTransitioningContainer.Child.view.getter(&v44);
  v13 = v44;

  v14 = MEMORY[0x193ABF270](v13, v6);

  if (v14 <= to)
  {

    PhaseAnimator.StateTransitioningContainer.Child.advance(from:)(to);
  }

  else
  {
    v39 = v7;
    v15 = v3[1];
    v47 = *v3;
    *v48 = v15;
    v16 = *(v3 + 4);
    v17 = *(v3 + 5);
    v18 = v3[4];
    v49 = v3[3];
    *v50 = v18;
    *&v50[13] = *(v3 + 77);
    *&v48[16] = v16;
    *&v48[24] = v17;
    PhaseAnimator.StateTransitioningContainer.Child.view.getter(&v44);
    Array.subscript.getter();

    *(v3 + 4) = to;
    *(v3 + 5) = v17 + 1;
    AGGraphClearUpdate();
    v19 = v4[4];
    v20 = v4[5];
    v40 = v4[3];
    v42 = v19;
    v41 = v20;
    closure #1 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(&v47);
    AGGraphSetUpdate();
    v21 = v47;
    v47 = *v3;
    *&v48[8] = *(v3 + 24);
    v22 = v3[4];
    v49 = v3[3];
    v38[1] = v21;
    v43 = v21;
    v23 = *(v3 + 4);
    v24 = *(v3 + 5);
    v25 = *(v3 + 5);
    *v50 = v22;
    v26 = *(v3 + 10);
    *&v50[24] = *(v3 + 22);
    v50[28] = *(v3 + 92);
    v27 = v23;
    *v48 = v23;
    *&v48[4] = v24;
    *&v48[24] = v25;
    v38[2] = v26;
    *&v50[16] = v26;
    PhaseAnimator.StateTransitioningContainer.Child.view.getter(&v44);
    v28 = v46;

    v29 = v28(v9);

    if (v29)
    {
      v30 = swift_allocObject();
      specialized static GraphHost.currentHost.getter();
      swift_weakInit();

      v31 = swift_allocObject();
      v32 = v40;
      *(v31 + 16) = v6;
      *(v31 + 24) = v32;
      v33 = v41;
      *(v31 + 32) = v42;
      *(v31 + 40) = v33;
      *(v31 + 48) = v30;
      *(v31 + 56) = v27;
      *(v31 + 60) = v24;
      *(v31 + 64) = v25;
      type metadata accessor for CompletionListener();
      v34 = swift_allocObject();
      *(v34 + 24) = v31;
      *(v34 + 32) = 0;
      *(v34 + 40) = 0;
      *(v34 + 16) = partial apply for closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:);

      swift_retain_n();

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v43, v29);

      Transaction.addAnimationLogicalListener(_:)(v34);
      LOBYTE(v47) = 17;

      static Update.enqueueAction(reason:_:)(&v47, partial apply for closure #3 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:), v34);
    }

    else
    {
      specialized static GraphHost.currentHost.getter();
      v44 = v25;
      v45 = 0;
      *&v47 = v6;
      *(&v47 + 1) = v40;
      *v48 = v42;
      *&v48[8] = v41;
      v35 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.AnimationCompletion();
      GraphHost.continueTransaction<A>(setting:to:)(v27 | (v24 << 32), &v44, v35);
    }

    v36 = v43;

    *(v3 + 10) = v36;
    AGGraphClearUpdate();
    *&v47 = v6;
    *(&v47 + 1) = v40;
    *v48 = v42;
    *&v48[8] = v41;
    type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child();
    v37 = *AGGraphGetValue();
    AGGraphSetUpdate();
    (*(v39 + 8))(v9, v6);

    *(v3 + 22) = v37;
    *(v3 + 92) = 0;
  }
}

uint64_t closure #1 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for PhaseAnimator.StateTransitioningContainer.Child();
  *a1 = *AGGraphGetValue();
}

uint64_t closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v16 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(a2, a3, a4, a1 & 1, a5, a6, a7, a8);
  static Update.end()();

  return _MovableLockUnlock(v16);
}

uint64_t closure #1 in closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    swift_beginAccess();
    if (*(v16 + 128) == 1)
    {
      v17 = swift_allocObject();
      v18 = a4;
      v19 = v17;
      *(v17 + 16) = a5;
      *(v17 + 24) = a6;
      *(v17 + 32) = a7;
      *(v17 + 40) = a8;
      *(v17 + 48) = a2;
      *(v17 + 56) = a3;
      *(v17 + 64) = v18 & 1;
      v20 = _threadTransactionID();
      specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v20, partial apply for closure #1 in closure #1 in closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:), v19, 1, 1);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = *MEMORY[0x1E69E9840];
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    v14 = result;
    v19 = a2;
    v20 = a3 & 1;
    MEMORY[0x1EEE9AC00](result);
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v17 = type metadata accessor for PhaseAnimator.StateTransitioningContainer.AnimationCompletion();
    v18 = v14;
    return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, partial apply for closure #1 in Attribute.setValue(_:), &v16, v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v15);
  }

  return result;
}

uint64_t static PhaseAnimator.StateTransitioningContainer.Child.EndlessLoopState.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 != 0);
  if (!a1)
  {
    v4 = a4 & (a3 == 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

Swift::Void __swiftcall PhaseAnimator.StateTransitioningContainer.TransactionRule.updateValue()()
{
  AGGraphGetValue();

  AGGraphGetValue();
  type metadata accessor for Attribute<Transaction>(0, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);

  Value = AGGraphGetValue();
  if ((*(Value + 4) & 1) == 0)
  {
    v1 = *Value;
    AGGraphClearUpdate();
    v2 = *AGGraphGetValue();
    AGGraphSetUpdate();
    if (v2 == v1)
    {
    }
  }

  AGGraphSetOutputValue();
}

uint64_t closure #1 in static PhaseAnimator.StateTransitioningContainer.appearanceHandler(_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = _threadTransactionData();
    if (v6)
    {
      type metadata accessor for PropertyList.Element();
      swift_unknownObjectRetain();
      v6 = swift_dynamicCastClassUnconditional();
    }

    v7 = _threadTransactionID();
    if (a3)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v6, v7, a2, v8, 1, 0);
  }

  return result;
}

uint64_t PhaseAnimator.EmptyPhasesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  specialized Image.init(systemName:)(0xD00000000000001BLL, 0x800000018DD80650);
  v3 = v2;
  type metadata accessor for FontBox<Font.SystemProvider>();
  v4 = swift_allocObject();
  *(v4 + 16) = 0x4040000000000000;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v4 + 33) = 3588;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for red != -1)
  {
    swift_once();
  }

  v6 = static Color.red;
  v7 = one-time initialization token for yellow;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static Color.yellow;
  *a1 = v3;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v4;
  *(a1 + 24) = 15;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = v6;
  *(a1 + 80) = v8;
  *(a1 + 88) = 15;
}

uint64_t View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *&v20 = a8;
  *(&v20 + 1) = a11;
  *&v21 = a13;
  *(&v21 + 1) = a16;
  type metadata accessor for PhaseAnimator();
  swift_getWitnessTable();
  partial apply for closure #1 in View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:)(&v20);
  v19[2] = v22;
  v19[3] = v23;
  v19[4] = v24;
  v19[0] = v20;
  v19[1] = v21;
  v17 = type metadata accessor for CustomModifier();
  View.modifier<A>(_:)(v19, a7, v17);
  return (*(*(v17 - 8) + 8))(&v20, v17);
}

uint64_t closure #1 in View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v59 = a8;
  v60 = a4;
  v48 = a7;
  v56 = a5;
  v57 = a6;
  v55 = a3;
  v58 = a9;
  v54 = a17;
  v53 = a16;
  v52 = a15;
  v46 = a11;
  v19 = *(a11 - 8);
  v47 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v51 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v23);
  (*(v19 + 16))(v21, a2, a11);
  v26 = swift_allocObject();
  v26[2] = a7;
  v27 = v59;
  v26[3] = v59;
  v26[4] = a10;
  v49 = a10;
  v26[5] = a11;
  v26[6] = a12;
  v26[7] = a13;
  v26[8] = a14;
  v28 = v52;
  v29 = v53;
  v26[9] = v52;
  v26[10] = v29;
  v31 = v54;
  v30 = v55;
  v26[11] = v54;
  v26[12] = v30;
  v26[13] = v60;
  v32 = swift_allocObject();
  v33 = v47;
  v32[2] = v48;
  v32[3] = v27;
  v32[4] = a10;
  v34 = v46;
  v32[5] = v46;
  v32[6] = a12;
  v32[7] = v33;
  v32[8] = a14;
  v32[9] = v28;
  v32[10] = v29;
  v35 = v56;
  v36 = v57;
  v32[11] = v31;
  v32[12] = v35;
  v32[13] = v36;

  v37 = v26;
  v38 = v59;
  PhaseAnimator.init<A, B>(_:trigger:content:animation:)(v51, v50, partial apply for closure #1 in closure #1 in View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:), v37, partial apply for closure #2 in closure #1 in View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:), v32, v59, &v76, v49, v34, v43, v44, v28, v29);
  *&v71 = v38;
  *(&v71 + 1) = a12;
  *&v72 = a14;
  *(&v72 + 1) = v31;
  v39 = type metadata accessor for PhaseAnimator();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v76, v39, WitnessTable);
  v73 = v78;
  v74 = v79;
  v75 = v80;
  v71 = v76;
  v72 = v77;
  v41 = *(*(v39 - 8) + 8);
  v41(&v71, v39);
  v63 = v68;
  v64 = v69;
  v65 = v70;
  v61 = v66;
  v62 = v67;
  static ViewBuilder.buildExpression<A>(_:)(&v61, v39, WitnessTable);
  v78 = v63;
  v79 = v64;
  v80 = v65;
  v76 = v61;
  v77 = v62;
  return (v41)(&v76, v39);
}

uint64_t closure #1 in closure #1 in View.phaseAnimator<A, B, C, D>(_:trigger:content:animation:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - v21;
  v24 = PlaceholderContentView.init()(v23, v20);
  a2(v24, a1);
  static ViewBuilder.buildExpression<A>(_:)(v18, a8, a13);
  v25 = *(v16 + 8);
  v25(v18, a8);
  static ViewBuilder.buildExpression<A>(_:)(v22, a8, a13);
  return (v25)(v22, a8);
}

uint64_t View.phaseAnimator<A, B, C>(_:content:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v23 = a7;
  *(&v23 + 1) = a9;
  *&v24 = a11;
  *(&v24 + 1) = a13;
  type metadata accessor for PhaseAnimator();
  swift_getWitnessTable();
  closure #1 in View.phaseAnimator<A, B, C>(_:content:animation:)(a1, a2, a3, a4, a5, a6, a7, &v23, a9, a10, a11, a12, a13);
  v22[2] = v25;
  v22[3] = v26;
  v22[4] = v27;
  v22[0] = v23;
  v22[1] = v24;
  v16 = type metadata accessor for CustomModifier();
  View.modifier<A>(_:)(v22, a6, v16);
  return (*(*(v16 - 8) + 8))(&v23, v16);
}

uint64_t closure #1 in View.phaseAnimator<A, B, C>(_:content:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a6;
  v38 = a4;
  v39 = a5;
  v35 = a2;
  v36 = a3;
  v40 = a8;
  v32 = a10;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v18;
  (*(v17 + 16))(v15);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v34 = a7;
  v20[4] = v19;
  v20[5] = a9;
  v20[6] = a10;
  v20[7] = a11;
  v20[8] = a12;
  v20[9] = a13;
  v21 = v36;
  v20[10] = v35;
  v20[11] = v21;
  v22 = swift_allocObject();
  v23 = v32;
  v22[2] = v33;
  v22[3] = a7;
  v22[4] = v19;
  v22[5] = a9;
  v22[6] = v23;
  v22[7] = a11;
  v22[8] = a12;
  v22[9] = a13;
  v24 = v39;
  v22[10] = v38;
  v22[11] = v24;

  v25 = v20;
  v26 = v34;
  PhaseAnimator.init<A>(_:content:animation:)(v37, partial apply for closure #1 in closure #1 in View.phaseAnimator<A, B, C>(_:content:animation:), v25, partial apply for closure #2 in closure #1 in View.phaseAnimator<A, B, C>(_:content:animation:), v22, v19, &v56);
  *&v51 = v26;
  *(&v51 + 1) = a9;
  *&v52 = a11;
  *(&v52 + 1) = a13;
  v27 = type metadata accessor for PhaseAnimator();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v56, v27, WitnessTable);
  v53 = v58;
  v54 = v59;
  v55 = v60;
  v51 = v56;
  v52 = v57;
  v29 = *(*(v27 - 8) + 8);
  v29(&v51, v27);
  v43 = v48;
  v44 = v49;
  v45 = v50;
  v41 = v46;
  v42 = v47;
  static ViewBuilder.buildExpression<A>(_:)(&v41, v27, WitnessTable);
  v58 = v43;
  v59 = v44;
  v60 = v45;
  v56 = v41;
  v57 = v42;
  return (v29)(&v56, v27);
}

uint64_t associated type witness table accessor for View.Body : View in PhaseAnimator<A, B>()
{
  return associated type witness table accessor for View.Body : View in PhaseAnimator<A, B>();
}

{
  return swift_getOpaqueTypeConformance2();
}

uint64_t destroy for PhaseAnimator()
{
}

uint64_t initializeWithCopy for PhaseAnimator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;

  return a1;
}

void *assignWithCopy for PhaseAnimator(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  a1[5] = a2[5];

  a1[6] = a2[6];
  a1[7] = a2[7];

  a1[8] = a2[8];
  a1[9] = a2[9];

  return a1;
}

uint64_t assignWithTake for PhaseAnimator(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t closure #1 in closure #1 in View.phaseAnimator<A, B, C>(_:content:animation:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - v19;
  v22 = PlaceholderContentView.init()(v21, v18);
  a2(v22, a1);
  static ViewBuilder.buildExpression<A>(_:)(v16, a7, a11);
  v23 = *(v14 + 8);
  v23(v16, a7);
  static ViewBuilder.buildExpression<A>(_:)(v20, a7, a11);
  return (v23)(v20, a7);
}

uint64_t closure #1 in closure #3 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void *), uint64_t a7)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v13[2] = a6(0, v14);
  v13[3] = a3;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a7, v13, a3, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14[0];
}

uint64_t CompletionListener.animationWasRemoved()()
{
  v1 = *(v0 + 32) - 1;
  *(v0 + 32) = v1;
  if (!v1 && (*(v0 + 41) & 1) == 0)
  {
    result = (*(v0 + 16))(1);
    *(v0 + 41) = 1;
  }

  return result;
}

uint64_t CompletionListener.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t destroy for PhaseAnimator.StateTransitioningContainer()
{
}

uint64_t initializeWithCopy for PhaseAnimator.StateTransitioningContainer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

void *assignWithCopy for PhaseAnimator.StateTransitioningContainer(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  a1[5] = a2[5];

  return a1;
}

_OWORD *assignWithTake for PhaseAnimator.StateTransitioningContainer(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t destroy for PhaseAnimator.StateTransitioningContainer.Child(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
  }
}

uint64_t initializeWithCopy for PhaseAnimator.StateTransitioningContainer.Child(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 72);
  if (v5 != 1)
  {
  }

  v6 = *(a2 + 80);
  *(a1 + 72) = v5;
  *(a1 + 80) = v6;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);

  return a1;
}

uint64_t assignWithCopy for PhaseAnimator.StateTransitioningContainer.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v4;
  v5 = (a1 + 72);
  v6 = *(a1 + 72);
  v7 = *(a2 + 72);
  if (v6 == 1)
  {
    if (v7 != 1)
    {
      *v5 = v7;

      goto LABEL_9;
    }

    v8 = 1;
  }

  else
  {
    if (v7 != 1)
    {
      *v5 = v7;

      goto LABEL_9;
    }

    v9 = type metadata accessor for PhaseAnimator.Behavior();
    (*(*(v9 - 8) + 8))(v5, v9);
    v8 = *(a2 + 72);
  }

  *v5 = v8;
LABEL_9:
  *(a1 + 80) = *(a2 + 80);

  v10 = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = v10;
  return a1;
}

uint64_t assignWithTake for PhaseAnimator.StateTransitioningContainer.Child(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v5 = (a1 + 72);
  v6 = *(a2 + 72);
  if (*(a1 + 72) != 1)
  {
    if (v6 != 1)
    {
      *v5 = v6;

      goto LABEL_6;
    }

    v7 = type metadata accessor for PhaseAnimator.Behavior();
    (*(*(v7 - 8) + 8))(v5, v7);
    v6 = *(a2 + 72);
  }

  *v5 = v6;
LABEL_6:
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  return a1;
}

uint64_t getEnumTagSinglePayload for PhaseAnimator.StateTransitioningContainer.Child(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 93))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PhaseAnimator.StateTransitioningContainer.Child(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 93) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 93) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for PhaseAnimator.StateTransitioningContainer.Child.Value()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = (v11 + 11) & 0xFFFFFFFFFFFFFFF8;
    v13 = *v12;
    v14 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
    *(v14 + 4) = *(v12 + 4);
    *v14 = v13;
  }

  return v3;
}

uint64_t destroy for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 24) - 8) + 8))();
}

uint64_t initializeWithCopy for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 4);
  *v9 = *v10;
  *(v9 + 4) = v11;

  return a1;
}

uint64_t assignWithCopy for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 11;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  *(v10 + 4) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 4);
  *v10 = v11;
  return a1;
}

uint64_t initializeWithTake for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 4);
  *v9 = *v10;
  *(v9 + 4) = v11;
  return a1;
}

uint64_t assignWithTake for PhaseAnimator.StateTransitioningContainer.Child.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v8 += 11;
  *v7 = v9;

  v10 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  *(v10 + 4) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 4);
  *v10 = v11;
  return a1;
}

uint64_t getEnumTagSinglePayload for PhaseAnimator.StateTransitioningContainer.Child.Value(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))();
  }

  v9 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

void storeEnumTagSinglePayload for PhaseAnimator.StateTransitioningContainer.Child.Value(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = (((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFE)
      {
        v13 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          v14 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v14 = a2;
        }

        *v13 = v14;
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, type metadata accessor for _BackgroundStyleModifier);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for _ForegroundStyleModifier<Color>(255, a4, a5);
    v8 = type metadata accessor for ModifiedContent();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>)
  {
    type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Font?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for Attribute<Transaction>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _ForegroundStyleModifier<Color>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Color, &protocol witness table for Color);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #3 in PhaseAnimator.StateTransitioningContainer.Child.advance(to:)()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    result = (*(v0 + 16))(0);
    *(v0 + 41) = 1;
  }

  return result;
}

uint64_t type metadata completion function for TimeDataFormatting.Configuration()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataFormatting.Configuration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 24);
    *(v10 + 24) = v12;
    *(v10 + 32) = *(v11 + 32);
    (**(v12 - 8))(v10, v11);
    v13 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
    v15 = *(v14 + 24);
    if (v15 < 0xFFFFFFFF)
    {
      v16 = *v14;
      v17 = *(v14 + 16);
      *(v13 + 32) = *(v14 + 32);
      *v13 = v16;
      *(v13 + 16) = v17;
    }

    else
    {
      *(v13 + 24) = v15;
      *(v13 + 32) = *(v14 + 32);
      (**(v15 - 8))();
    }
  }

  return v3;
}

unint64_t destroy for TimeDataFormatting.Configuration(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v4);
  result = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (*(result + 24) >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for TimeDataFormatting.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  *(v7 + 24) = v9;
  *(v7 + 32) = *(v8 + 32);
  (**(v9 - 8))(v7, v8);
  v10 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 24);
  if (v12 < 0xFFFFFFFF)
  {
    v13 = *v11;
    v14 = *(v11 + 16);
    *(v10 + 32) = *(v11 + 32);
    *v10 = v13;
    *(v10 + 16) = v14;
  }

  else
  {
    *(v10 + 24) = v12;
    *(v10 + 32) = *(v11 + 32);
    (**(v12 - 8))();
  }

  return a1;
}

uint64_t assignWithCopy for TimeDataFormatting.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v7, v8);
  v9 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 24);
  if (*(v9 + 24) < 0xFFFFFFFFuLL)
  {
    if (v11 < 0xFFFFFFFF)
    {
      v15 = *v10;
      v16 = *(v10 + 16);
      *(v9 + 32) = *(v10 + 32);
      *v9 = v15;
      *(v9 + 16) = v16;
    }

    else
    {
      *(v9 + 24) = v11;
      *(v9 + 32) = *(v10 + 32);
      (**(v11 - 8))();
    }
  }

  else if (v11 < 0xFFFFFFFF)
  {
    v12 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
    __swift_destroy_boxed_opaque_existential_1(v9);
    v13 = *v10;
    v14 = *(v10 + 16);
    *(v12 + 32) = *(v10 + 32);
    *v12 = v13;
    *(v12 + 16) = v14;
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1(v9, v10);
  }

  return a1;
}

uint64_t initializeWithTake for TimeDataFormatting.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  v11 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(v11 + 32) = *(v12 + 32);
  *v11 = v13;
  *(v11 + 16) = v14;
  return a1;
}

uint64_t assignWithTake for TimeDataFormatting.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v7);
  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  v11 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  }

  v12 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(v11 + 32) = *(v12 + 32);
  *v11 = v13;
  *(v11 + 16) = v14;
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataFormatting.Configuration(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for TimeDataFormatting.Configuration(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v20 = &a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v20 + 8) = 0u;
          *(v20 + 24) = 0u;
          *v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 24) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

uint64_t static TimeDataFormatting.Configuration.makeConfiguration(from:format:sizeVariant:secondsUpdateFrequencyBudget:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a8;
  v32 = a2;
  v36 = a1;
  v34 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v31 - v18;
  v20 = *a5;
  v22 = *(v21 + 48);
  *&v42 = v20;
  v35 = FormatStyle.exactSizeVariant(_:)(&v31 - v18, &v42, a7);
  v19[v22] = v35 & 1;
  *&v37 = v20;
  v23 = v15;
  v24 = a6;
  v25 = v32;
  v26 = a6;
  v27 = v33;
  DiscreteFormatStyle.alwaysOnDisplayFormat<A>(source:secondsUpdateFrequencyBudget:sizeVariant:)(v32, &v37, a7, v26, a9, v33, &v42, a3);
  v28 = *(v34 + 16);
  v34 = v23;
  v28(v23, v25, v24);
  DiscreteFormatStyle.paused<A>(accordingTo:)(v25, a7, v24, v27, v41);
  (*(v17 + 8))(v19, TupleTypeMetadata2);
  if (*&v43[8])
  {
    outlined init with copy of AnyTrackedValue(&v42, &v37);
    v38[24] = v43[24];
  }

  else
  {
    v37 = v42;
    *v38 = *v43;
    *&v38[9] = *&v43[9];
  }

  if (*&v38[8])
  {
    outlined init with take of AnyTrackedValue(&v37, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
    v40 = 0;
  }

  TimeDataFormatting.Configuration.init(source:highFrequencyFormat:lowFrequencyFormat:)(v34, v41, v39, v24, v36);
  if (v35)
  {
    if (*&v43[8])
    {
      __swift_destroy_boxed_opaque_existential_1(&v42);
    }

    return 1;
  }

  else
  {
    *&v38[9] = *&v43[9];
    *v38 = *v43;
    v37 = v42;
    if (*&v43[8])
    {
      v30 = v38[24];
      __swift_destroy_boxed_opaque_existential_1(&v37);
      return v30;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t TimeDataFormatting.Configuration.formatAndFrequency(for:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20);
  v13 = *v12;
  if (*(v12 + 8))
  {

    v14 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v13);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(*v12);
    if (v15)
    {
      v14 = *(v15 + 72);
    }

    else
    {
      v14 = 0;
    }
  }

  ResolvableStringResolutionContext.date.getter(v11);
  v18 = v14 & 1;
  TimeDataFormatting.Configuration.formatAndFrequency(for:mode:)(a1, a2, v11, &v18, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t static TimeDataFormatting.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v40 = a3;
  *(&v40 + 1) = a4;
  *&v41 = a5;
  *(&v41 + 1) = a6;
  v10 = type metadata accessor for TimeDataFormatting.Configuration();
  v33 = a1;
  v11 = (a1 + *(v10 + 52));
  v12 = v11[3];
  v13 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v32 = a2;
  v14 = (a2 + *(v10 + 52));
  v15 = v14[3];
  v16 = __swift_project_boxed_opaque_existential_1(v14, v15);
  *(&v41 + 1) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
  LOBYTE(v16) = equals #1 <A, B><A1>(lhs:rhs:) in static TimeDataFormatting.Configuration.== infix(_:_:)(v13, &v40, a3, a4, v12);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  v18 = a1 + *(v10 + 56);
  if (*(v18 + 24))
  {
    outlined init with copy of AnyTrackedValue(v33 + *(v10 + 56), &v37);
    if (!*(&v38 + 1))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v20 = *(v18 + 16);
    v37 = *v18;
    v38 = v20;
    v39 = *(v18 + 32);
    if (!*(&v20 + 1))
    {
LABEL_4:
      if (*(v18 + 24))
      {
        goto LABEL_5;
      }

LABEL_14:
      v28 = *(v18 + 16);
      v40 = *v18;
      v41 = v28;
      v42 = *(v18 + 32);
      if (*(&v28 + 1))
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  outlined init with take of AnyTrackedValue(&v37, &v40);
  v21 = v32 + *(v10 + 56);
  if (*(v21 + 24))
  {
    outlined init with copy of AnyTrackedValue(v21, &v34);
    if (*(&v35 + 1))
    {
LABEL_11:
      outlined init with take of AnyTrackedValue(&v34, &v37);
      v22 = *(&v41 + 1);
      v23 = __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v24 = *(&v38 + 1);
      v25 = __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
      *(&v35 + 1) = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(&v34);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v19 = equals #1 <A, B><A1>(lhs:rhs:) in static TimeDataFormatting.Configuration.== infix(_:_:)(v23, &v34, a3, a4, v22);
      __swift_destroy_boxed_opaque_existential_1(&v34);
      __swift_destroy_boxed_opaque_existential_1(&v37);
LABEL_19:
      __swift_destroy_boxed_opaque_existential_1(&v40);
      return v19 & 1;
    }
  }

  else
  {
    v27 = *(v21 + 16);
    v34 = *v21;
    v35 = v27;
    v36 = *(v21 + 32);
    if (*(&v27 + 1))
    {
      goto LABEL_11;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v40);
  if (!*(v18 + 24))
  {
    goto LABEL_14;
  }

LABEL_5:
  outlined init with copy of AnyTrackedValue(v18, &v40);
  if (*(&v41 + 1))
  {
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(&v40);
LABEL_7:
    v19 = 0;
    return v19 & 1;
  }

LABEL_15:
  v29 = v32 + *(v10 + 56);
  if (*(v29 + 24))
  {
    outlined init with copy of AnyTrackedValue(v29, &v40);
  }

  else
  {
    v30 = *(v29 + 16);
    v40 = *v29;
    v41 = v30;
    v42 = *(v29 + 32);
  }

  v19 = *(&v41 + 1) == 0;
  if (*(&v41 + 1))
  {
    goto LABEL_19;
  }

  return v19 & 1;
}

uint64_t TimeDataFormatting.Configuration.formatAndFrequency(for:mode:)(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v43 = a3;
  v45 = a2;
  v8 = *(a5 + 32);
  v9 = *(a5 + 16);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  _s10Foundation4DateVSgMaTm_4(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for Date();
  v20 = MEMORY[0x1EEE9AC00](v17);
  if (*a4 != 1)
  {
    v30 = v44 + *(a5 + 52);
    v31 = a1;
    goto LABEL_5;
  }

  v39 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v19;
  v42 = a1;
  v21 = v10;
  v22 = a5;
  v23 = v44;
  v24 = (*(v8 + 72))(v9, v8, v20);
  v40 = &v38;
  MEMORY[0x1EEE9AC00](v24);
  v25 = *(v22 + 24);
  *(&v38 - 6) = v9;
  *(&v38 - 5) = v25;
  v26 = *(v22 + 40);
  *(&v38 - 4) = v8;
  *(&v38 - 3) = v26;
  *(&v38 - 2) = v23;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TimeDataFormatting.Configuration.formatAndFrequency(for:mode:), (&v38 - 8), MEMORY[0x1E69E73E0], v17, v27, v16);
  v28 = v21;
  v29 = v41;
  (*(v11 + 8))(v13, v28);
  if ((*(v29 + 48))(v16, 1, v17) != 1)
  {
    v33 = v39;
    (*(v29 + 32))(v39, v16, v17);
    lazy protocol witness table accessor for type Date and conformance Date();
    v34 = dispatch thunk of static Comparable.>= infix(_:_:)();
    (*(v29 + 8))(v33, v17);
    if ((v34 & 1) == 0)
    {
      goto LABEL_8;
    }

    v30 = v23 + *(v22 + 52);
    v31 = v42;
LABEL_5:
    result = outlined init with copy of AnyTrackedValue(v30, v31);
    goto LABEL_13;
  }

  _s10Foundation4DateVSgWOhTm_3(v16, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
LABEL_8:
  v35 = v23 + *(v22 + 56);
  if (*(v35 + 24))
  {
    outlined init with copy of AnyTrackedValue(v35, &v46);
  }

  else
  {
    v36 = *(v35 + 16);
    v46 = *v35;
    v47 = v36;
    v48 = *(v35 + 32);
  }

  if (!*(&v47 + 1))
  {
    result = outlined init with copy of AnyTrackedValue(v23 + *(v22 + 52), v42);
    v37 = 2;
    goto LABEL_14;
  }

  result = outlined init with take of AnyTrackedValue(&v46, v42);
LABEL_13:
  v37 = 3;
LABEL_14:
  *v45 = v37;
  return result;
}

uint64_t DiscreteFormatStyle.alwaysOnDisplayFormat<A>(source:secondsUpdateFrequencyBudget:sizeVariant:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v9 = v8;
  v60 = a6;
  v59 = a4;
  v58 = a1;
  v62 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v53 = &v51 - v14;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  v22 = type metadata accessor for _MixedAoDFrequencyFormatInitializer();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v51 - v24;
  v61 = *a2;
  v26 = *(v15 + 16);
  v57 = v9;
  v26(v21, v9, a3, v23);
  v55 = v15;
  v27 = *(v15 + 32);
  v52 = v21;
  v51 = v27;
  v27(v25, v21, a3);
  v56 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  v64[0] = AssociatedTypeWitness;
  v64[1] = v29;
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v71, &v67);
    v30 = *(&v68 + 1);
    v31 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    v64[0] = v61;
    LOBYTE(v30) = (*(v31 + 24))(&v71, v64, v30, v31, a8);
    v32 = v72;
    __swift_project_boxed_opaque_existential_1(&v71, v72);
    v33 = v62;
    DiscreteFormatStyle.paused<A>(accordingTo:)(v58, v32, v59, v60, v62);
    *(v33 + 40) = v30 & 1;
    __swift_destroy_boxed_opaque_existential_1(&v71);
    return __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  else
  {
    v35 = v61;
    v36 = v62;
    (v26)(v18, v57, a3);
    type metadata accessor for UpdateFrequencyDependentFormatStyle();
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(&v67, &v71);
      v37 = v72;
      v38 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, v72);
      LOBYTE(v67) = 2;
      v39 = *(v38 + 16);
      v65 = v37;
      v66 = v38;
      __swift_allocate_boxed_opaque_existential_1(v64);
      v39(&v67, v37, v38);
      v40 = v65;
      v41 = v66;
      v42 = __swift_project_boxed_opaque_existential_1(v64, v65);
      v63 = v35;
      v43 = *(v40 - 8);
      MEMORY[0x1EEE9AC00](v42);
      v45 = &v51 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = FormatStyle.exactSizeVariant(_:)(v45, &v63, v40);
      *(&v68 + 1) = v40;
      v69 = v41;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
      (*(v43 + 32))(boxed_opaque_existential_1, v45, v40);
      v70 = v46 & 1;
      type metadata accessor for (style: UpdateFrequencyDependentFormatStyle, exact: Bool)();
      v48 = v53;
      v49 = TupleTypeMetadata2;
      swift_dynamicCast();
      LOBYTE(v49) = v48[*(v49 + 48)];
      v50 = v52;
      v51(v52, v48, a3);
      __swift_destroy_boxed_opaque_existential_1(v64);
      DiscreteFormatStyle.paused<A>(accordingTo:)(v58, a3, v59, v60, v36);
      (*(v55 + 8))(v50, a3);
      *(v36 + 40) = v49;
      return __swift_destroy_boxed_opaque_existential_1(&v71);
    }

    else
    {
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
      result = _s10Foundation4DateVSgWOhTm_3(&v67, &lazy cache variable for type metadata for UpdateFrequencyDependentFormatStyle?, type metadata accessor for UpdateFrequencyDependentFormatStyle);
      *(v36 + 25) = 0u;
      *v36 = 0u;
      *(v36 + 1) = 0u;
    }
  }

  return result;
}

uint64_t DiscreteFormatStyle.paused<A>(accordingTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - v20;
  (*(a4 + 72))(a3, a4, v19);
  LODWORD(AssociatedTypeWitness) = (*(*(AssociatedTypeWitness - 8) + 48))(v21, 1, AssociatedTypeWitness);
  (*(v18 + 8))(v21, v17);
  v22 = (v32 + 16);
  if (AssociatedTypeWitness == 1)
  {
    v23 = v34;
    a5[3] = a2;
    a5[4] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*v22)(boxed_opaque_existential_1, v33, a2);
  }

  else
  {
    v26 = v30;
    (*(v12 + 16))(v30, a1, a3);
    v27 = v31;
    (*v22)(v31, v33, a2);
    v35 = a3;
    v36 = a2;
    v37 = a4;
    v38 = v34;
    a5[3] = type metadata accessor for PausedFormatStyle();
    a5[4] = swift_getWitnessTable();
    v28 = __swift_allocate_boxed_opaque_existential_1(a5);
    return PausedFormatStyle.init(source:base:)(v26, v27, a3, a2, v28);
  }
}

__n128 TimeDataFormatting.Configuration.init(source:highFrequencyFormat:lowFrequencyFormat:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for TimeDataFormatting.Configuration();
  outlined init with take of AnyTrackedValue(a2, a5 + *(v8 + 52));
  v9 = a5 + *(v8 + 56);
  result = *a3;
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(a3 + 32);
  return result;
}

__n128 TimeDataFormatting.Configuration.hash(into:)(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + *(a2 + 52)), *(v2 + *(a2 + 52) + 24));
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 56);
  if (*(v4 + 24))
  {
    outlined init with copy of AnyTrackedValue(v4, &v7);
    if (!*(&v8 + 1))
    {
      return result;
    }
  }

  else
  {
    result = *v4;
    v6 = *(v4 + 16);
    v7 = *v4;
    v8 = v6;
    v9 = *(v4 + 32);
    if (!*(&v6 + 1))
    {
      return result;
    }
  }

  outlined init with take of AnyTrackedValue(&v7, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return result;
}

uint64_t equals #1 <A, B><A1>(lhs:rhs:) in static TimeDataFormatting.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-v9];
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a2, v19);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, a5);
    (*(v11 + 32))(v14, v10, a5);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v11 + 8))(v14, a5);
  }

  else
  {
    v16(v10, 1, 1, a5);
    (*(v8 + 8))(v10, v7);
    v17 = 0;
  }

  return v17 & 1;
}

Swift::Int TimeDataFormatting.Configuration.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  TimeDataFormatting.Configuration.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t PausedFormatStyle.init(source:base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PausedFormatStyle();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t PausedFormatStyle.endDate.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 3;
  v5 = a1 + 5;
  v6 = a1[4];
  v7 = a1[2];
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-v11];
  (*(v6 + 72))(v7, v6, v10);
  *&v13 = v7;
  *(&v13 + 1) = *v4;
  *&v14 = v6;
  *(&v14 + 1) = *v5;
  v19 = v13;
  v20 = v14;
  v21 = v2;
  v15 = type metadata accessor for Date();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in PausedFormatStyle.endDate.getter, v18, MEMORY[0x1E69E73E0], v15, v16, a2);
  return (*(v9 + 8))(v12, v8);
}

uint64_t PausedFormatStyle.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = a1;
  v4 = type metadata accessor for Date();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = *(a2 + 32);
  v30 = a2;
  v10 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  (*(v9 + 72))(v10, v9, v18);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v16 + 32))(v20, v15, AssociatedTypeWitness);
    v21 = *(v9 + 48);
    v21(v32, v10, v9);
    v22 = v27;
    v21(v20, v10, v9);
    v23 = static Date.> infix(_:_:)();
    v24 = v29;
    v25 = *(v28 + 8);
    v25(v22, v29);
    v25(v8, v24);
    if (v23)
    {
      dispatch thunk of FormatStyle.format(_:)();
      return (*(v16 + 8))(v20, AssociatedTypeWitness);
    }

    (*(v16 + 8))(v20, AssociatedTypeWitness);
  }

  return dispatch thunk of FormatStyle.format(_:)();
}

uint64_t PausedFormatStyle.discreteInput(before:)@<X0>(void (*a1)(void, void, void)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v65 = a3;
  v66 = a1;
  v6 = a2[2];
  v62 = a2[4];
  v63 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v49 - v8;
  _s10Foundation4DateVSgMaTm_4(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v60 = AssociatedTypeWitness;
  v61 = &v49 - v17;
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  dispatch thunk of DiscreteFormatStyle.discreteInput(before:)();
  v24 = v4;
  PausedFormatStyle.endDate.getter(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    _s10Foundation4DateVSgWOhTm_3(v11, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    return (*(v19 + 32))(v65, v23, v18);
  }

  v55 = v23;
  v56 = v19;
  v57 = v18;
  v26 = v61;
  (*(v13 + 32))(v61, v11, v12);
  v27 = v62;
  v28 = v63;
  v29 = v66;
  v66 = *(v62 + 48);
  v66(v29, v63, v62);
  v30 = static Date.< infix(_:_:)();
  v33 = *(v13 + 8);
  v32 = v13 + 8;
  v31 = v33;
  v33(v15, v12);
  if (v30)
  {
    v51 = v15;
    v52 = v24;
    v53 = v32;
    v54 = v31;
    v35 = v55;
    v34 = v56;
    v36 = v59;
    v37 = v57;
    (*(v56 + 16))(v59, v55, v57);
    v38 = v60;
    if ((*(v64 + 48))(v36, 1, v60) == 1)
    {
      v54(v26, v12);
      v39 = *(v34 + 8);
      v39(v35, v37);
      v39(v36, v37);
      return (*(v64 + 56))(v65, 1, 1, v38);
    }

    v40 = *(v64 + 32);
    v41 = v58;
    v59 = (v64 + 32);
    v50 = v40;
    v40();
    v42 = v51;
    v43 = v62;
    v44 = v63;
    v66(v41, v63, v62);
    v45 = static Date.> infix(_:_:)();
    v46 = v42;
    v47 = v54;
    v54(v46, v12);
    if (v45)
    {
      v47(v26, v12);
      (*(v56 + 8))(v55, v57);
      v48 = v65;
      (v50)(v65, v41, v38);
      return (*(v64 + 56))(v48, 0, 1, v38);
    }

    (*(v43 + 72))(v44, v43);
    (*(v64 + 8))(v41, v38);
    v47(v26, v12);
  }

  else
  {
    (*(v27 + 72))(v28, v27);
    v31(v26, v12);
  }

  return (*(v56 + 8))(v55, v57);
}