double sub_183FB1AE0(char a1, uint64_t a2, double a3)
{
  result = -a3;
  if ((a1 & 1) == 0)
  {
    result = a3;
  }

  v5 = (*&a3 >> 52) & 0x7FFLL;
  if (v5 != 2047 && v5 | *&a3 & 0xFFFFFFFFFFFFFLL)
  {
    if (a2 >= -1022)
    {
      if (a2 >= 1024)
      {
        if (a2 >= 0xBFD)
        {
          a2 = 3069;
        }

        do
        {
          a2 -= 1023;
          result = result * 8.98846567e307;
        }

        while (a2 > 0x3FF);
      }
    }

    else
    {
      v6 = -3066;
      if (a2 > 0xFFFFFFFFFFFFF406)
      {
        v6 = a2;
      }

      v7 = v6 + 1022;
      result = result * 2.22507386e-308;
      v8 = v6 + 2044;
      v9 = __CFADD__(a2, 2044);
      if (a2 >= 0xFFFFFFFFFFFFF804)
      {
        a2 = v7;
      }

      else
      {
        a2 = v8;
      }

      if (!v9)
      {
        result = result * 2.22507386e-308;
      }
    }

    return result * COERCE_DOUBLE(((a2 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000);
  }

  return result;
}

unint64_t sub_183FB1B8C(uint64_t a1)
{
  result = sub_183FB1BB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_183FB1BB4()
{
  result = qword_1EA854880;
  if (!qword_1EA854880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854880);
  }

  return result;
}

uint64_t _CGRenderingBufferProviderInit<>.init<A>(info:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v25 = sub_183FB1EBC;
  v26 = v10;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_183FB1EC8;
  v24 = &block_descriptor_0;
  v11 = _Block_copy(&v21);
  swift_unknownObjectRetain();

  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v25 = sub_183FB1FAC;
  v26 = v12;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_183FB1FB8;
  v24 = &block_descriptor_6;
  v13 = _Block_copy(&v21);

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v25 = sub_183FB2018;
  v26 = v14;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_183FB2024;
  v24 = &block_descriptor_12;
  v15 = _Block_copy(&v21);

  v19 = CGRenderingBufferProviderCreate(a1, a2, v11, v13, v15, v16, v17, v18);
  swift_unknownObjectRelease();
  _Block_release(v15);
  _Block_release(v13);
  _Block_release(v11);
  if (v19)
  {
    return swift_dynamicCastUnknownClassUnconditional();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183FB1E4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = *(a4 + 8);
    swift_unknownObjectRetain();
    v7 = v5(a3, a4);
    swift_unknownObjectRelease();
    return v7;
  }

  return result;
}

uint64_t sub_183FB1EC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_183FB1F30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v7 = *(a5 + 16);
    swift_unknownObjectRetain();
    v7(a2, a4, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_183FB1FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_183FB2018(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_183FB2024(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_183FB2078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = _CGRenderingBufferProviderInit<>.init<A>(info:size:)(a1, a2, a5, a3, a4);
  *a6 = result;
  return result;
}

BOOL sub_183FB20FC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v45.origin.x = a6;
  v45.origin.y = a7;
  v45.size.width = a8;
  v45.size.height = a9;
  v54.origin.x = a1;
  v54.origin.y = a2;
  v54.size.width = a3;
  v54.size.height = a4;
  if (CGRectEqualToRect(v45, v54))
  {
    return 1;
  }

  sub_183FB27D0(a1, a2, a3, a4, a6, a7, a8, a9);
  v43 = v25;
  v26 = v25;
  v46.origin.x = a6;
  v46.origin.y = a7;
  v46.size.width = a8;
  v46.size.height = a9;
  MinX = CGRectGetMinX(v46);
  v47.origin.x = a6;
  v47.origin.y = a7;
  v47.size.width = a8;
  v47.size.height = a9;
  MaxX = CGRectGetMaxX(v47);
  v48.origin.x = a6;
  v48.origin.y = a7;
  v48.size.width = a8;
  v48.size.height = a9;
  MinY = CGRectGetMinY(v48);
  v49.origin.x = a6;
  v49.origin.y = a7;
  v49.size.width = a8;
  v49.size.height = a9;
  MaxY = CGRectGetMaxY(v49);
  v50.origin.x = a1;
  v50.origin.y = a2;
  v50.size.width = a3;
  v50.size.height = a4;
  v28 = CGRectGetMinX(v50);
  v51.origin.x = a1;
  v51.origin.y = a2;
  v51.size.width = a3;
  v51.size.height = a4;
  v29 = CGRectGetMaxX(v51);
  v52.origin.x = a1;
  v52.origin.y = a2;
  v52.size.width = a3;
  v52.size.height = a4;
  v30 = CGRectGetMinY(v52);
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  v31 = CGRectGetMaxY(v53);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0;
  }

  v32 = fabs(MinX);
  v33 = fabs(MaxX);
  if (v32 <= v33)
  {
    v32 = v33;
  }

  v34 = fabs(MinY);
  v35 = fabs(MaxY);
  if (v34 <= v35)
  {
    v34 = v35;
  }

  if (v32 <= v34)
  {
    v32 = v34;
  }

  v36 = fabs(v28);
  v37 = fabs(v29);
  if (v36 <= v37)
  {
    v36 = v37;
  }

  v38 = fabs(v30);
  v39 = fabs(v31);
  if (v38 > v39)
  {
    v39 = v38;
  }

  if (v36 > v39)
  {
    v39 = v36;
  }

  if (v32 > v39)
  {
    v39 = v32;
  }

  if (v39 <= 1.0)
  {
    v39 = 1.0;
  }

  return v43 <= v39 * a5;
}

__C::CGRect __swiftcall CGRect.init(x:y:width:height:)(Swift::Int x, Swift::Int y, Swift::Int width, Swift::Int height)
{
  v4 = x;
  v5 = y;
  v6 = width;
  v7 = height;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

void __swiftcall CGRect.init(dictionaryRepresentation:)(__C::CGRect_optional *__return_ptr retstr, CFDictionaryRef dictionaryRepresentation)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  v4 = CGRectMakeWithDictionaryRepresentation(dictionaryRepresentation, &v8);

  if (v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = vdupq_n_s64(v5);
  v7 = vandq_s8(v8.size, v6);
  retstr->value.origin = vandq_s8(v8.origin, v6);
  retstr->value.size = v7;
  retstr->is_nil = !v4;
}

__n128 CGRect.divided(atDistance:from:)@<Q0>(CGRectEdge edge@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&slice, 0, sizeof(slice));
  memset(&v12, 0, sizeof(v12));
  v15.origin.x = a4;
  v15.origin.y = a5;
  v15.size.width = a6;
  v15.size.height = a7;
  CGRectDivide(v15, &slice, &v12, a3, edge);
  result = v12.origin;
  size = v12.size;
  v11 = slice.size;
  *a2 = slice.origin;
  *(a2 + 16) = v11;
  *(a2 + 32) = result;
  *(a2 + 48) = size;
  return result;
}

uint64_t CGRect.customMirror.getter(double a1, double a2, double a3, double a4)
{
  v8 = sub_184390378();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v24 - v15;
  *v24 = a1;
  *&v24[1] = a2;
  *&v24[2] = a3;
  *&v24[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1843982F0;
  *(v17 + 32) = 0x6E696769726FLL;
  *(v17 + 40) = 0xE600000000000000;
  type metadata accessor for CGPoint(0);
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 72) = v18;
  *(v17 + 80) = 1702521203;
  *(v17 + 88) = 0xE400000000000000;
  type metadata accessor for CGSize(0);
  *(v17 + 120) = v19;
  *(v17 + 96) = a3;
  *(v17 + 104) = a4;
  v20 = *MEMORY[0x1E69E75B8];
  v21 = sub_184390368();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v16, v20, v21);
  (*(v22 + 56))(v16, 0, 1, v21);
  (*(v9 + 104))(v12, *MEMORY[0x1E69E75D8], v8);
  type metadata accessor for CGRect(0);
  return sub_184390398();
}

void CGRect.customPlaygroundQuickLook.getter(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 10;
}

__n128 sub_183FB2708@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 10;
  return result;
}

uint64_t sub_183FB2734()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_184390358();
  sub_183F58A9C(v1, v2, v3, v4);
  return sub_184390338();
}

void sub_183FB27D0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  CGRectGetWidth(v16);
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  CGRectGetHeight(v17);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetWidth(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetHeight(v19);
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  CGRectGetMinX(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMinX(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetMinY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMinY(v23);
}

BOOL CGRectNearlyEqualToRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (qword_1EA853EA8 != -1)
  {
    v16 = a4;
    swift_once();
    a4 = v16;
  }

  return sub_183FB20FC(a5, a6, a7, a8, *&qword_1EA853EB0, a1, a2, a3, a4);
}

Swift::Bool __swiftcall CGRectNearlyEqualToRect(_:_:)(__C::CGRect a1, __C::CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v6 = a1.size.width;
  v7 = a1.origin.y;
  v8 = a1.origin.x;
  if (qword_1EA853EA8 != -1)
  {
    v10 = a1.size.height;
    swift_once();
    a1.size.height = v10;
  }

  return sub_183FB20FC(x, y, width, height, *&qword_1EA853EB0, v8, v7, v6, a1.size.height);
}

uint64_t sub_183FB2C28(uint64_t a1)
{
  result = sub_183F3FF48(&qword_1EA853F00, type metadata accessor for CGRect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_183FB2C84@<X0>(uint64_t a1@<X0>, int64x2_t *a2@<X8>)
{
  v24 = vdupq_n_s64(0x7FF8000000000000uLL);
  v25 = v24;
  v19 = v24;
  v4 = MEMORY[0x1E69E7CC0];
  v26.i64[0] = MEMORY[0x1E69E7CC0];
  v26.i64[1] = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      v7 = a1 + v6;
      v8 = *(a1 + v6);
      v9 = v19;
      v10 = v19;
      if (*v8.i64 < *(a1 + v6 + 8))
      {
        v11 = *(v7 + 16);
        v12 = vdup_n_s32(*v11.i64 < *(v7 + 24));
        v13.i64[0] = v12.u32[0];
        v13.i64[1] = v12.u32[1];
        v14 = vcltzq_s64(vshlq_n_s64(v13, 0x3FuLL));
        v9 = vbslq_s8(v14, v11, v19);
        v10 = vbslq_s8(v14, v8, v19);
      }

      v20[0] = v10;
      v20[1] = v9;
      v21 = v4;
      v22 = v4;
      v23 = v4;
      Region.formUnion(_:)(v20);

      v6 += 32;
      --v5;
    }

    while (v5);

    v16 = v24;
    v17 = v25;
    v18 = v26;
    v4 = v27;
  }

  else
  {

    v18 = vdupq_n_s64(v4);
    v16 = vdupq_n_s64(0x7FF8000000000000uLL);
    v17 = v16;
  }

  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  a2[3].i64[0] = v4;
  return result;
}

uint64_t sub_183FB2DC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  v48 = vdupq_n_s64(0x7FF8000000000000uLL);
  v49 = v48;
  v31 = v48;
  *&v50 = MEMORY[0x1E69E7CC0];
  *(&v50 + 1) = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CC0];
  v4 = *(result + 8);
  v27 = *(result + 16);
  v36 = *(result + 56);
  v37 = *(result + 32);
  v34 = *(result + 48);
  v35 = *(result + 72);
  v28 = *result;
  v29 = *(result + 88);
  v5 = (*result & 0xFFFFFFFFFFFFFLL) == 0 || (~*result & 0x7FF0000000000000) != 0;
  v33 = *(result + 48) + 32;
  v32 = *(result + 32) + 32;
  v6 = *(result + 40) + 32;
  v30 = *(result + 40);
  while (1)
  {
    if (v5 && !*(v37 + 16))
    {
      if (v3 == 2)
      {
LABEL_34:

        v24 = v51;
        v25 = v49;
        *a2 = v48;
        *(a2 + 16) = v25;
        *(a2 + 32) = v50;
        *(a2 + 48) = v24;
        return result;
      }

      if (v3 | v2)
      {
        goto LABEL_43;
      }

      v9 = 1;
      v10 = v28;
      v11 = v4;
      v12 = v27;
      v13 = __OFADD__(v3, 2);
      v3 += 2;
      if (v13)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v7 = *(v34 + 16);
      if (v3 == v7)
      {
        goto LABEL_34;
      }

      if (v3 >= v7)
      {
        goto LABEL_37;
      }

      if (v3 + 1 >= v7)
      {
        goto LABEL_38;
      }

      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      v8 = *(v37 + 16);
      if (v2 >= v8)
      {
        goto LABEL_40;
      }

      if (v2 + 1 >= v8)
      {
        goto LABEL_41;
      }

      v9 = 0;
      v10 = *(v33 + 8 * v3);
      v11 = *(v33 + 8 * (v3 + 1));
      v12 = *(v32 + 8 * v2);
      v13 = __OFADD__(v3, 2);
      v3 += 2;
      if (v13)
      {
        goto LABEL_36;
      }
    }

    if ((v5 & v9 & 1) == 0)
    {
      break;
    }

    v13 = __OFADD__(v2, 2);
    v2 += 2;
    if (v13)
    {
      goto LABEL_42;
    }

LABEL_31:
    v46[0] = v10;
    v46[1] = v11;
    v47 = v12;
    v36(&v43, v46);
    v16 = v43;
    v17 = v44;
    v18 = v45;
    v38 = v43;
    v39 = v44;
    LOBYTE(v40) = v45;
    result = v35(&v38);
    if (result)
    {
      v38 = v16;
      v39 = v17;
      LOBYTE(v40) = v18;
      v29(&v43, &v38);
      v19 = v31;
      v20 = v31;
      if (*v43.i64 < *&v43.i64[1])
      {
        v21 = vdup_n_s32(*v44.i64 < *&v44.i64[1]);
        v22.i64[0] = v21.u32[0];
        v22.i64[1] = v21.u32[1];
        v23 = vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL));
        v19 = vbslq_s8(v23, v44, v31);
        v20 = vbslq_s8(v23, v43, v31);
      }

      v38 = v20;
      v39 = v19;
      v40 = MEMORY[0x1E69E7CC0];
      v41 = MEMORY[0x1E69E7CC0];
      v42 = MEMORY[0x1E69E7CC0];
      Region.formUnion(_:)(&v38);
    }
  }

  v14 = *(v30 + 16);
  if (v2 >= v14)
  {
    goto LABEL_31;
  }

  v15 = v2;
  while ((v2 & 0x8000000000000000) == 0)
  {
    if (v3 < *(v6 + 4 * v15))
    {
      v2 = v15;
      goto LABEL_31;
    }

    if (v14 == ++v15)
    {
      v2 = *(v30 + 16);
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

double finity.getter()
{
  if (qword_1EA854108 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EA854888;
}

double sub_183FB3158()
{
  result = -8.98846567e307;
  xmmword_1EA854888 = xmmword_18439ACF0;
  return result;
}

double PartialRangeFrom<>.bounded.getter(double result)
{
  if (qword_1EA854108 != -1)
  {
    v1 = result;
    swift_once();
    return v1;
  }

  return result;
}

uint64_t sub_183FB31DC()
{
  if (qword_1EA854108 != -1)
  {
    return swift_once();
  }

  return result;
}

double PartialRangeUpTo<>.bounded.getter()
{
  if (qword_1EA854108 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EA854888;
}

double sub_183FB3298()
{
  if (qword_1EA854108 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EA854888;
}

double Region.init<A>(rects:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1843900A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v23 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8548D0);
  v13 = sub_1843900E8();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v23 - v15;
  MEMORY[0x1865EC6A0](a2, a3);
  swift_getWitnessTable();
  sub_184390178();
  (*(v9 + 8))(v12, v8);
  swift_getWitnessTable();
  v18 = sub_183F94370(v16, v13, v23, v17);
  (*(*(a2 - 8) + 8))(a1, a2, v18);
  v19 = v24;
  result = *v23;
  v21 = v23[1];
  v22 = v23[2];
  *a4 = v23[0];
  *(a4 + 16) = v21;
  *(a4 + 32) = v22;
  *(a4 + 48) = v19;
  return result;
}

void sub_183FB351C(double *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_183F728C4(*a1, a1[1], a1[2]);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_183FB3550(char *a1)
{
  v61 = a1;
  v78[2] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(v1 + 32);
  v65 = v1 + 32;
  v4 = (v2 & 0xFFFFFFFFFFFFFLL) != 0 && (~v2 & 0x7FF0000000000000) == 0;
  if (!v4 && *(v3 + 16) == 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = *(v3 + 16);
  }

  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v62 = (v1 + 48);
  *v73 = v2;
  *&v73[8] = *(v1 + 8);
  *&v73[24] = v7;
  *&v74 = v3;
  *(&v74 + 1) = v8;
  v75 = v9;
  v60 = sub_183FA4388(0, v6);
  v10 = v61;

  v11 = (v1 + 40);

  v12 = v6;

  v77 = v61;
  v13 = v1;
  v14 = sub_183FA5A00();
  v16 = *(*(v1 + 40) + 16);
  if (v6)
  {
    if (v6 - 1 >= v16)
    {
      goto LABEL_80;
    }

    v64 = *(*v11 + 4 * (v6 - 1) + 32);
  }

  else
  {
    v64 = 0;
  }

  v17 = v6 * v60;
  if ((v6 * v60) >> 64 != (v6 * v60) >> 63)
  {
    goto LABEL_71;
  }

  if (v6 >> 60)
  {
    goto LABEL_82;
  }

  v63 = v16;
  if (8 * v6 >= 1025)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v60 = v11;
    v59[2] = v59;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v14, v15);
    v21 = v59 - v20;
    if (v12 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v56 = swift_slowAlloc();
        v58.n128_u64[1] = v76;
        v58.n128_u64[0] = sub_183FB8158;
        sub_183FA8818(v56, v12, v17, v21, v12, v13, 0, 0, v76, v58, v17, 1, v12 == v16, v64, 0, v12, 0);
        MEMORY[0x1865EFCB0](v56, -1, -1);
        goto LABEL_61;
      }
    }

    v22 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v19);
    v11 = (v59 - v24);
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    if (v17 >> 60)
    {
      goto LABEL_84;
    }

    if ((8 * v17) >= 1025)
    {
      v22 = swift_stdlib_isStackAllocationSafe();
      if ((v22 & 1) == 0)
      {
        break;
      }
    }

    v59[1] = v59;
    MEMORY[0x1EEE9AC00](v22, v23);
    v26 = v59 - v25;
    v71 = 0;
    v72 = 0;
    v27 = *(v13 + 48);
    v28 = *(v13 + 16);
    *v73 = *v13;
    *&v73[16] = v28;
    v74 = *(v13 + 32);
    v75 = v27;
    v78[0] = v27 + 32;
    v78[1] = 0;

    sub_183F70628(v73, &v66);
    sub_183FB4774(v73, v10, v26, v17, &v71, v17, 1, v78, v21, v12, &v72, v11, v12, 0);
    sub_183F81130(v73);

    v29 = v12;
    v30 = v71;
    if ((v71 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    v31 = v29;
    v59[0] = v59;
    if (v29 != v63)
    {
      sub_183F7DC7C(0, v64, v26, v71);
      v35 = v72;
      if ((v72 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      v36 = v31;
      sub_183F7DC7C(0, v31, v21, v72);
      v17 = v60;
      goto LABEL_29;
    }

    v32 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v65;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v30 <= *(*v32 + 24) >> 1)
      {
        sub_183F7DC7C(0, v64, v26, v30);
        goto LABEL_34;
      }
    }

    else if (!v30)
    {
      v37 = MEMORY[0x1E69E7CC0];
      goto LABEL_33;
    }

    v37 = sub_183EA76E4(v30, 0);
    memcpy(v37 + 4, v26, 8 * v30);
LABEL_33:
    v38 = v62;

    *v38 = v37;
LABEL_34:
    v35 = v72;
    if ((v72 & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v35)
      {
LABEL_39:
        v39 = sub_183EA76E4(v35, 0);
        memcpy(v39 + 4, v21, 8 * v35);
      }

      else
      {
        v39 = MEMORY[0x1E69E7CC0];
      }

      *v34 = v39;
      goto LABEL_42;
    }

    if (v35 > *(*v34 + 24) >> 1)
    {
      goto LABEL_39;
    }

    sub_183F7DC7C(0, v31, v21, v35);
LABEL_42:
    v17 = v60;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v35)
      {
LABEL_46:
        v40 = sub_183F9BAB8(v35, 0);
        memcpy(v40 + 4, v11, 4 * v35);
      }

      else
      {
        v40 = MEMORY[0x1E69E7CC0];
      }

      *v17 = v40;
      goto LABEL_49;
    }

    if (v35 > *(*v17 + 24) >> 1)
    {
      goto LABEL_46;
    }

    v36 = v31;
LABEL_29:
    sub_183F7DCA8(0, v36, v11, v35);
LABEL_49:
    v16 = v30 - v64;
    v4 = v30 == v64;
    v12 = v31;
    if (v4)
    {
      goto LABEL_61;
    }

    v10 = *v17;
    v41 = *(*v17 + 16);
    if (v41 < v35)
    {
      goto LABEL_85;
    }

    if (v35 == v41)
    {
      goto LABEL_61;
    }

    if (v35 >= v41)
    {
      goto LABEL_86;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_183F9C14C(v10);
    }

    while (v35 < *(v10 + 2))
    {
      v42 = &v10[4 * v35];
      v43 = *(v42 + 8);
      v44 = __OFADD__(v43, v16);
      v45 = v43 + v16;
      if (v44)
      {
        goto LABEL_68;
      }

      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if (HIDWORD(v45))
      {
        goto LABEL_70;
      }

      ++v35;
      *(v42 + 8) = v45;
      if (v41 == v35)
      {
        *v17 = v10;
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    v14 = swift_stdlib_isStackAllocationSafe();
    if ((v14 & 1) == 0)
    {
      v55 = swift_slowAlloc();
      sub_183FA6E10(v55, v12, v12, v17, v13, 0, 0, sub_183FB8158, 1uLL, v76, v17, 1u, v12 == v16, v64, v12, 0);
      MEMORY[0x1865EFCB0](v55, -1, -1);
      goto LABEL_61;
    }
  }

  v57 = swift_slowAlloc();
  sub_183FA9018(v57, v17, v21, v12, v11, v12, v13, 0, 0, sub_183FB8158, v76, v17, 1, v12 == v16, v64, 0, v12, 0);
  MEMORY[0x1865EFCB0](v57, -1, -1);
LABEL_61:
  v46 = *v65;
  if (*(*v65 + 16))
  {
    v47 = *(v13 + 16);
    v48 = *(v13 + 24);
    v66 = *v13;
    v67 = v47;
    v68 = v48;
    v69 = v46;
    v70 = *(v13 + 40);
    sub_183FA5744();
    v51 = *(v46 + 16);
    if (!v51)
    {
      goto LABEL_81;
    }

    v53 = *(v46 + 32);
    v52 = v46 + 32;
    v54 = v53;
    if (v12 == v63)
    {
      v48 = *(v52 + 8 * v51 - 8);
    }
  }

  else
  {
    v49 = 0x7FF8000000000000;
    v50 = 0x7FF8000000000000;
    v54 = 0x7FF8000000000000;
    v48 = 0x7FF8000000000000;
  }

  *v13 = v49;
  *(v13 + 8) = v50;
  *(v13 + 16) = v54;
  *(v13 + 24) = v48;
  sub_183FA5EA0();
}

void Region.apply<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v88 = a3;
  v87 = a2;
  v86 = a1;
  v98[2] = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = *(v3 + 32);
  v85 = v3 + 32;
  v7 = (v5 & 0xFFFFFFFFFFFFFLL) != 0 && (~v5 & 0x7FF0000000000000) == 0;
  v8 = *(v6 + 16);
  v9 = !v7 && v8 == 0;
  v10 = (v3 + 40);
  v11 = *(v3 + 40);
  v12 = *(v3 + 24);
  *v91 = v5;
  v13 = *(v3 + 48);
  v84 = v3 + 48;
  if (v9)
  {
    v14 = 2;
  }

  else
  {
    v14 = v8;
  }

  *&v91[8] = *(v3 + 8);
  *&v91[24] = v12;
  v92 = v6;
  *&v93 = v11;
  *(&v93 + 1) = v13;
  v15 = sub_183FA4388(0, v14);

  v95 = v87;
  v96 = v88;
  v97 = v86;
  v16 = sub_183FA5A00();
  v18 = *(*v10 + 16);
  if (v14)
  {
    if (v14 - 1 >= v18)
    {
      goto LABEL_79;
    }

    v19 = *(*v10 + 4 * (v14 - 1) + 32);
  }

  else
  {
    v19 = 0;
  }

  v20 = v14 * v15;
  if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
  {
    goto LABEL_70;
  }

  if (v14 >> 60)
  {
    goto LABEL_81;
  }

  if ((8 * v14) >= 1025)
  {
    goto LABEL_71;
  }

  while (1)
  {
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v16, v17);
    if (v14 >= 0x101)
    {
      v62 = &v76 - v22;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v63 = swift_slowAlloc();
        v69.n128_u64[1] = v94;
        v69.n128_u64[0] = sub_183FB79F8;
        sub_183FA8818(v63, v14, v20, v62, v14, v4, 0, 0, v94, v69, v20, 1, v14 == v18, v19, 0, v14, 0);
        MEMORY[0x1865EFCB0](v63, -1, -1);
        v43 = v85;
        goto LABEL_60;
      }
    }

    v24 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v23);
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    if (v20 >> 60)
    {
      goto LABEL_83;
    }

    v83 = v19;
    v81 = v26;
    if ((8 * v20) >= 1025)
    {
      v64 = &v76 - v25;
      v65 = v27;
      v24 = swift_stdlib_isStackAllocationSafe();
      if ((v24 & 1) == 0)
      {
        break;
      }
    }

    v82 = v10;
    v80 = &v76;
    v79 = &v76;
    v29 = MEMORY[0x1EEE9AC00](v24, v28);
    v31 = &v76 - v30;
    v89 = 0;
    v90 = 0;
    v33 = *(v4 + 40);
    v32 = *(v4 + 48);
    v34 = *(v4 + 32);
    v98[0] = v32 + 32;
    v98[1] = 0;
    v35 = *(v4 + 16);
    *v91 = *v4;
    *&v91[16] = v35;
    v92 = v34;
    *&v93 = v33;
    *(&v93 + 1) = v32;
    MEMORY[0x1EEE9AC00](v29, *v91);
    *(&v76 - 12) = v31;
    *(&v76 - 11) = v20;
    v67 = &v89;
    v68 = v20;
    v69.n128_u8[0] = 1;
    v69.n128_u64[1] = v98;
    v70 = v36;
    v77 = v36;
    v71 = v14;
    v72 = &v90;
    v78 = v37;
    v73 = v37;
    v74 = v14;
    v75 = 0;
    swift_retain_n();

    sub_183FB5A70(v91, sub_183FAADE0, (&v76 - 14), v86, v87, v88);

    v38 = v89;
    if ((v89 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

    if (v14 != v18)
    {
      v41 = v83;
      sub_183F7DC7C(0, v83, v31, v89);
      v42 = v90;
      v10 = v82;
      if ((v90 & 0x8000000000000000) != 0)
      {
        goto LABEL_78;
      }

      v43 = v85;
      sub_183F7DC7C(0, v14, v77, v90);
LABEL_28:
      sub_183F7DCA8(0, v14, v78, v42);
      v19 = v38 - v41;
      if (!v19)
      {
        goto LABEL_60;
      }

      goto LABEL_49;
    }

    v39 = v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v82;
    v41 = v83;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v38 <= *(*v39 + 24) >> 1)
      {
        sub_183F7DC7C(0, v83, v31, v38);
        goto LABEL_34;
      }
    }

    else if (!v38)
    {
      v44 = MEMORY[0x1E69E7CC0];
      goto LABEL_33;
    }

    v44 = sub_183EA76E4(v38, 0);
    memcpy(v44 + 4, v31, 8 * v38);
LABEL_33:

    *v39 = v44;
LABEL_34:
    v42 = v90;
    if ((v90 & 0x8000000000000000) != 0)
    {
      goto LABEL_78;
    }

    v43 = v85;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v42 <= *(*v43 + 24) >> 1)
      {
        sub_183F7DC7C(0, v14, v77, v42);
        goto LABEL_42;
      }
    }

    else if (!v42)
    {
      v45 = MEMORY[0x1E69E7CC0];
      goto LABEL_41;
    }

    v45 = sub_183EA76E4(v42, 0);
    memcpy(v45 + 4, v77, 8 * v42);
LABEL_41:

    *v43 = v45;
LABEL_42:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v42 <= *(*v10 + 24) >> 1)
      {
        goto LABEL_28;
      }

LABEL_46:
      v46 = sub_183F9BAB8(v42, 0);
      memcpy(v46 + 4, v78, 4 * v42);
      goto LABEL_48;
    }

    if (v42)
    {
      goto LABEL_46;
    }

    v46 = MEMORY[0x1E69E7CC0];
LABEL_48:

    *v10 = v46;
    v19 = v38 - v41;
    if (!v19)
    {
      goto LABEL_60;
    }

LABEL_49:
    v20 = *v10;
    v47 = *(*v10 + 16);
    if (v47 < v42)
    {
      goto LABEL_84;
    }

    if (v42 == v47)
    {
      goto LABEL_60;
    }

    if (v42 >= v47)
    {
      goto LABEL_85;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_183F9C14C(v20);
    }

    while (v42 < *(v20 + 16))
    {
      v48 = v20 + 4 * v42;
      v49 = *(v48 + 32);
      v50 = __OFADD__(v49, v19);
      v51 = v49 + v19;
      if (v50)
      {
        goto LABEL_67;
      }

      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      if (HIDWORD(v51))
      {
        goto LABEL_69;
      }

      ++v42;
      *(v48 + 32) = v51;
      if (v47 == v42)
      {
        *v10 = v20;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v16 = swift_stdlib_isStackAllocationSafe();
    if ((v16 & 1) == 0)
    {
      v61 = swift_slowAlloc();
      sub_183FA6E10(v61, v14, v14, v20, v4, 0, 0, sub_183FB79F8, 1uLL, v94, v20, 1u, v14 == v18, v19, v14, 0);
      MEMORY[0x1865EFCB0](v61, -1, -1);
      v43 = v85;
      goto LABEL_60;
    }
  }

  v66 = swift_slowAlloc();
  sub_183FA9018(v66, v20, v65, v14, v64, v14, v4, 0, 0, sub_183FB79F8, v94, v20, 1, v14 == v18, v83, 0, v14, 0);
  MEMORY[0x1865EFCB0](v66, -1, -1);
  v43 = v85;
LABEL_60:
  v52 = *v43;
  if (*(*v43 + 16))
  {
    v53 = *(v4 + 16);
    v54 = *(v4 + 24);
    *v91 = *v4;
    *&v91[16] = v53;
    *&v91[24] = v54;
    v92 = v52;
    v93 = *(v4 + 40);
    sub_183FA5744();
    v57 = *(v52 + 16);
    if (!v57)
    {
      goto LABEL_80;
    }

    v59 = *(v52 + 32);
    v58 = v52 + 32;
    v60 = v59;
    if (v14 == v18)
    {
      v54 = *(v58 + 8 * v57 - 8);
    }
  }

  else
  {
    v55 = 0x7FF8000000000000;
    v56 = 0x7FF8000000000000;
    v60 = 0x7FF8000000000000;
    v54 = 0x7FF8000000000000;
  }

  *v4 = v55;
  *(v4 + 8) = v56;
  *(v4 + 16) = v60;
  *(v4 + 24) = v54;
  sub_183FA5EA0();
}

uint64_t sub_183FB4774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v160 = a8;
  v161 = a3;
  v162 = a7;
  v164 = a6;
  v168 = a5;
  v158 = a14;
  v155 = a12;
  v157 = a11;
  v156 = a9;
  v198 = *MEMORY[0x1E69E9840];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v151 = v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = v143 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v152 = v143 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = v143 - v30;
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v35 = v143 - v34;
  v37 = MEMORY[0x1EEE9AC00](v33, v36);
  v163 = v143 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v153 = v143 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v45 = v143 - v44;
  v47 = MEMORY[0x1EEE9AC00](v43, v46);
  v154 = (v143 - v48);
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v149 = v143 - v51;
  v165 = v52;
  MEMORY[0x1EEE9AC00](v50, v53);
  v55 = v143 - v54;
  v56 = *a1;
  v57 = *a1;
  v58 = ~*a1 & 0x7FF0000000000000;
  v159 = *(a1 + 32);
  v59 = *(v159 + 2);
  v60 = v59 == 0;
  v61 = (v57 & 0xFFFFFFFFFFFFFLL) != 0 && v58 == 0;
  if (v61 || v59)
  {
LABEL_47:
    v167 = v60;
    v97 = *(a1 + 40);
    v96 = *(a1 + 48);
    v153 = v97 + 32;
    v154 = (v159 + 32);
    v146 = v97;
    v166 = *(v97 + 16);
    v150 = v96 + 32;
    v147 = *(v96 + 16);
    sub_183F81520(a2, v35, &qword_1EA8548D8);
    sub_183F81520(v35, v31, &qword_1EA8548D8);
    sub_183F81520(v35, v152, &qword_1EA8548D8);
    v98 = *(v17 + 80);
    v99 = swift_allocObject();
    v148 = ((v98 + 16) & ~v98);
    sub_183FB8270(v35, &v148[v99], &qword_1EA8548D8);
    sub_183F81520(a2, v24, &qword_1EA8548D8);
    sub_183F81520(v24, v151, &qword_1EA8548D8);
    v149 = v98;
    v100 = swift_allocObject();
    v101 = v166;
    v100[2] = v153;
    v100[3] = v101;
    v102 = v147;
    v100[4] = v150;
    v100[5] = v102;
    sub_183FB8270(v24, v100 + ((v98 + 48) & ~v98), &qword_1EA8548D8);
    v166 = v99;

    v143[1] = v100;
    if (v59)
    {
      sub_183FB5E6C(0, v31, *v154);
      v104 = v103;
      if (v59 == 1)
      {
LABEL_53:

        v109 = 1;
        v106 = v59;
        goto LABEL_59;
      }

      v105 = (v159 + 40);
      v106 = 1;
      v107 = 0xFFFFFFFFLL;
      while (1)
      {
        if (!v107)
        {
          goto LABEL_128;
        }

        sub_183FB5E6C(v106, v31, *v105);
        if (v108 != v104)
        {
          break;
        }

        ++v106;
        --v107;
        ++v105;
        if (v59 == v106)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v106 = 0;
      v104 = 0.0;
    }

    v109 = v106 == v59;
    if (v106 == v59)
    {
      v111 = v167;
      if (!v59)
      {
LABEL_105:

        sub_183F814B4(v152, &qword_1EA8548D8);
        sub_183F814B4(v31, &qword_1EA8548D8);

        v110 = v151;
        return sub_183F814B4(v110, &qword_1EA8548D8);
      }

      goto LABEL_60;
    }

LABEL_59:
    v111 = v167;
LABEL_60:
    v112 = 0;
    v144 = v146 + 28;
    v145 = v59;
    v113 = v59 - 1;
    v114 = v159 + 40;
    v146 = v159 + 40;
    v147 = v31;
    while (1)
    {
      if (v111)
      {
        goto LABEL_130;
      }

      v115 = v106;
      v167 = v109;
      if (v109)
      {

        v116 = 0.0;
      }

      else
      {
        if (v106 <= 0x100000000)
        {
          v117 = 0x100000000;
        }

        else
        {
          v117 = v106;
        }

        v118 = v154[v106];

        if ((v106 & 0x8000000000000000) != 0)
        {
          goto LABEL_126;
        }

        if (HIDWORD(v106))
        {
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          sub_183F814B4(v154, &qword_1EA8548D8);
          sub_183F814B4(v149, &qword_1EA8548D8);
          sub_183F814B4(v153, &qword_1EA8548D8);
          __break(1u);
LABEL_130:
          sub_183F814B4(v152, &qword_1EA8548D8);
          sub_183F814B4(v31, &qword_1EA8548D8);
          sub_183F814B4(v151, &qword_1EA8548D8);
          __break(1u);
LABEL_131:
          sub_183F814B4(v152, &qword_1EA8548D8);
          sub_183F814B4(v31, &qword_1EA8548D8);
          __break(1u);
        }

        sub_183FB5E6C(v106, v31, v118);
        v116 = v119;
        v106 = v59;
        if ((v115 + 1) != v59)
        {
          v120 = v117 - 1;
          v121 = v115;
          while (1)
          {
            if (v120 == v121)
            {
              goto LABEL_107;
            }

            sub_183FB5E6C(v121 + 1, v31, *&v114[8 * v121]);
            if (v122 != v116)
            {
              break;
            }

            if (v113 == ++v121)
            {
              v106 = v59;
              goto LABEL_76;
            }
          }

          v106 = v121 + 1;
        }

LABEL_76:
        if (v106 < v115)
        {
          goto LABEL_115;
        }
      }

      if (v115 == v112)
      {
        goto LABEL_131;
      }

      v123 = v115 + ~v112;
      v124 = v123 + v112;
      if (__OFADD__(v123, v112))
      {
        goto LABEL_116;
      }

      if ((v124 & 0x8000000000000000) != 0)
      {
        goto LABEL_117;
      }

      if (HIDWORD(v124))
      {
        goto LABEL_118;
      }

      v125 = sub_183FB5E6C(v124, v152, v154[v112 + v123]);
      v159 = v106;
      if (v125)
      {
        v126 = *&v144[4 * v125];
      }

      else
      {
        v126 = 0;
      }

      v127 = v150 + 8 * v126;
      v128 = *(v153 + 4 * v125) - v126;
      v31 = v163;
      sub_183F81520(v151, v163, &qword_1EA8548D8);
      v129 = v148;
      v130 = swift_allocObject();
      sub_183FB8270(v31, &v129[v130], &qword_1EA8548D8);

      v187 = v104;
      *&v188 = v127;
      *(&v188 + 1) = v128;
      *&v189 = sub_183FB8198;
      *(&v189 + 1) = v130;
      *&v190 = sub_183FB65DC;
      *(&v190 + 1) = 0;
      *&v191 = sub_183FB6EAC;
      *(&v191 + 1) = 0;
      *&v192 = sub_183FB6ED4;
      *(&v192 + 1) = 0;
      v131 = v164 - *v168;
      if (v164 < *v168)
      {
        goto LABEL_119;
      }

      if (v161)
      {
        v132 = (v161 + 8 * *v168);
      }

      else
      {
        v132 = 0;
      }

      v195 = v190;
      v196 = v191;
      v197 = v192;
      v193 = v188;
      v194 = v189;

      v133 = sub_183FAA358(&v173, v132, v131);
      v184 = v177;
      v185 = v178;
      v186 = v179;
      v180 = v173;
      v181 = v174;
      v182 = v175;
      v183 = v176;
      sub_183F814B4(&v180, &qword_1EA8548F0);
      v114 = v146;
      v31 = v147;
      v106 = v159;
      if (v162)
      {
        if (v133 < 0)
        {
          goto LABEL_127;
        }

        if (*(v160 + 8) == v133)
        {
          if (!v133)
          {
LABEL_95:
            sub_183F814B4(&v187, &qword_1EA8548F8);
            goto LABEL_103;
          }

          v134 = *v160;
          v135 = v133;
          v136 = v132;
          while (*v134 == *v136)
          {
            ++v136;
            ++v134;
            if (!--v135)
            {
              goto LABEL_95;
            }
          }
        }

        v137 = v160;
        *v160 = v132;
        *(v137 + 8) = v133;
      }

      v138 = v168;
      if (__OFADD__(*v168, v133))
      {
        goto LABEL_120;
      }

      v139 = v187;
      *v168 += v133;
      v140 = v157;
      *(v156 + 8 * *v157) = v139;
      v141 = v158 + *v138;
      if (__OFADD__(v158, *v138))
      {
        goto LABEL_121;
      }

      if ((v141 & 0x8000000000000000) != 0)
      {
        goto LABEL_122;
      }

      if (HIDWORD(v141))
      {
        goto LABEL_123;
      }

      *(v155 + 4 * *v140) = v141;
      sub_183F814B4(&v187, &qword_1EA8548F8);
      if (__OFADD__(*v140, 1))
      {
        goto LABEL_124;
      }

      ++*v140;
LABEL_103:
      v112 = v115;
      v104 = v116;
      v59 = v145;
      v109 = v106 == v145;
      v111 = v167;
      if (v106 == v145)
      {
        v112 = v115;
        v104 = v116;
        if (v115 == v145)
        {
          goto LABEL_105;
        }
      }
    }
  }

  v62 = *(a1 + 24);
  v170 = v56;
  v159 = &v171 + 8;
  v171 = *(a1 + 8);
  v172 = v62;
  v169 = 0x200000002;
  v59 = &qword_1EA8548D8;
  v24 = &unk_18439AD08;
  sub_183F81520(a2, v55, &qword_1EA8548D8);
  sub_183F81520(v55, v149, &qword_1EA8548D8);
  sub_183F81520(v55, v154, &qword_1EA8548D8);
  v63 = *(v17 + 80);
  v64 = swift_allocObject();
  v151 = (v63 + 16) & ~v63;
  sub_183FB8270(v55, v64 + v151, &qword_1EA8548D8);
  sub_183F81520(a2, v45, &qword_1EA8548D8);
  sub_183F81520(v45, v153, &qword_1EA8548D8);
  v152 = v63;
  v65 = swift_allocObject();
  v65[2] = &v169;
  v65[3] = 2;
  v65[4] = &v170;
  v65[5] = 2;
  v66 = v64;
  sub_183FB8270(v45, v65 + ((v63 + 48) & ~v63), &qword_1EA8548D8);

  v67 = v149;
  sub_183FB5E6C(0, v149, *(&v171 + 1));
  v69 = v68;
  sub_183FB5E6C(1u, v67, v172);
  v17 = v70 == v69;
  if (v70 == v69)
  {
    a1 = 2;
  }

  else
  {
    a1 = 1;
  }

  v147 = v65;
  v148 = &v168 + 4;

  v71 = 0;
  v31 = 0;
  v150 = v66;
  do
  {
    if (v31)
    {
      goto LABEL_129;
    }

    v31 = v17;
    if (v17)
    {

      v73 = 0.0;
LABEL_19:
      v77 = 1;
LABEL_20:
      a2 = 2;
      if (a1 == v71)
      {
        goto LABEL_46;
      }

      goto LABEL_21;
    }

    v74 = *&v159[8 * a1];

    v75 = v149;
    sub_183FB5E6C(a1, v149, v74);
    v73 = v76;
    if (a1 == 1)
    {
      goto LABEL_19;
    }

    v77 = 1;
    sub_183FB5E6C(1u, v75, v172);
    if (v95 == v73)
    {
      goto LABEL_20;
    }

    if (a1 > 1)
    {
      goto LABEL_108;
    }

    v77 = 0;
    a2 = 1;
    if (a1 == v71)
    {
LABEL_46:
      v35 = &unk_18439AD08;
      sub_183F814B4(v154, &qword_1EA8548D8);
      sub_183F814B4(v149, &qword_1EA8548D8);
      __break(1u);
      goto LABEL_47;
    }

LABEL_21:
    v78 = sub_183FB5E6C(a1 - 1, v154, *&v159[8 * v71 + 8 * a1 + 8 * ~v71]);
    v167 = v77;
    v166 = a2;
    if (v78)
    {
      v79 = *&v148[4 * v78];
    }

    else
    {
      v79 = 0;
    }

    v80 = &v170 + v79;
    v81 = *(&v169 + v78) - v79;
    v82 = v163;
    v24 = &unk_18439AD08;
    sub_183F81520(v153, v163, &qword_1EA8548D8);
    v83 = v151;
    v84 = swift_allocObject();
    sub_183FB8270(v82, v84 + v83, &qword_1EA8548D8);

    v187 = v69;
    *&v188 = v80;
    *(&v188 + 1) = v81;
    *&v189 = sub_183FB88B8;
    *(&v189 + 1) = v84;
    *&v190 = sub_183FB65DC;
    *(&v190 + 1) = 0;
    *&v191 = sub_183FB6EAC;
    *(&v191 + 1) = 0;
    *&v192 = sub_183FB6ED4;
    *(&v192 + 1) = 0;
    v59 = (v164 - *v168);
    if (v164 < *v168)
    {
      goto LABEL_109;
    }

    if (v161)
    {
      v85 = (v161 + 8 * *v168);
    }

    else
    {
      v85 = 0;
    }

    v195 = v190;
    v196 = v191;
    v197 = v192;
    v193 = v188;
    v194 = v189;

    v86 = sub_183FAA358(&v173, v85, v59);
    v184 = v177;
    v185 = v178;
    v186 = v179;
    v180 = v173;
    v181 = v174;
    v182 = v175;
    v183 = v176;
    sub_183F814B4(&v180, &qword_1EA8548F0);
    v17 = v167;
    if (v162)
    {
      if (v86 < 0)
      {
        goto LABEL_125;
      }

      if (*(v160 + 8) == v86)
      {
        if (!v86)
        {
LABEL_10:
          sub_183F814B4(&v187, &qword_1EA8548F8);
          goto LABEL_11;
        }

        v87 = *v160;
        v88 = v86;
        v89 = v85;
        while (*v87 == *v89)
        {
          ++v89;
          ++v87;
          if (!--v88)
          {
            goto LABEL_10;
          }
        }
      }

      v90 = v160;
      *v160 = v85;
      *(v90 + 8) = v86;
    }

    v91 = v168;
    if (__OFADD__(*v168, v86))
    {
      goto LABEL_110;
    }

    v92 = v187;
    *v168 += v86;
    v93 = v157;
    *(v156 + 8 * *v157) = v92;
    v94 = v158 + *v91;
    if (__OFADD__(v158, *v91))
    {
      goto LABEL_111;
    }

    if ((v94 & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    if (HIDWORD(v94))
    {
      goto LABEL_113;
    }

    *(v155 + 4 * *v93) = v94;
    sub_183F814B4(&v187, &qword_1EA8548F8);
    if (__OFADD__(*v93, 1))
    {
      goto LABEL_114;
    }

    ++*v93;
LABEL_11:
    if (a1 == 2)
    {
      v72 = v17;
    }

    else
    {
      v72 = 0;
    }

    v71 = a1;
    a1 = v166;
    v69 = v73;
  }

  while ((v72 & 1) == 0);

  sub_183F814B4(v154, &qword_1EA8548D8);
  sub_183F814B4(v149, &qword_1EA8548D8);

  v110 = v153;
  return sub_183F814B4(v110, &qword_1EA8548D8);
}

uint64_t sub_183FB56F0(uint64_t *a1, void (*a2)(char **), uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a2;
  v48 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v30 - v9;
  v11 = (*a1 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a1 & 0x7FF0000000000000) == 0;
  v12 = a1[4];
  v13 = *(v12 + 16);
  if (!v11 && v13 == 0)
  {
    v26 = a1[3];
    v37 = *a1;
    v38 = *(a1 + 1);
    v39 = v26;
    v36 = 0x200000002;
    sub_183F81520(a4, v10, &qword_1EA8548D8);
    v27 = *(v7 + 80);
    v28 = swift_allocObject();
    sub_183FB8270(v10, v28 + ((v27 + 16) & ~v27), &qword_1EA8548D8);
    sub_183F81520(a4, v10, &qword_1EA8548D8);
    v22 = swift_allocObject();
    v22[2] = &v36;
    v22[3] = 2;
    v22[4] = &v37;
    v22[5] = 2;
    sub_183FB8270(v10, v22 + ((v27 + 48) & ~v27), &qword_1EA8548D8);
    v40 = &v38 + 8;
    v41 = xmmword_184399820;
    v42 = sub_183FB88BC;
    v43 = v28;
    v44 = sub_183FB65DC;
    v45 = 0;
    v25 = sub_183FB88C0;
  }

  else
  {
    v15 = (v12 + 32);
    v16 = a1[5];
    v17 = a1[6];
    v32 = v16 + 32;
    v33 = v15;
    v18 = *(v16 + 16);
    v19 = v17 + 32;
    v30 = *(v17 + 16);
    v31 = v18;
    sub_183F81520(a4, v10, &qword_1EA8548D8);
    v20 = *(v7 + 80);
    v21 = swift_allocObject();
    sub_183FB8270(v10, v21 + ((v20 + 16) & ~v20), &qword_1EA8548D8);
    sub_183F81520(a4, v10, &qword_1EA8548D8);
    v22 = swift_allocObject();
    v23 = v31;
    v22[2] = v32;
    v22[3] = v23;
    v24 = v30;
    v22[4] = v19;
    v22[5] = v24;
    sub_183FB8270(v10, v22 + ((v20 + 48) & ~v20), &qword_1EA8548D8);
    v40 = v33;
    v41 = v13;
    v42 = sub_183FB83B4;
    v43 = v21;
    v44 = sub_183FB65DC;
    v45 = 0;
    v25 = sub_183FB83B8;
  }

  v46 = v25;
  v47 = v22;
  v35(&v40);
}

uint64_t sub_183FB5A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = *(a1 + 16);
  v21 = *a1;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = (v21.n128_u64[0] & 0xFFFFFFFFFFFFFLL) != 0 && (~v21.n128_u64[0] & 0x7FF0000000000000) == 0;
  v16 = *(v12 + 16);
  if (!v15 && v16 == 0)
  {
    v23 = v21;
    v19.n128_u64[1] = *(&v20 + 1);
    v24 = v20;
    v19.n128_u64[0] = 0x200000002;
    v22 = 0x200000002;
    sub_183FB5C40(&v24, 2, 0, &v22, 2, &v23, 2, a4, v19, sub_183FB86C0, v14, a5, a6);
  }

  else
  {
    sub_183FB5C40(v12 + 32, v16, 0, v11 + 32, *(v11 + 16), v13 + 32, *(v13 + 16), a4, v21, sub_183FB86C0, v14, a5, a6);
  }
}

uint64_t sub_183FB5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, void (*a10)(void *), uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a8;
  v28 = a4;
  v30 = a6;
  v31 = a7;
  v29 = a5;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v38 = a13;
  v13 = *(a12 - 8);
  v14 = *(v13 + 64);
  v35 = a10;
  v36 = a11;
  MEMORY[0x1EEE9AC00](a1, a9);
  v26 = *(v13 + 16);
  v26(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v15, a12);
  v16 = *(v13 + 80);
  v17 = swift_allocObject();
  v18 = v38;
  *(v17 + 16) = a12;
  *(v17 + 24) = v18;
  v25 = *(v13 + 32);
  v25(v17 + ((v16 + 32) & ~v16), &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a12);
  v26(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27, a12);
  v19 = swift_allocObject();
  v20 = v38;
  v19[2] = a12;
  v19[3] = v20;
  v21 = v29;
  v19[4] = v28;
  v19[5] = v21;
  v22 = v31;
  v19[6] = v30;
  v19[7] = v22;
  v25(v19 + ((v16 + 64) & ~v16), &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a12);
  v37[0] = v32;
  v37[1] = v33;
  v37[2] = v34;
  v37[3] = sub_183FB870C;
  v37[4] = v17;
  v37[5] = sub_183FB65DC;
  v37[6] = 0;
  v37[7] = sub_183FB8748;
  v37[8] = v19;
  v35(v37);
}

uint64_t sub_183FB5E6C(unsigned int a1, uint64_t a2, double a3)
{
  v72 = a2;
  v59 = a1;
  v69 = sub_184390218();
  v63 = *(v69 - 8);
  v5 = MEMORY[0x1EEE9AC00](v69, v4);
  v68 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v70 = &v55 - v8;
  v9 = type metadata accessor for Region.Operation();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854900);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v55 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854908);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v55 - v32;
  sub_183F81520(v72, v29, &qword_1EA8548D8);
  sub_183FB819C(v29, v25);
  v34 = *(v10 + 56);
  v34(v25, 0, 1, v9);
  v34(v33, 1, 1, v9);
  sub_183FB8200(v25, v33);
  sub_183FB8270(v33, v22, &qword_1EA854900);
  v34(v33, 1, 1, v9);
  v71 = *(v10 + 48);
  v72 = v10 + 48;
  if (v71(v22, 1, v9) == 1)
  {
LABEL_2:
    sub_183F814B4(v33, &qword_1EA854908);
    return v59;
  }

  v66 = (v63 + 2);
  v67 = (v63 + 4);
  v65 = (v63 + 11);
  v64 = *MEMORY[0x1E69E7038];
  v61 = *MEMORY[0x1E69E7030];
  v60 = *MEMORY[0x1E69E7040];
  v58 = *MEMORY[0x1E69E7048];
  v57 = *MEMORY[0x1E69E7020];
  v62 = v22;
  ++v63;
  v56 = *MEMORY[0x1E69E7028];
  v36 = &qword_1EA854900;
  while (1)
  {
    sub_183FB819C(v22, v17);
    sub_183FAFA78(v17, v14);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      break;
    }

    v48 = v14[1];
    if (v48 < 0.0)
    {
      goto LABEL_29;
    }

    a3 = v14[3] + a3 * v48;
    sub_183FB82D8(v17);
LABEL_7:
    sub_183FB8270(v33, v22, v36);
    v34(v33, 1, 1, v9);
    if (v71(v22, 1, v9) == 1)
    {
      goto LABEL_2;
    }
  }

  v38 = v33;
  v39 = v36;
  v40 = v34;
  v41 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854808) + 48));
  v43 = v69;
  v42 = v70;
  v44 = v14;
  result = (*v67)(v70, v14, v69);
  if (v41 > 0.0)
  {
    v45 = a3 * v41;
    v73 = v45;
    v46 = v68;
    (*v66)(v68, v42, v43);
    v47 = (*v65)(v46, v43);
    if (v47 == v64)
    {
      v37 = round(v45);
      (*v63)(v42, v43);
    }

    else
    {
      if (v47 != v61)
      {
        v34 = v40;
        if (v47 == v60)
        {
          v49 = ceil(v45);
        }

        else if (v47 == v58)
        {
          v49 = floor(v45);
        }

        else
        {
          if (v47 != v57)
          {
            if (v47 == v56)
            {
              (*v63)(v70, v69);
              sub_183FB82D8(v17);
              if ((*&v45 & 0x8000000000000000) != 0)
              {
                v50 = floor(v45);
              }

              else
              {
                v50 = ceil(v45);
              }
            }

            else
            {
              v51 = v70;
              v52 = v69;
              sub_18438FDE8();
              v53 = v51;
              v34 = v40;
              v54 = *v63;
              (*v63)(v53, v52);
              sub_183FB82D8(v17);
              v54(v68, v52);
              v50 = v73;
            }

            a3 = v50 / v41;
            goto LABEL_6;
          }

          v49 = trunc(v45);
        }

        (*v63)(v70, v69);
        sub_183FB82D8(v17);
        a3 = v49 / v41;
LABEL_6:
        v36 = v39;
        v33 = v38;
        v22 = v62;
        v14 = v44;
        goto LABEL_7;
      }

      v37 = rint(v45);
      (*v63)(v70, v69);
    }

    sub_183FB82D8(v17);
    a3 = v37 / v41;
    v34 = v40;
    goto LABEL_6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

double sub_183FB6554@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_18438FD98();
  result = v5;
  *a2 = v5;
  *(a2 + 8) = v3;
  return result;
}

double sub_183FB65DC@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_183FB65E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, __n128 a9@<Q0>)
{
  v27 = a5;
  v28 = a7;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1, a9);
  v17 = *v16;
  v18 = *(v16 + 24);
  v29 = *(v16 + 8);
  v30 = v18;
  v31 = *(v16 + 40);
  result = sub_183F942D0();
  if ((v20 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_183FA4254(v20, a2, a3, a4);
    v23 = v22;
    (*(v14 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v27, a6);
    v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v25 = swift_allocObject();
    v26 = v28;
    *(v25 + 16) = a6;
    *(v25 + 24) = v26;
    result = (*(v14 + 32))(v25 + v24, &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
    a8[1] = v21;
    a8[2] = v23;
    a8[3] = sub_183FB880C;
    a8[4] = v25;
    a8[5] = sub_183FB65DC;
    a8[6] = 0;
    a8[7] = sub_183FB6EAC;
    a8[8] = 0;
    a8[9] = sub_183FB6ED4;
    a8[10] = 0;
    *a8 = v17;
  }

  return result;
}

uint64_t sub_183FB67C4(void (*a1)(_BYTE *, uint64_t, uint64_t, uint64_t), double a2)
{
  v71 = a1;
  v68 = sub_184390218();
  v62 = *(v68 - 8);
  v4 = MEMORY[0x1EEE9AC00](v68, v3);
  v67 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4, v6);
  v69 = &v55[-v7];
  v8 = type metadata accessor for Region.Operation();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v55[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854900);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = &v55[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v55[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v55[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854908);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v55[-v31];
  sub_183F81520(v71, v28, &qword_1EA8548D8);
  sub_183FB819C(v28, v24);
  v33 = *(v9 + 56);
  v33(v24, 0, 1, v8);
  v33(v32, 1, 1, v8);
  sub_183FB8200(v24, v32);
  sub_183FB8270(v32, v21, &qword_1EA854900);
  v71 = v33;
  v33(v32, 1, 1, v8);
  v35 = *(v9 + 48);
  v34 = v9 + 48;
  v70 = v35;
  if (v35(v21, 1, v8) == 1)
  {
    return sub_183F814B4(v32, &qword_1EA854908);
  }

  v65 = (v62 + 2);
  v66 = (v62 + 4);
  v64 = (v62 + 11);
  v63 = *MEMORY[0x1E69E7038];
  v60 = *MEMORY[0x1E69E7030];
  v59 = *MEMORY[0x1E69E7040];
  v58 = *MEMORY[0x1E69E7048];
  v57 = *MEMORY[0x1E69E7020];
  v61 = v21;
  ++v62;
  v56 = *MEMORY[0x1E69E7028];
  v37 = &qword_1EA854900;
  while (1)
  {
    sub_183FB819C(v21, v16);
    sub_183FAFA78(v16, v13);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      break;
    }

    if (*v13 < 0.0)
    {
      goto LABEL_29;
    }

    a2 = v13[2] + a2 * *v13;
    sub_183FB82D8(v16);
LABEL_7:
    sub_183FB8270(v32, v21, v37);
    v71(v32, 1, 1, v8);
    if (v70(v21, 1, v8) == 1)
    {
      return sub_183F814B4(v32, &qword_1EA854908);
    }
  }

  v39 = v32;
  v40 = v37;
  v41 = v34;
  v42 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854808) + 48));
  v43 = v68;
  v44 = v69;
  v45 = v13;
  result = (*v66)(v69, v13, v68);
  if (v42 > 0.0)
  {
    v46 = a2 * v42;
    v72 = v46;
    v47 = v67;
    (*v65)(v67, v44, v43);
    v48 = (*v64)(v47, v43);
    if (v48 == v63)
    {
      v38 = round(v46);
      (*v62)(v44, v43);
    }

    else
    {
      if (v48 != v60)
      {
        v34 = v41;
        if (v48 == v59)
        {
          v49 = ceil(v46);
        }

        else if (v48 == v58)
        {
          v49 = floor(v46);
        }

        else
        {
          if (v48 != v57)
          {
            if (v48 == v56)
            {
              (*v62)(v69, v68);
              sub_183FB82D8(v16);
              if ((*&v46 & 0x8000000000000000) != 0)
              {
                v50 = floor(v46);
              }

              else
              {
                v50 = ceil(v46);
              }
            }

            else
            {
              v51 = v69;
              v52 = v68;
              sub_18438FDE8();
              v53 = v51;
              v34 = v41;
              v54 = *v62;
              (*v62)(v53, v52);
              sub_183FB82D8(v16);
              v54(v67, v52);
              v50 = v72;
            }

            a2 = v50 / v42;
            goto LABEL_6;
          }

          v49 = trunc(v46);
        }

        (*v62)(v69, v68);
        sub_183FB82D8(v16);
        a2 = v49 / v42;
LABEL_6:
        v37 = v40;
        v32 = v39;
        v21 = v61;
        v13 = v45;
        goto LABEL_7;
      }

      v38 = rint(v46);
      (*v62)(v69, v68);
    }

    sub_183FB82D8(v16);
    a2 = v38 / v42;
    v34 = v41;
    goto LABEL_6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_183FB6EAC@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *result;
  if (((*(result + 16) - *(result + 8)) & 1) == 0)
  {
    v2 = NAN;
  }

  *a2 = v2;
  return result;
}

Swift::Void __swiftcall Region.apply(_:)(CGAffineTransform *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (v14 - v5);
  if (a1->a >= 0.0 && a1->b == 0.0 && a1->c == 0.0 && (d = a1->d, d >= 0.0))
  {
    *v6 = a1->a;
    v6[1] = d;
    *(v6 + 1) = *&a1->tx;
    type metadata accessor for Region.Operation();
    swift_storeEnumTagMultiPayload();
    sub_183FB3550(v6);
    sub_183F814B4(v6, &qword_1EA8548D8);
  }

  else
  {
    v8 = *(v1 + 6);
    v9 = swift_allocObject();
    v10 = *&a1->c;
    v9[1] = *&a1->a;
    v9[2] = v10;
    v9[3] = *&a1->tx;
    v11 = *v1;
    v16[1] = v1[1];
    v16[0] = v11;
    v16[2] = v1[2];
    v17 = v8;
    v18 = sub_183FB7DC0;
    v19 = v9;
    v20 = sub_183FB7DC8;
    v21 = 0;
    v22 = sub_183FB7DD8;
    v23 = 0;
    sub_183FB2DC0(v16, v14);
    v12 = v15;
    v13 = v14[1];
    *v1 = v14[0];
    v1[1] = v13;
    v1[2] = v14[2];
    *(v1 + 6) = v12;
  }
}

double *sub_183FB7084@<X0>(double *result@<X0>, double *a2@<X1>, int8x16_t *a3@<X8>)
{
  v3 = a2[1];
  if (v3 == 0.0 && a2[2] == 0.0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  v5 = 0;
  v6 = NAN;
  v7 = NAN;
  v8.i64[0] = 0x7FF8000000000000;
  v9.i64[0] = 0x7FF8000000000000;
  do
  {
    if (v5 > 1)
    {
      v10 = result[1];
      v11 = result[2];
      if (v5 != 2)
      {
        v10 = *result;
        v11 = result[3];
        if (v5 != 3)
        {
LABEL_46:
          result = sub_184390118();
          __break(1u);
          return result;
        }
      }
    }

    else
    {
      v10 = *result;
      v11 = result[2];
      if (v5)
      {
        v10 = result[1];
        v11 = result[3];
        if (v5 != 1)
        {
          goto LABEL_46;
        }
      }
    }

    v12 = a2[4] + *a2 * v10 + a2[2] * v11;
    v13 = a2[5] + v3 * v10 + a2[3] * v11;
    if ((*&v12 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v14 = *v9.i64;
    }

    else
    {
      v14 = v12;
    }

    if ((~*&v12 & 0x7FF0000000000000) != 0)
    {
      v14 = v12;
    }

    if (*v9.i64 > v12)
    {
      *v9.i64 = v14;
    }

    if ((*&v13 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v15 = *v8.i64;
    }

    else
    {
      v15 = v13;
    }

    if ((~*&v13 & 0x7FF0000000000000) != 0)
    {
      v15 = v13;
    }

    if (*v8.i64 > v13)
    {
      *v8.i64 = v15;
    }

    if ((*&v12 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v7;
    }

    else
    {
      v16 = v12;
    }

    if ((~*&v12 & 0x7FF0000000000000) != 0)
    {
      v16 = v12;
    }

    if (v12 >= v7)
    {
      v7 = v16;
    }

    if (v13 >= v6)
    {
      if ((~*&v13 & 0x7FF0000000000000) != 0)
      {
        v6 = v13;
      }

      else if ((*&v13 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v6 = v13;
      }
    }

    ++v5;
  }

  while (v4 != v5);
  v17 = *v9.i64 >= v7;
  if (*v8.i64 >= v6)
  {
    v17 = 1;
  }

  *&v9.i64[1] = v7;
  *&v8.i64[1] = v6;
  if (v17)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19 = vdupq_n_s64(v18);
  *a3 = vbicq_s8(v9, v19);
  a3[1] = vbicq_s8(v8, v19);
  a3[2].i8[0] = v17;
  return result;
}

void Region.bounds.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = (~*v1 & 0x7FF0000000000000) == 0;
  if ((*v1 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v3 = 0;
  }

  if (v3)
  {
    v2 = 0;
    v4 = 0;
    v5 = 0uLL;
  }

  else
  {
    v4 = v1[3];
    v5 = *(v1 + 1);
  }

  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
}

double Region.boundsRect.getter()
{
  result = *v0;
  if ((~*v0 & 0x7FF0000000000000) == 0 && (*v0 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return INFINITY;
  }

  return result;
}

Swift::Bool __swiftcall Region.contains(_:)(CGPoint a1)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*v1 > a1.x || v3 <= a1.x || v4 > a1.y || v5 <= a1.y)
  {
    return 0;
  }

  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v12 = *(v1 + 48);
  if ((~*&v2 & 0x7FF0000000000000) == 0 && (*&v2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    x = a1.x;
    v19 = sub_183F94198(v11 + 32, *(v11 + 16), a1.y);
    goto LABEL_24;
  }

  v14 = *(v11 + 16);
  if (v14)
  {
    x = a1.x;
    v19 = sub_183F94198(v11 + 32, v14, a1.y);
    if (!*(v11 + 16))
    {
      *v26 = v2;
      *&v26[1] = v3;
      *&v26[2] = v4;
      *&v26[3] = v5;
      v25 = 0x200000002;
      v15 = v19 - 1;
      if (!__OFSUB__(v19, 1))
      {
        v16 = x;
        if (v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          if (__OFSUB__(v15, 1))
          {
            goto LABEL_37;
          }

          v17 = *(&v25 + v19 - 2);
        }

        v24 = &v26[v17];
        v23 = *(&v26[-1] + v15) - v17;
        return (sub_183F94198(v24, v23, v16) & 0x8000000000000001) == 1;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

LABEL_24:
    v20 = v19 - 1;
    if (__OFSUB__(v19, 1))
    {
      __break(1u);
    }

    else
    {
      v21 = v10 + 32;
      if (v19 == 1)
      {
        v22 = 0;
        v16 = x;
        goto LABEL_29;
      }

      if (!__OFSUB__(v20, 1))
      {
        v16 = x;
        v22 = *(v21 + 4 * (v19 - 2));
LABEL_29:
        v23 = *(v21 + 4 * v20) - v22;
        v24 = (v12 + 8 * v22 + 32);
        return (sub_183F94198(v24, v23, v16) & 0x8000000000000001) == 1;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  return 1;
}

int8x16_t sub_183FB7468()
{
  if (qword_1EA854108 != -1)
  {
    swift_once();
  }

  v0 = vdup_lane_s32(vmovn_s64(vcgtq_f64(vdupq_laneq_s64(xmmword_1EA854888, 1), xmmword_1EA854888)), 0);
  v1.i64[0] = v0.i32[0];
  v1.i64[1] = v0.i32[1];
  result = vbslq_s8(v1, xmmword_1EA854888, vdupq_n_s64(0x7FF8000000000000uLL));
  xmmword_1EA854898 = result;
  unk_1EA8548A8 = result;
  qword_1EA8548B8 = MEMORY[0x1E69E7CC0];
  unk_1EA8548C0 = MEMORY[0x1E69E7CC0];
  qword_1EA8548C8 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static Region.infinite.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA854110 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EA8548B8;
  v2 = unk_1EA8548C0;
  v3 = qword_1EA8548C8;
  v4 = unk_1EA8548A8;
  *a1 = xmmword_1EA854898;
  *(a1 + 16) = v4;
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
}

uint64_t Region.isInfinite.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v2;
  v9[2] = *(v0 + 32);
  v10 = v1;
  if (qword_1EA854110 != -1)
  {
    swift_once();
  }

  v5[0] = xmmword_1EA854898;
  v5[1] = unk_1EA8548A8;
  v6 = qword_1EA8548B8;
  v7 = unk_1EA8548C0;
  v8 = qword_1EA8548C8;
  v3 = _s12CoreGraphics6RegionV2eeoiySbAC_ACtFZ_0(v9, v5);

  return v3 & 1;
}

uint64_t Region.insetBy(dx:dy:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = *v3;
  v4 = *(v3 + 8);
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = (~*&v5 & 0x7FF0000000000000) != 0 || (*&v5 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v11 || a2 == 0.0 && a3 == 0.0)
  {
    *a1 = v5;
    *(a1 + 8) = v4;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = result;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
  }

  else if (*(result + 16))
  {
    if ((a2 >= 0.0 || a3 <= 0.0) && (a2 <= 0.0 || a3 >= 0.0))
    {
      *&v32 = v5;
      *(&v32 + 1) = v4;
      *&v33 = v7;
      *(&v33 + 1) = v6;
      v34 = result;
      v35 = v9;
      v36 = v10;
      *&v28[0] = 0;
      sub_183F7D0CC(v28, v43);
      v26 = swift_allocObject();
      *(v26 + 16) = a2;
      *(v26 + 24) = a3;
      v44 = sub_183FB8004;
      v45 = v26;
      v46 = sub_183FB7FD0;
      v47 = 0;
      v48 = sub_183FB7FE0;
      v49 = 0;
      v17 = v43;
    }

    else
    {
      *&v32 = v5;
      *(&v32 + 1) = v4;
      *&v33 = v7;
      *(&v33 + 1) = v6;
      v34 = result;
      v35 = v9;
      v36 = v10;
      *&v28[0] = 0;
      sub_183F7D0CC(v28, v43);
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      v44 = sub_183FB8040;
      v45 = v15;
      v46 = sub_183FB7FD0;
      v47 = 0;
      v48 = sub_183FB7FE0;
      v49 = 0;
      sub_183F7A27C(v43, 1, &v32);
      v28[0] = v32;
      v28[1] = v33;
      v29 = v34;
      v30 = v35;
      v31 = v36;
      v27 = 0;
      sub_183F7D0CC(&v27, &v32);

      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      v37 = sub_183FB8080;
      v38 = v16;
      v39 = sub_183FB7FD0;
      v40 = 0;
      v41 = sub_183FB7FE0;
      v42 = 0;
      v17 = &v32;
    }

    return sub_183F7A27C(v17, 1, a1);
  }

  else
  {
    v18 = v5 + a2;
    v19 = v4 - a2;
    v20 = v7 + a3;
    v21 = v6 - a3;
    if (v18 >= v19 || v20 >= v21)
    {
      v18 = NAN;
      v19 = NAN;
      v20 = NAN;
      v21 = NAN;
    }

    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    *(a1 + 24) = v21;
    v23 = MEMORY[0x1E69E7CC0];
    *(a1 + 32) = MEMORY[0x1E69E7CC0];
    *(a1 + 40) = v23;
    *(a1 + 48) = v23;
  }

  return result;
}

uint64_t Region.rects.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = sub_183FB79DC;
  *(a1 + 64) = 0;
}

double sub_183FB79DC@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  v3 = a1[2];
  v4 = a1[1] - *a1;
  v5 = a1[3] - v3;
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_183FB7A04(__int128 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = a1[2];
  v71 = a1[1];
  v72 = v13;
  v70 = *a1;
  v46 = *(a1 + 7);
  v73 = *(a1 + 6);
  v74[0] = v70;
  v74[1] = v71;
  *(&v45 + 1) = *(a1 + 4);
  v75 = *(&v45 + 1);
  v14 = *(&v70 + 1);
  v44 = v70;
  *&v45 = *(&v71 + 1);
  sub_183F81520(v74, &v57, &qword_1EA854910);

  v15 = sub_183F7DF30(0);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v19 == v14 && v21 == v14)
  {
LABEL_29:
  }

  while ((v17 & 1) == 0)
  {
    v23 = v14;
    if (v44)
    {
      v24 = v44 + 8 * v19;
    }

    else
    {
      v24 = 0;
    }

    v25 = (v21 - v19);

    v26 = sub_183F7DF30(v21);
    v49 = v27;
    v29 = v28;
    v21 = v30;
    *&v50 = v15;
    *(&v50 + 1) = v24;
    *&v51 = v25;
    *(&v51 + 1) = v19;
    v52 = v45;
    v46(&v57, &v50);
    result = sub_183F814B4(v74, &qword_1EA854910);
    *&v64[32] = v59;
    *&v64[48] = v60;
    *&v64[64] = v61;
    *&v64[80] = v62;
    *v64 = v57;
    *&v64[16] = v58;
    v31 = a5 - *a4;
    if (a5 < *a4)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }

    if (a2)
    {
      v32 = (a2 + 8 * *a4);
    }

    else
    {
      v32 = 0;
    }

    v67 = *&v64[40];
    v68 = *&v64[56];
    v69 = *&v64[72];
    v65 = *&v64[8];
    v66 = *&v64[24];

    v33 = sub_183FAA358(&v50, v32, v31);
    v61 = v54;
    v62 = v55;
    v63 = v56;
    v57 = v50;
    v58 = v51;
    v59 = v52;
    v60 = v53;
    result = sub_183F814B4(&v57, &qword_1EA8548F0);
    if (a6)
    {
      if (v33 < 0)
      {
        goto LABEL_36;
      }

      if (*(a7 + 8) == v33)
      {
        if (!v33)
        {
LABEL_18:
          result = sub_183F814B4(v64, &qword_1EA8548F8);
          goto LABEL_26;
        }

        v34 = *a7;
        v35 = v33;
        v36 = v32;
        while (*v34 == *v36)
        {
          ++v36;
          ++v34;
          if (!--v35)
          {
            goto LABEL_18;
          }
        }
      }

      *a7 = v32;
      *(a7 + 8) = v33;
    }

    if (__OFADD__(*a4, v33))
    {
      goto LABEL_31;
    }

    v37 = *v64;
    *a4 += v33;
    *(a8 + 8 * *a10) = v37;
    v38 = a13 + *a4;
    if (__OFADD__(a13, *a4))
    {
      goto LABEL_32;
    }

    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (HIDWORD(v38))
    {
      goto LABEL_34;
    }

    *(a11 + 4 * *a10) = v38;
    result = sub_183F814B4(v64, &qword_1EA8548F8);
    if (__OFADD__(*a10, 1))
    {
      goto LABEL_35;
    }

    ++*a10;
LABEL_26:
    v19 = v29;
    v15 = v26;
    v39 = v29 == v23;
    v14 = v23;
    v17 = v49;
    if (v39)
    {
      v15 = v26;
      if (v21 == v23)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FB7DD8@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (*(result + 32))
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 16);
    *a2 = *result;
    a2[1] = v2;
  }

  return result;
}

uint64_t sub_183FB7DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = v26 - v15;
  v17 = *a1;
  v18 = *(a1 + 3);
  v26[0] = *(a1 + 1);
  v26[1] = v18;
  v27 = a1[5];
  result = sub_183F942D0();
  if ((v20 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = sub_183FA4254(v20, a2, a3, a4);
    v23 = v22;
    sub_183F81520(a5, v16, &qword_1EA8548D8);
    v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v25 = swift_allocObject();
    result = sub_183FB8270(v16, v25 + v24, &qword_1EA8548D8);
    a6[1] = v21;
    a6[2] = v23;
    a6[3] = sub_183FB88B8;
    a6[4] = v25;
    a6[5] = sub_183FB65DC;
    a6[6] = 0;
    a6[7] = sub_183FB6EAC;
    a6[8] = 0;
    a6[9] = sub_183FB6ED4;
    a6[10] = 0;
    *a6 = v17;
  }

  return result;
}

uint64_t sub_183FB7FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (result)
  {
    v4 = *(a1 + 8);
    *a2 = result;
    *(a2 + 8) = v4 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FB8004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_183F9232C(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_183FB8040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_183F9232C(*a1, *(a1 + 8), *(v2 + 16), 0.0);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_183FB8080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_183F9232C(*a1, *(a1 + 8), 0.0, *(v2 + 16));
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_183FB80D4()
{
  result = qword_1EA8548E0;
  if (!qword_1EA8548E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8548E8);
    sub_183FA4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8548E0);
  }

  return result;
}

uint64_t sub_183FB8158(uint64_t a1, void (*a2)(char **), uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  return sub_183FB56F0(v7, a2, a3, v4);
}

uint64_t sub_183FB819C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Region.Operation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_183FB8200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_183FB8270(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_183FB82D8(uint64_t a1)
{
  v2 = type metadata accessor for Region.Operation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_183FB8334@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8) - 8);
  result = sub_183FB67C4((v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80))), *a1);
  *a2 = v7;
  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  type metadata accessor for Region.Operation();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_184390218();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_183FB84B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8) - 8);
  result = sub_183FB5E6C(*(a1 + 8), v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), *a1);
  *a2 = v7;
  *(a2 + 8) = result;
  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  type metadata accessor for Region.Operation();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_184390218();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_183FB862C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_183FB7DF0(a1, v6, v7, v8, v9, a2);
}

uint64_t sub_183FB86C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v7 = *(a1 + 64);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_183FB880C@<D0>(double *a1@<X8>)
{
  sub_18438FD98();
  result = v3;
  *a1 = v3;
  return result;
}

CoreGraphics::CGPathFillRule_optional __swiftcall CGPathFillRule.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_183FB88EC()
{
  result = qword_1EA854918;
  if (!qword_1EA854918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854918);
  }

  return result;
}

void *sub_183FB8940@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_183FB896C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_183FB89DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_183FB8B1C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_183FB8D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v10);
  v12 = &v14 - v11;
  (*(v6 + 32))(v8, v3, v5);
  sub_18438FD38();
  return sub_183FB8EAC(v12, MEMORY[0x1E69E7CC0], a2);
}

uint64_t sub_183FB8EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  result = type metadata accessor for Subregions.Iterator();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_183FB8F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    result = sub_18438FF58();
    v5 = v25.i64[0];
    if (!v25.i64[0])
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return result;
    }

    v6 = v25.i8[8];

    sub_183F78560(v7, v6 & 1, 0, &v25);
    if ((sub_183F90F40(v5, v6 & 1) & 1) == 0)
    {
      break;
    }

    v23 = v26;
    v24 = v25;
    v8 = v27;
    v9 = v28;
    v10 = *(a1 + 36);
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_183F7FF94(0, *(v11 + 16) + 1, 1);
      v11 = *(v3 + v10);
    }

    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_183F7FF94((v13 > 1), v14 + 1, 1);
    }

    v15 = *(v3 + v10);
    *(v15 + 16) = v14 + 1;
    v16 = v15 + 56 * v14;
    *(v16 + 32) = v24;
    *(v16 + 48) = v23;
    *(v16 + 64) = v8;
    *(v16 + 80) = v9;
    *(v3 + v10) = v15;
  }

  v17 = *(a1 + 36);
  result = sub_183FB9194((v3 + v17), &v25);
  v18 = *(*(v3 + v17) + 16);
  if (v18 < result)
  {
    __break(1u);
  }

  else
  {
    sub_183F80DA4(result, v18);

    v19 = v28;
    v20 = v26;
    *a2 = v25;
    *(a2 + 16) = v20;
    *(a2 + 32) = v27;
    *(a2 + 48) = v19;
  }

  return result;
}

uint64_t sub_183FB9194(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_183FB94D4(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = (v4 + 16);
    v9 = *(v4 + 16);
    if (v8 == v9)
    {
      return v7;
    }

    v11 = 56 * result + 88;
    while (v8 < v9)
    {
      v50 = v8;
      v42 = v4;
      v43 = v7;
      v41 = v11;
      v14 = v4 + v11;
      v15 = *(v4 + v11);
      v16 = *(v4 + v11 + 8);
      v17 = *(v4 + v11 + 16);
      v18 = *(v4 + v11 + 24);
      v19 = *(v4 + v11 + 32);
      v20 = *(v14 + 40);
      v21 = *(v14 + 48);
      v23 = *(a2 + 32);
      v22 = *(a2 + 40);
      v24 = *(a2 + 48);
      v25 = *(a2 + 16);
      v45 = *a2;
      v46 = v25;
      v47 = v23;
      v48 = v22;
      v49 = v24;
      v44[0] = v15;
      v44[1] = v16;
      v44[2] = v17;
      v44[3] = v18;
      v44[4] = v19;
      v44[5] = v20;
      v44[6] = v21;

      LOBYTE(v22) = Region.isSuperset(of:)(v44);

      if (v22)
      {
        *&v45 = v15;
        *(&v45 + 1) = v16;
        *&v46 = v17;
        *(&v46 + 1) = v18;
        v47 = v19;
        v48 = v20;
        v49 = v21;
        Region.subtract(_:)(&v45);

        v4 = v42;
        v7 = v43;
        v12 = v50;
        v13 = v41;
      }

      else
      {

        v26 = v43;
        v12 = v50;
        if (v50 == v43)
        {
          v13 = v41;
          v4 = v42;
        }

        else
        {
          v4 = v42;
          if ((v43 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          if (v43 >= *v10)
          {
            goto LABEL_25;
          }

          if (v50 >= *v10)
          {
            goto LABEL_26;
          }

          v27 = v42 + 32 + 56 * v43;
          v35 = *(v27 + 16);
          v36 = *v27;
          v28 = *(v27 + 40);
          v29 = *(v27 + 48);
          v38 = *(v14 + 16);
          v39 = *v14;
          v31 = *(v14 + 32);
          v30 = *(v14 + 40);
          v32 = *(v14 + 48);
          v37 = *(v27 + 32);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_183F9C160(v42);
            v4 = result;
          }

          if (v43 >= *(v4 + 16))
          {
            goto LABEL_27;
          }

          v33 = v4 + 56 * v43;
          *(v33 + 32) = v39;
          *(v33 + 48) = v38;
          *(v33 + 64) = v31;
          *(v33 + 72) = v30;
          *(v33 + 80) = v32;

          v12 = v50;
          if (v50 >= *(v4 + 16))
          {
            goto LABEL_28;
          }

          v34 = v4 + v41;
          *v34 = v36;
          *(v34 + 16) = v35;
          *(v34 + 32) = v37;
          *(v34 + 40) = v28;
          *(v34 + 48) = v29;

          v13 = v41;
          *a1 = v4;
          v26 = v43;
        }

        v7 = v26 + 1;
      }

      v8 = v12 + 1;
      v10 = (v4 + 16);
      v9 = *(v4 + 16);
      v11 = v13 + 56;
      if (v8 == v9)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_183FB94D4(uint64_t a1, __int128 *a2)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 80); ; i += 7)
  {
    v5 = *(i - 6);
    v6 = *(i - 5);
    v7 = *(i - 4);
    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v13 = *(a2 + 4);
    v12 = *(a2 + 5);
    v14 = *(a2 + 6);
    v15 = a2[1];
    v18 = *a2;
    v19 = v15;
    v20 = v13;
    v21 = v12;
    v22 = v14;
    v17[0] = v5;
    v17[1] = v6;
    v17[2] = v7;
    v17[3] = v8;
    v17[4] = v9;
    v17[5] = v10;
    v17[6] = v11;

    LOBYTE(v12) = Region.isSuperset(of:)(v17);

    if (v12)
    {
      break;
    }

    if (v23 == ++v3)
    {
      return 0;
    }
  }

  *&v18 = v5;
  *(&v18 + 1) = v6;
  *&v19 = v7;
  *(&v19 + 1) = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  Region.subtract(_:)(&v18);

  return v3;
}

void sub_183FB9688()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    sub_183FB9A8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_183FB9720(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
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
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_183FB98B0(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v9 + 1;
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

  if (v9 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v9)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      bzero(a1, v10);
      *a1 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v10) = 0;
  }

  else if (v14)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v7 < 0x7FFFFFFF)
  {
    v18 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = (a2 - 1);
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v6 + 56);

    v17(a1, a2);
  }
}

void sub_183FB9A8C()
{
  if (!qword_1ED4DFB78)
  {
    v0 = sub_1843900D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED4DFB78);
    }
  }
}

uint64_t sub_183FB9B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if ((*(a1 + 24) & 1) == 0)
  {
    v12 = *(a1 + 16);
    v13 = *(a1 + 8);
    if ((*(a2 + 24) & 1) == 0)
    {
      if (v12 < v5)
      {
        if (v9 < v7)
        {
          goto LABEL_167;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1843982F0;
        *(inited + 32) = v5;
        *(inited + 40) = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0);
        v74 = swift_allocObject();
        v75 = _swift_stdlib_malloc_size(v74);
        v76 = v75 - 40;
        if (v75 < 40)
        {
          v76 = v75 - 33;
        }

        v74[3] = 0;
        v74[4] = 0;
        v74[2] = v76 >> 3;
        v77 = *(inited + 16);
        if (v77)
        {
          if (v77 > 2)
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          memcpy(v74 + 5, (inited + 32), 8 * v77);
        }

        v74[3] = 2;
        swift_setDeallocating();
        v123 = v74;
        v124 = 0;
        sub_183F911D4(v12);
        sub_183F912E8(*&v8);
        sub_183F911D4(v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854920);
        v78 = swift_allocObject();
        *(v78 + 16) = v74;
        *(v78 + 24) = 0;
        *(v78 + 32) = 0;
        v79 = v74[3];
        if (v79 < 1)
        {
          goto LABEL_154;
        }

        if (v79 == 1)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        v8 = v78;
        v80 = v74[2];
        v81 = v74[4] + 1;
        if (v81 < v80)
        {
          v80 = 0;
        }

        v52 = v74[v81 - v80 + 5];
        swift_retain_n();
        swift_beginAccess();
        v82 = *(v8 + 16);
        v83 = *(v8 + 24);

        v84 = v82[3];
        v85 = v84 - 2;
        if (__OFSUB__(v84, 2))
        {
          goto LABEL_158;
        }

        if (v85 < 0)
        {
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        if (v85 >= v84)
        {
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (v84 - 1 >= v84)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        v86 = v82[4];
        v87 = v82[2];
        if (v86 + v85 >= v87)
        {
          v88 = v82[2];
        }

        else
        {
          v88 = 0;
        }

        v89 = v86 + v85 - v88;
        v90 = v86 + v85 + 1;
        if (v90 >= v87)
        {
          v91 = v82[2];
        }

        else
        {
          v91 = 0;
        }

        v92 = v90 - v91;
        if ((v83 ^ v85))
        {
          v93 = v89;
        }

        else
        {
          v93 = v92;
        }

        v13 = *&v82[v93 + 5];

        v64 = 0;
        v63 = 1;
      }

      else
      {
        if (v9 >= v7)
        {
          goto LABEL_167;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8);
        v34 = swift_initStackObject();
        *(v34 + 16) = xmmword_1843982F0;
        *(v34 + 32) = v7;
        *(v34 + 40) = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0);
        v35 = swift_allocObject();
        v36 = _swift_stdlib_malloc_size(v35);
        v37 = v36 - 40;
        if (v36 < 40)
        {
          v37 = v36 - 33;
        }

        v35[3] = 0;
        v35[4] = 0;
        v35[2] = v37 >> 3;
        v38 = *(v34 + 16);
        if (v38)
        {
          if (v38 > 2)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          memcpy(v35 + 5, (v34 + 32), 8 * v38);
        }

        v35[3] = 2;
        swift_setDeallocating();
        v123 = v35;
        v124 = 0;
        sub_183F911D4(v9);
        sub_183F912E8(v13);
        sub_183F911D4(v12);
        v39 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854920);
        v8 = swift_allocObject();
        *(v8 + 16) = v39;
        *(v8 + 24) = 0;
        *(v8 + 32) = 0;
        swift_retain_n();
        swift_beginAccess();
        v40 = *(v8 + 16);
        v41 = *(v8 + 24);

        v42 = v40[3];
        v43 = v42 - 2;
        if (__OFSUB__(v42, 2))
        {
          goto LABEL_153;
        }

        if (v43 < 0)
        {
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (v43 >= v42)
        {
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (v42 - 1 >= v42)
        {
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        v44 = v40[4];
        v45 = v40[2];
        if (v44 + v43 >= v45)
        {
          v46 = v40[2];
        }

        else
        {
          v46 = 0;
        }

        v47 = v44 + v43 - v46;
        v48 = v44 + v43 + 1;
        if (v48 >= v45)
        {
          v49 = v40[2];
        }

        else
        {
          v49 = 0;
        }

        v50 = v48 - v49;
        if ((v41 ^ v43))
        {
          v51 = v47;
        }

        else
        {
          v51 = v50;
        }

        v52 = v40[v51 + 5];

        swift_beginAccess();
        v53 = *(v8 + 16);
        v54 = v53[3];
        if (v54 < 1)
        {
          goto LABEL_161;
        }

        if (v54 == 1)
        {
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        v55 = v53[4];
        v56 = v53[2];
        if (v55 >= v56)
        {
          v57 = v53[2];
        }

        else
        {
          v57 = 0;
        }

        v58 = v55 - v57;
        v59 = v55 + 1;
        if (v59 < v56)
        {
          v56 = 0;
        }

        v60 = v59 - v56;
        if (*(v8 + 24))
        {
          v61 = v58;
        }

        else
        {
          v61 = v60;
        }

        v13 = *&v53[v61 + 5];

        v63 = 0;
        v64 = 1;
      }

      v94 = 0;
      v95 = 0;
      v96 = 1;
      v97 = 0x4000000000000001;
      goto LABEL_137;
    }

    v5 = *a2;
    v7 = *a1;
    if (v12 < *a1)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    v13 = *(a2 + 8);

    v12 = v9;
    v8 = v6;
    if (v9 < v7)
    {
LABEL_25:
      if (LOBYTE(v5))
      {
        goto LABEL_167;
      }

      swift_beginAccess();
      v25 = *(v8 + 16);
      v26 = v25[3];
      if (v26 < 1)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      if (v26 == 1)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v27 = v25[4];
      v28 = v25[2];
      if (v27 >= v28)
      {
        v29 = v25[2];
      }

      else
      {
        v29 = 0;
      }

      v30 = v27 - v29;
      v31 = v27 + 1;
      if (v31 < v28)
      {
        v28 = 0;
      }

      v32 = v31 - v28;
      if (*(v8 + 24))
      {
        v33 = v30;
      }

      else
      {
        v33 = v32;
      }

      if (*&v25[v33 + 5] == v13)
      {
        sub_183F813A0(a2, &v123);
      }

      else
      {
        swift_beginAccess();
        sub_183F813A0(a2, &v123);
        sub_183F91FD4(v13);
        swift_endAccess();
      }

      swift_beginAccess();
      sub_183F9214C(v7);
      result = swift_endAccess();
      v98 = *(v8 + 16);
      v99 = v98[3];
      if (v99 < 1)
      {
        goto LABEL_146;
      }

      if (v99 == 1)
      {
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      v64 = 0;
      v100 = v98[4];
      v101 = v98[2];
      if (v100 >= v101)
      {
        v102 = v98[2];
      }

      else
      {
        v102 = 0;
      }

      v103 = v100 - v102;
      v104 = v100 + 1;
      if (v104 < v101)
      {
        v101 = 0;
      }

      v105 = v104 - v101;
      if (*(v8 + 24))
      {
        v105 = v103;
      }

      v63 = &v98[v105];
      v52 = *(v63 + 40);
      goto LABEL_135;
    }

LABEL_8:
    if ((LOBYTE(v5) & 1) == 0)
    {
      goto LABEL_167;
    }

    swift_beginAccess();
    v14 = *(v8 + 16);
    v15 = v14[3];
    v16 = v15 - 2;
    if (__OFSUB__(v15, 2))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v16 < 0)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v16 >= v15)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v15 - 1 >= v15)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v17 = v14[4];
    v18 = v14[2];
    if (v17 + v16 >= v18)
    {
      v19 = v14[2];
    }

    else
    {
      v19 = 0;
    }

    v20 = v17 + v16 - v19;
    v21 = v17 + v15 - 1;
    if (v21 >= v18)
    {
      v22 = v14[2];
    }

    else
    {
      v22 = 0;
    }

    v23 = v21 - v22;
    if ((*(v8 + 24) ^ v16))
    {
      v24 = v20;
    }

    else
    {
      v24 = v23;
    }

    if (*&v14[v24 + 5] == v13)
    {
      sub_183F813A0(a2, &v123);
    }

    else
    {
      swift_beginAccess();
      sub_183F813A0(a2, &v123);
      sub_183F912E8(v13);
      swift_endAccess();
    }

    swift_beginAccess();
    sub_183F911D4(v12);
    swift_endAccess();
    v106 = *(v8 + 32);
    swift_retain_n();
    for (i = v8; v106; v106 = *(v106 + 32))
    {
      i = v106;
    }

    swift_beginAccess();
    v108 = *(i + 16);
    v109 = *(i + 24);

    v110 = v108[3];
    v111 = v110 - 2;
    if (__OFSUB__(v110, 2))
    {
      goto LABEL_149;
    }

    if (v111 < 0)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (v111 >= v110)
    {
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (v110 - 1 >= v110)
    {
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v112 = v108[4];
    v113 = v108[2];
    if (v112 + v111 >= v113)
    {
      v114 = v108[2];
    }

    else
    {
      v114 = 0;
    }

    v115 = v112 + v111 - v114;
    v116 = v112 + v111 + 1;
    if (v116 >= v113)
    {
      v117 = v108[2];
    }

    else
    {
      v117 = 0;
    }

    v118 = v116 - v117;
    if ((v109 ^ v111))
    {
      v119 = v115;
    }

    else
    {
      v119 = v118;
    }

    v52 = v108[v119 + 5];

    v64 = 1;
LABEL_135:
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 1;
    goto LABEL_137;
  }

  if (LOBYTE(v5))
  {
    if ((LOBYTE(v7) & 1) == 0)
    {
      sub_183F813A0(a1, &v123);
      sub_183F813A0(a2, &v123);
      v10 = v6;
      v11 = v8;
      goto LABEL_71;
    }
  }

  else if (LOBYTE(v7))
  {
    sub_183F813A0(a1, &v123);
    sub_183F813A0(a2, &v123);
    v10 = v8;
    v11 = v6;
LABEL_71:
    v65 = sub_183FBA640(v10, v11);
    if (v65)
    {
      v120 = a3;
      swift_beginAccess();
      v66 = *(v65 + 24);
      v122 = *(v65 + 16);
      v67 = *(v65 + 32);
      swift_retain_n();

      if (v67)
      {
        while (1)
        {
          swift_beginAccess();
          v68 = *(v122 + 24);
          if (__OFSUB__(v68, 1))
          {
            break;
          }

          if (((v66 ^ *(v67 + 24)) ^ (((v68 - 1) & 1) == 0)))
          {
            v69 = v68 - 1;
          }

          else
          {
            v69 = *(v122 + 24);
          }

          if (v68 < v69)
          {
            goto LABEL_139;
          }

          v70 = *(v67 + 16);
          v71 = v70[3];
          if (v71 < 2)
          {
            goto LABEL_140;
          }

          swift_retain_n();

          sub_183FBBF64(v69, v68, 2, v71, v70, v72);

          v67 = *(v67 + 32);
          if (!v67)
          {
            goto LABEL_136;
          }
        }

        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

LABEL_136:
      sub_183F91488();

      sub_183F813FC(a2);
      sub_183F813FC(a1);

      v64 = 0;
      v8 = 0;
      v96 = 0;
      v63 = 0;
      v94 = v122;
      v95 = v66;
      v97 = 0x8000000000000000;
      v52 = 0;
      v13 = 0.0;
      a3 = v120;
    }

    else
    {
      sub_183F813FC(a2);
      result = sub_183F813FC(a1);
      v64 = 0;
      v8 = 0;
      v96 = 0;
      v63 = 0;
      v94 = 0;
      v95 = 0;
      v52 = 0;
      v13 = 0.0;
      v97 = 0x8000000000000000;
    }

LABEL_137:
    *a3 = v64;
    *(a3 + 8) = v8;
    *(a3 + 16) = 0;
    *(a3 + 24) = v96;
    *(a3 + 32) = v52;
    *(a3 + 40) = v63;
    *(a3 + 48) = v8;
    *(a3 + 56) = 0;
    *(a3 + 64) = v97;
    *(a3 + 72) = v13;
    *(a3 + 80) = v94;
    *(a3 + 88) = v95;
    return result;
  }

LABEL_167:
  result = sub_184390118();
  __break(1u);
  return result;
}

uint64_t sub_183FBA640(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(*(a1 + 16) + 24);
  v6 = v5 - 2;
  if (__OFSUB__(v5, 2))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v6 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 >= v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 - 1 >= v5)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = v7[3];
  if (v8 < 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 == 1)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v9 = v7[4];
  v10 = v7[2];
  if (v9 >= v10)
  {
    v11 = v7[2];
  }

  else
  {
    v11 = 0;
  }

  v12 = v9 - v11;
  v13 = v9 + 1;
  if (v13 < v10)
  {
    v10 = 0;
  }

  v14 = v13 - v10;
  if (*(a2 + 24))
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  v16 = *&v7[v15 + 5];
  swift_beginAccess();
  sub_183F912E8(v16);
  swift_endAccess();
  v17 = *(a2 + 32);

  for (i = a2; v17; v17 = *(v17 + 32))
  {
    i = v17;
  }

  if (i == a1)
  {
  }

  else
  {
    v19 = *(a1 + 32);

    if (v19)
    {
      do
      {
        v20 = v19;

        v19 = *(v19 + 32);
      }

      while (v19);
    }

    else
    {
      v20 = a1;
    }

    *(v20 + 32) = a2;

    return 0;
  }

  return a2;
}

void *sub_183FBA808(void *result, void *__dst, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    if (v6 <= a3)
    {
      result = memcpy(__dst, (a4 + 32), 8 * v6);
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FBA870(uint64_t a1, uint64_t a2, void *a3, int64_t a4, uint64_t a5, uint64_t *a6, char *__src)
{
  if (a4 >= 1)
  {
    result = sub_183FCB528(__src, a4, a5, a6, &v70);
    v12 = v70;
    v13 = v71;
    if (v74)
    {
      v14 = MEMORY[0x1EEE9AC00](result, v11);
      v67 = a1;
      v68 = a2;
      v69 = a3;
      MEMORY[0x1EEE9AC00](v14, v15);
      v16 = &v67;
      v17 = (a3 + 5);
      v18 = sub_183FBBDE4(a3 + 2, (a3 + 5), sub_183FBCD2C);
      if ((v20 & 1) == 0)
      {
      }

      v67 = a1;
      v68 = a2;
      v69 = a3;
      v21 = MEMORY[0x1EEE9AC00](v18, v19);
      MEMORY[0x1EEE9AC00](v21, v22);

      result = sub_183FBBD50(a3 + 2, (a3 + 5), sub_183FBCD44);
      if (v24)
      {
        v25 = a1;
        if (v12)
        {
          v25 = a1;
          if (v13)
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }

            if (a2 <= a1)
            {
              v26 = a1;
            }

            else
            {
              v26 = a2;
            }

            if (a1 != a2)
            {
              v27 = 0;
              v28 = v26 - a1;
              while (v28 != v27)
              {
                if (a1 < 0)
                {
                  goto LABEL_94;
                }

                if (&v27[a1] >= a3[3])
                {
                  goto LABEL_95;
                }

                v29 = a3[4];
                v30 = &v27[a1];
                if (&v27[a1 + v29] >= a3[2])
                {
                  v31 = a3[2];
                }

                else
                {
                  v31 = 0;
                }

                v12[v27] = *(v17 + 8 * &v30[v29 - v31]);
                if (v13 - 1 == v27)
                {
                  v25 = (v30 + 1);
                  if (v30 + 1 == a2)
                  {
                  }

                  goto LABEL_45;
                }

                ++v27;
                if (!&v27[a1 - a2])
                {
                }
              }

              goto LABEL_93;
            }
          }
        }
      }

      else
      {
        v25 = a1 + v23;
        if (__OFADD__(a1, v23))
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }
      }

      if (v25 == a2)
      {
      }

LABEL_45:
      if (v25 < a1 || v25 >= a2)
      {
        goto LABEL_106;
      }

      if (v25 < 0)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (v25 >= a3[3])
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      __break(1u);
    }

    else
    {
      v16 = &v71[a1];
      if (__OFADD__(a1, v71))
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v16 < a1)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (a2 < v16)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v65 = v72;
      v66 = a2;
      v64 = v73;
      v32 = MEMORY[0x1EEE9AC00](result, v11);
      v67 = a1;
      v68 = v16;
      v69 = a3;
      MEMORY[0x1EEE9AC00](v32, v33);
      v17 = (a3 + 5);

      v34 = sub_183FBBDE4(a3 + 2, (a3 + 5), sub_183FBCD2C);
      if ((v36 & 1) == 0)
      {
        v46 = v64;
        v45 = v65;
        goto LABEL_53;
      }

      v67 = a1;
      v68 = v16;
      v69 = a3;
      v37 = MEMORY[0x1EEE9AC00](v34, v35);
      MEMORY[0x1EEE9AC00](v37, v38);

      result = sub_183FBBD50(a3 + 2, (a3 + 5), sub_183FBCD44);
      if (v40)
      {
        v41 = a1;
        if (v12)
        {
          v41 = a1;
          if (v13)
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
LABEL_104:
              __break(1u);
              goto LABEL_105;
            }

            if (v16 != a1)
            {
              v42 = a1;
              while ((a1 & 0x8000000000000000) == 0)
              {
                if (v42 >= a3[3])
                {
                  goto LABEL_97;
                }

                v43 = a3[4];
                if (v42 + v43 >= a3[2])
                {
                  v44 = a3[2];
                }

                else
                {
                  v44 = 0;
                }

                *v12 = *(v17 + 8 * (v42 + v43 - v44));
                if (!--v13)
                {
                  v41 = v42 + 1;
                  if (v41 == v16)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_79;
                }

                ++v12;
                ++v42;
              }

              goto LABEL_96;
            }

LABEL_52:

            v46 = v64;
            v45 = v65;
LABEL_53:

            v49 = MEMORY[0x1EEE9AC00](v47, v48);
            v13 = v66;
            v67 = v16;
            v68 = v66;
            v69 = a3;
            MEMORY[0x1EEE9AC00](v49, v50);
            v51 = sub_183FBBDE4(a3 + 2, v17, sub_183FBCD2C);
            if (v53)
            {
              v67 = v16;
              v68 = v66;
              v69 = a3;
              v54 = MEMORY[0x1EEE9AC00](v51, v52);
              MEMORY[0x1EEE9AC00](v54, v55);

              result = sub_183FBBD50(a3 + 2, v17, sub_183FBCD44);
              if (v57)
              {
                if (v45 && v46)
                {
                  if (v46 < 0)
                  {
LABEL_105:
                    __break(1u);
LABEL_106:
                    __break(1u);
                    goto LABEL_107;
                  }

                  v58 = &v66[-v16];
                  if (v66 != v16)
                  {
                    v59 = 0;
                    while (v58 != v59)
                    {
                      if (v16 < 0)
                      {
                        goto LABEL_99;
                      }

                      if (&v59[v16] >= a3[3])
                      {
                        goto LABEL_100;
                      }

                      v60 = a3[4];
                      v61 = &v59[v16];
                      if (&v59[v16 + v60] >= a3[2])
                      {
                        v62 = a3[2];
                      }

                      else
                      {
                        v62 = 0;
                      }

                      *(v45 + 8 * v59) = *(v17 + 8 * &v61[v60 - v62]);
                      if ((v46 - 1) == v59)
                      {
                        goto LABEL_84;
                      }

                      if (v58 == ++v59)
                      {
                      }
                    }

LABEL_98:
                    __break(1u);
LABEL_99:
                    __break(1u);
LABEL_100:
                    __break(1u);
                    goto LABEL_101;
                  }
                }
              }

              else
              {
                v63 = v16 + v56;
                if (!__OFADD__(v16, v56))
                {
LABEL_74:
                  if (v63 == v66)
                  {
                  }

LABEL_85:
                  if (v63 < v16 || v63 >= v66)
                  {
                    goto LABEL_112;
                  }

                  if (v63 < 0)
                  {
LABEL_113:
                    __break(1u);
                    goto LABEL_114;
                  }

                  if (v63 >= a3[3])
                  {
LABEL_114:
                    __break(1u);
                    return result;
                  }

                  __break(1u);
                  goto LABEL_90;
                }

                __break(1u);
              }

              v63 = v16;
              goto LABEL_74;
            }
          }
        }

LABEL_51:
        if (v41 != v16)
        {
LABEL_79:
          if (v41 < a1 || v41 >= v16)
          {
            goto LABEL_109;
          }

          if (v41 < 0)
          {
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          if (v41 >= a3[3])
          {
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          __break(1u);
LABEL_84:
          v63 = (v61 + 1);
          if (v61 + 1 == v13)
          {
          }

          goto LABEL_85;
        }

        goto LABEL_52;
      }
    }

    v41 = a1 + v39;
    if (__OFADD__(a1, v39))
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    goto LABEL_51;
  }
}

uint64_t sub_183FBB008@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 8 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FBB080@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 40 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_183FBB0FC(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_143;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_31;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_148;
    }
  }

  if (!result)
  {
    goto LABEL_117;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_117;
      }

      v46 = &__src[8 * v7];
      if (v14 >= v7 && &__src[8 * v14] < &v46[8 * result] && v14 == v7)
      {
        goto LABEL_117;
      }

      v47 = 8 * result;
      result = &__src[8 * v14];
      v16 = a3;
      v48 = v47;
      goto LABEL_116;
    }

    if (v16 > 0)
    {
      v19 = &__src[8 * (v10 - v6)];
      if (v10 - v6 > 0 || (v7 = &v19[8 * v16], v7 <= __src) || v10 != v6)
      {
        v15 = result;
        v20 = a3;
        v21 = __src;
        memmove(__src, v19, 8 * v16);
        result = v15;
        __src = v21;
        a3 = v20;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_111;
    }

    __break(1u);
LABEL_31:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v22 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_39;
        }

        v5 -= v10;
        if (!v22)
        {
          goto LABEL_39;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_155;
        }
      }

LABEL_39:
      v17 = __OFSUB__(v8, v6);
      v23 = v8 - v6;
      if (!v17)
      {
        v24 = v23 + v7;
        if (v24 >= v10)
        {
          v25 = v10;
        }

        else
        {
          v25 = 0;
        }

        if (!v14)
        {
          goto LABEL_139;
        }

        v4 = v24 - v25;
        if (v24 - v25 <= 0)
        {
          v26 = v10;
        }

        else
        {
          v26 = v24 - v25;
        }

        if (v5 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v5;
        }

        if (v16 < v27)
        {
          if (v26 >= v15)
          {
            goto LABEL_120;
          }

          v28 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          if (v28 > 0)
          {
            result = &__src[8 * v15];
            v29 = &__src[8 * v16];
            if (v15 != v16 || result >= &v29[8 * v28])
            {
              v30 = a3;
              v31 = __src;
              result = memmove(result, v29, 8 * v28);
              __src = v31;
              a3 = v30;
            }

            v17 = __OFADD__(v16, v28);
            v16 += v28;
            if (v17)
            {
              goto LABEL_156;
            }

            v32 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v32)
              {
                goto LABEL_160;
              }
            }
          }

          v33 = v14 - v28;
          if (__OFSUB__(v14, v28))
          {
            goto LABEL_154;
          }

          if (v33 < 1)
          {
            goto LABEL_139;
          }

          v34 = &__src[8 * v16];
          if (v16 <= 0 && &v34[8 * v33] > __src && !v16)
          {
            goto LABEL_139;
          }

          v35 = 8 * v33;
LABEL_99:
          result = __src;
LABEL_138:
          v59 = a3;
          result = memmove(result, v34, v35);
          a3 = v59;
          goto LABEL_139;
        }

LABEL_76:
        v37 = v10 - v16;
        v38 = __OFSUB__(v10, v16);
        if (v26 >= v15)
        {
          if (v38)
          {
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            return result;
          }

          if (v37 > 0)
          {
            result = &__src[8 * v15];
            v55 = &__src[8 * v16];
            if (v15 != v16 || result >= &v55[8 * v37])
            {
              v56 = a3;
              v57 = __src;
              result = memmove(result, v55, 8 * v37);
              __src = v57;
              a3 = v56;
            }

            v17 = __OFADD__(v15, v37);
            v15 += v37;
            if (v17)
            {
              goto LABEL_158;
            }

            v58 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v58)
              {
                goto LABEL_162;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[8 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v35 = 8 * v5;
              v34 = __src;
              goto LABEL_138;
            }
          }

          goto LABEL_139;
        }

        if (v38)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (v37 > 0)
        {
          result = &__src[8 * v15];
          v39 = &__src[8 * v16];
          if (v15 != v16 || result >= &v39[8 * v37])
          {
            v40 = a3;
            v41 = __src;
            result = memmove(result, v39, 8 * v37);
            __src = v41;
            a3 = v40;
          }

          v17 = __OFADD__(v15, v37);
          v15 += v37;
          if (v17)
          {
            goto LABEL_157;
          }

          v42 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v42)
            {
              goto LABEL_161;
            }
          }
        }

        result = &__src[8 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v43 = a3;
          v44 = __src;
          result = memmove(result, __src, 8 * v6);
          __src = v44;
          a3 = v43;
        }

        v45 = v6;
        if (v6 >= *a3)
        {
          v45 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_159;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_139;
        }

        v34 = &__src[8 * v45];
        if (v45 <= 0 && &v34[8 * v4] > __src && !v45)
        {
          goto LABEL_139;
        }

        v35 = 8 * v4;
        goto LABEL_99;
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v15 > 0)
    {
      v49 = &__src[8 * v16 + -8 * v15];
      if (v49 != __src || v49 >= &__src[8 * v15])
      {
        v16 = result;
        v50 = a3;
        v51 = __src;
        memmove(v49, __src, 8 * v15);
        result = v16;
        __src = v51;
        a3 = v50;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_153;
    }

    goto LABEL_111;
  }

  if (v15 > 0)
  {
    v36 = 8 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[8 * v6], __src, v36);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v26 = *a3 - v6;
  if (*a3 < 1 || v26 > 0 || *a3 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[8 * v26], 8 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_76;
  }

LABEL_111:
  if (v10 < 1)
  {
    goto LABEL_117;
  }

  v52 = a3[2];
  result = &__src[8 * v14];
  v46 = &__src[8 * v52];
  if (v14 >= v52 && result < &v46[8 * v10] && v14 == v52)
  {
    goto LABEL_117;
  }

  v16 = a3;
  v48 = 8 * v10;
LABEL_116:
  result = memmove(result, v46, v48);
  a3 = v16;
LABEL_117:
  a3[2] = v14;
  v53 = a3[1];
  v17 = __OFSUB__(v53, v6);
  v54 = v53 - v6;
  if (!v17)
  {
    goto LABEL_140;
  }

  __break(1u);
LABEL_120:
  if (v14 > 0)
  {
    result = &__src[8 * v15];
    v34 = &__src[8 * v16];
    if (v15 < v16 || result >= &v34[8 * v14] || v15 != v16)
    {
      v35 = 8 * v14;
      goto LABEL_138;
    }
  }

LABEL_139:
  v60 = a3[1];
  v17 = __OFSUB__(v60, v6);
  v54 = v60 - v6;
  if (v17)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

LABEL_140:
  a3[1] = v54;
  return result;
}

unint64_t sub_183FBB6B4(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_148;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_33;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_153;
    }
  }

  if (!result)
  {
    goto LABEL_122;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_122;
      }

      v49 = &__src[40 * v7];
      if (v14 >= v7 && &__src[40 * v14] < &v49[40 * result] && v14 == v7)
      {
        goto LABEL_122;
      }

      v50 = 40 * result;
      result = &__src[40 * v14];
      v16 = a3;
      v51 = v50;
      goto LABEL_121;
    }

    if (v16 > 0)
    {
      v8 = v10 - v6;
      v19 = &__src[40 * (v10 - v6)];
      if (v10 - v6 > 0 || ((v7 = &v19[40 * v16], v7 > __src) ? (v20 = v10 == v6) : (v20 = 0), !v20))
      {
        v15 = result;
        v21 = a3;
        v22 = __src;
        memmove(__src, v19, 40 * v16);
        result = v15;
        __src = v22;
        a3 = v21;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_116;
    }

    __break(1u);
LABEL_33:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v23 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_41;
        }

        v5 -= v10;
        if (!v23)
        {
          goto LABEL_41;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_160;
        }
      }

LABEL_41:
      v17 = __OFSUB__(v8, v6);
      v24 = v8 - v6;
      if (!v17)
      {
        v25 = v24 + v7;
        if (v25 >= v10)
        {
          v26 = v10;
        }

        else
        {
          v26 = 0;
        }

        if (!v14)
        {
          goto LABEL_144;
        }

        v4 = v25 - v26;
        if (v25 - v26 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v25 - v26;
        }

        if (v5 <= 0)
        {
          v28 = v10;
        }

        else
        {
          v28 = v5;
        }

        if (v16 < v28)
        {
          if (v27 >= v15)
          {
            goto LABEL_125;
          }

          v29 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v29 > 0)
          {
            result = &__src[40 * v15];
            v30 = &__src[40 * v16];
            if (v15 != v16 || result >= &v30[40 * v29])
            {
              v31 = a3;
              v32 = __src;
              result = memmove(result, v30, 40 * v29);
              __src = v32;
              a3 = v31;
            }

            v17 = __OFADD__(v16, v29);
            v16 += v29;
            if (v17)
            {
              goto LABEL_161;
            }

            v33 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v33)
              {
                goto LABEL_165;
              }
            }
          }

          v34 = v14 - v29;
          if (__OFSUB__(v14, v29))
          {
            goto LABEL_159;
          }

          if (v34 < 1)
          {
            goto LABEL_144;
          }

          v35 = &__src[40 * v16];
          if (v16 <= 0 && &v35[40 * v34] > __src && !v16)
          {
            goto LABEL_144;
          }

          v36 = 5 * v34;
LABEL_101:
          v48 = 8 * v36;
          result = __src;
LABEL_143:
          v63 = a3;
          result = memmove(result, v35, v48);
          a3 = v63;
          goto LABEL_144;
        }

LABEL_78:
        v39 = v10 - v16;
        v40 = __OFSUB__(v10, v16);
        if (v27 >= v15)
        {
          if (v40)
          {
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
            return result;
          }

          if (v39 > 0)
          {
            result = &__src[40 * v15];
            v59 = &__src[40 * v16];
            if (v15 != v16 || result >= &v59[40 * v39])
            {
              v60 = a3;
              v61 = __src;
              result = memmove(result, v59, 40 * v39);
              __src = v61;
              a3 = v60;
            }

            v17 = __OFADD__(v15, v39);
            v15 += v39;
            if (v17)
            {
              goto LABEL_163;
            }

            v62 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v62)
              {
                goto LABEL_167;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[40 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v48 = 40 * v5;
              v35 = __src;
              goto LABEL_143;
            }
          }

          goto LABEL_144;
        }

        if (v40)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (v39 > 0)
        {
          result = &__src[40 * v15];
          v41 = &__src[40 * v16];
          if (v15 != v16 || result >= &v41[40 * v39])
          {
            v42 = a3;
            v43 = __src;
            result = memmove(result, v41, 40 * v39);
            __src = v43;
            a3 = v42;
          }

          v17 = __OFADD__(v15, v39);
          v15 += v39;
          if (v17)
          {
            goto LABEL_162;
          }

          v44 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v44)
            {
              goto LABEL_166;
            }
          }
        }

        result = &__src[40 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v45 = a3;
          v46 = __src;
          result = memmove(result, __src, 40 * v6);
          __src = v46;
          a3 = v45;
        }

        v47 = v6;
        if (v6 >= *a3)
        {
          v47 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_164;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_144;
        }

        v35 = &__src[40 * v47];
        if (v47 <= 0 && &v35[40 * v4] > __src && !v47)
        {
          goto LABEL_144;
        }

        v36 = 5 * v4;
        goto LABEL_101;
      }

LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v15 > 0)
    {
      v52 = &__src[40 * v16 + -40 * v15];
      if (v52 != __src || v52 >= &__src[40 * v15])
      {
        v16 = result;
        v54 = a3;
        v55 = __src;
        memmove(v52, __src, 40 * v15);
        result = v16;
        __src = v55;
        a3 = v54;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_158;
    }

    goto LABEL_116;
  }

  if (v15 > 0)
  {
    v37 = 40 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[40 * v6], __src, v37);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v27 = *a3;
  v38 = *a3 - v6;
  if (*a3 < 1 || v38 > 0 || v27 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[40 * v38], 40 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_116:
  if (v10 < 1)
  {
    goto LABEL_122;
  }

  v56 = a3[2];
  result = &__src[40 * v14];
  v49 = &__src[40 * v56];
  if (v14 >= v56 && result < &v49[40 * v10] && v14 == v56)
  {
    goto LABEL_122;
  }

  v16 = a3;
  v51 = 40 * v10;
LABEL_121:
  result = memmove(result, v49, v51);
  a3 = v16;
LABEL_122:
  a3[2] = v14;
  v57 = a3[1];
  v17 = __OFSUB__(v57, v6);
  v58 = v57 - v6;
  if (!v17)
  {
    goto LABEL_145;
  }

  __break(1u);
LABEL_125:
  if (v14 > 0)
  {
    result = &__src[40 * v15];
    v35 = &__src[40 * v16];
    if (v15 < v16 || result >= &v35[40 * v14] || v15 != v16)
    {
      v48 = 40 * v14;
      goto LABEL_143;
    }
  }

LABEL_144:
  v64 = a3[1];
  v17 = __OFSUB__(v64, v6);
  v58 = v64 - v6;
  if (v17)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_145:
  a3[1] = v58;
  return result;
}

char *sub_183FBBCD0(char *__src, uint64_t a2, void *__dst, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = __src;
    memcpy(__dst, __src, 8 * v4);
    return &v5[8 * v4];
  }

  return __src;
}

void *sub_183FBBD50(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 8 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_183FBBDE4(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 8 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_183FBBE6C@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, void *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

void *sub_183FBBEEC@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

unint64_t sub_183FBBF64@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  v11 = result;
  result = *v7;
  a6 = *(*v7 + 24);
  if (a6 < a2)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v8 = a2 - v11;
  if (__OFSUB__(a2, v11))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v9 = a3;
  v13 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v14 = v13 - v8;
  if (__OFSUB__(v13, v8))
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v15 = a6 + v14;
  if (__OFADD__(a6, v14))
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v6 = a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  a6 = *(*v7 + 16);
  if (a6 < v15 || (result & 1) == 0)
  {
    result = sub_183FCA8F4(result, v15);
  }

  if (v13 < v8)
  {
    v8 = v13;
  }

  v16 = v11 + v8;
  if (__OFADD__(v11, v8))
  {
    goto LABEL_106;
  }

  a6 = v9 + v8;
  if (__OFADD__(v9, v8))
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v16 < v11 || a6 < v9)
  {
    goto LABEL_108;
  }

  if (a6 > a4)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v79 = v14;
  v80 = (v9 + v8);
  v17 = *v7;
  v78 = a4;
  if (v16 == v11)
  {

    goto LABEL_87;
  }

  result = sub_183FBB008(v11, v11 + v8, (v17 + 16), v17 + 40, &v81);
  v20 = v81;
  v19 = v82;
  v77 = v17;
  v75 = v8;
  if ((v85 & 1) != 0 || (a6 = v84) == 0)
  {
    v76 = &v71;
    v36 = MEMORY[0x1EEE9AC00](result, v18);
    v69 = v20;
    v70 = v19;
    v86 = v9;
    v87 = v80;
    v88 = v6;
    MEMORY[0x1EEE9AC00](v36, v37);
    v8 = (v6 + 5);

    v24 = v19;
    v38 = sub_183FBBDE4(v6 + 2, (v6 + 5), sub_183FBC8E8);
    v17 = v77;
    if ((v40 & 1) == 0)
    {
      goto LABEL_87;
    }

    v86 = v9;
    v87 = v80;
    v88 = v6;
    v41 = MEMORY[0x1EEE9AC00](v38, v39);
    v74 = v19;
    MEMORY[0x1EEE9AC00](v41, v42);

    result = sub_183FBBD50(v6 + 2, (v6 + 5), sub_183FBC920);
    if (v44)
    {
      a6 = v9;
      v45 = v80;
      v17 = v77;
      if (v20)
      {
        a6 = v9;
        if (v74)
        {
          if (v74 < 0)
          {
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          v46 = v75;
          if (v80 != v9)
          {
            a6 = v74 - 1;
            v47 = v9;
            while (v46)
            {
              if (v9 < 0)
              {
                goto LABEL_116;
              }

              if (v47 >= v6[3])
              {
                goto LABEL_117;
              }

              v48 = v6[4];
              if (v47 + v48 >= v6[2])
              {
                v49 = v6[2];
              }

              else
              {
                v49 = 0;
              }

              *v20 = *(v8 + 8 * (v47 + v48 - v49));
              if (!a6)
              {
                a6 = v47 + 1;
                if (v47 + 1 == v45)
                {
                  goto LABEL_58;
                }

                goto LABEL_94;
              }

              ++v20;
              --a6;
              ++v47;
              if (!--v46)
              {
                goto LABEL_58;
              }
            }

            goto LABEL_115;
          }

          goto LABEL_58;
        }
      }
    }

    else
    {
      a6 = v9 + v43;
      if (__OFADD__(v9, v43))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v45 = v80;
      v17 = v77;
    }

    if (a6 != v45)
    {
LABEL_94:
      if (a6 < v9 || a6 >= v80)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      if (a6 < 0)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      if (a6 >= v6[3])
      {
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      __break(1u);
LABEL_99:
      a6 = v33 + 1;
      goto LABEL_62;
    }

LABEL_58:

    goto LABEL_87;
  }

  v21 = v9 + v82;
  if (__OFADD__(v9, v82))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v21 < v9)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v72 = v84;
  if (v80 < v21)
  {
LABEL_120:
    __break(1u);
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v73 = v83;
  v22 = MEMORY[0x1EEE9AC00](result, v18);
  v76 = &v68;
  v69 = v20;
  v70 = v19;
  v86 = v9;
  v87 = v21;
  v88 = v6;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = (v6 + 5);

  v25 = sub_183FBBDE4(v6 + 2, (v6 + 5), sub_183FBCD2C);
  v76 = v21;
  v74 = v19;
  if (v27)
  {
    v8 = &v71;
    v86 = v9;
    v87 = v21;
    v88 = v6;
    v28 = MEMORY[0x1EEE9AC00](v25, v26);
    v69 = v20;
    v70 = v19;
    MEMORY[0x1EEE9AC00](v28, v29);

    result = sub_183FBBD50(v6 + 2, (v6 + 5), sub_183FBCD44);
    if (v31)
    {
      a6 = v9;
      v32 = v76;
      if (v20)
      {
        a6 = v9;
        if (v74)
        {
          a6 = v74;
          if (v74 < 0)
          {
LABEL_127:
            __break(1u);
LABEL_128:
            if (a6 < v8 || a6 >= v80)
            {
              goto LABEL_141;
            }

            if (a6 < 0)
            {
LABEL_142:
              __break(1u);
              goto LABEL_143;
            }

            if (a6 >= v6[3])
            {
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
              goto LABEL_145;
            }

            __break(1u);
            goto LABEL_133;
          }

          if (v76 != v9)
          {
            a6 = v74;
            v33 = v9;
            while ((v9 & 0x8000000000000000) == 0)
            {
              if (v33 >= v6[3])
              {
                goto LABEL_122;
              }

              v34 = v6[4];
              if (v33 + v34 >= v6[2])
              {
                v35 = v6[2];
              }

              else
              {
                v35 = 0;
              }

              *v20 = *(v24 + 8 * (v33 + v34 - v35));
              if (!--a6)
              {
                goto LABEL_99;
              }

              ++v20;
              ++v33;
            }

            goto LABEL_121;
          }

          goto LABEL_63;
        }
      }
    }

    else
    {
      a6 = v9 + v30;
      if (__OFADD__(v9, v30))
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v32 = v76;
    }

LABEL_62:
    if (a6 != v32)
    {
LABEL_133:
      if (a6 < v9 || a6 >= v76)
      {
        goto LABEL_144;
      }

      if (a6 < 0)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      if (a6 >= v6[3])
      {
LABEL_146:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_138;
    }

LABEL_63:
  }

  v50 = MEMORY[0x1EEE9AC00](v25, v26);
  v51 = v72;
  v69 = v73;
  v70 = v72;
  v8 = v76;
  v86 = v76;
  v87 = v80;
  v88 = v6;
  MEMORY[0x1EEE9AC00](v50, v52);
  v53 = sub_183FBBDE4(v6 + 2, v24, sub_183FBCD2C);
  v17 = v77;
  if ((v55 & 1) == 0)
  {
    goto LABEL_87;
  }

  v9 = &v71;
  v56 = v80;
  v86 = v8;
  v87 = v80;
  v88 = v6;
  v57 = MEMORY[0x1EEE9AC00](v53, v54);
  v69 = v73;
  v70 = v51;
  MEMORY[0x1EEE9AC00](v57, v58);

  result = sub_183FBBD50(v6 + 2, v24, sub_183FBCD44);
  if (v60)
  {
    v61 = v73;
    if (v73)
    {
      v8 = v76;
      v62 = v72;
      if (v72 < 0)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      a6 = 0;
      v63 = v75 - v74;
      v64 = v76;
      while (1)
      {
        v65 = a6 + 1;
        if (__OFADD__(a6, 1))
        {
          goto LABEL_110;
        }

        if (!v63)
        {
          goto LABEL_86;
        }

        if (v64 >= v56)
        {
          goto LABEL_112;
        }

        if (v8 < 0)
        {
          goto LABEL_113;
        }

        if (v64 >= v6[3])
        {
          goto LABEL_114;
        }

        v66 = v6[4];
        if (v64 + v66 >= v6[2])
        {
          v67 = v6[2];
        }

        else
        {
          v67 = 0;
        }

        v61[a6] = *(v24 + 8 * (v64 + v66 - v67));
        if (v65 == v62)
        {
          a6 = v64 + 1;
          goto LABEL_85;
        }

        --v63;
        ++a6;
        v64 = (v64 + 1);
        if (v65 >= v62)
        {
          __break(1u);
          goto LABEL_80;
        }
      }
    }
  }

  else
  {
LABEL_80:
    a6 = v8 + v59;
    if (!__OFADD__(v8, v59))
    {
      goto LABEL_85;
    }

    __break(1u);
  }

  v8 = v76;
  a6 = v76;
LABEL_85:
  if (a6 != v56)
  {
    goto LABEL_128;
  }

LABEL_86:

  v17 = v77;
LABEL_87:
  if (v79 < 0)
  {

    if (v16 <= a2)
    {
      sub_183FBB008(v16, a2, (v17 + 16), v17 + 40, &v86);
      return sub_183FBB0FC(v16, a2, (v17 + 16), (v17 + 40));
    }

    goto LABEL_111;
  }

  if (v79)
  {
    return sub_183FBA870(v80, v78, v6, v79, v16, (v17 + 16), (v17 + 40));
  }

  else
  {
  }
}

void *sub_183FBC940@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!__src)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return __src;
  }

  if (*(v3 + 24) >= a2)
  {
    __src = memcpy(*(v3 + 16), __src, 8 * a2);
    goto LABEL_6;
  }

  __break(1u);
  return __src;
}

char *sub_183FBC9A8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_183FBBCD0(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_183FBC9FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_183FBCA44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_12CoreGraphics8StitchesO(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_183FBCAC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_183FBCB14(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_183FBCB8C(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 64) & 1 | (a2 << 62);
    *(result + 24) &= 1uLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = xmmword_18439AF50;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_183FBCC00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_183FBCC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_183FBCCA8()
{
  result = qword_1EA854928;
  if (!qword_1EA854928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854928);
  }

  return result;
}

BOOL sub_183FBCD88(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
}

uint64_t sub_183FBCDC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(v3 + 24);
  v7 = *(result + 16);
  v8 = *(result + 32);
  v9 = *(result + 24) >> 1;
  v18 = *(v3 + 32);
  v19 = *(result + 8) + 16;
  v10 = v7;
  v16 = v18;
  v17 = v6;
  while (2)
  {
    if (v10 != v9)
    {
      v11 = (v19 + 24 * v10);
      v12 = v10;
      while (1)
      {
        if (v10 < v7 || v12 >= v9)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v13 = *v11;
        v14 = v12 + 1;
        v20 = *(v11 - 1);
        v21 = v20;
        v22 = v13;
        result = v8(&v21);
        if (result)
        {
          break;
        }

        v11 += 3;
        ++v12;
        if (v9 == v14)
        {
          goto LABEL_16;
        }
      }

      if (v13 >= *&v20)
      {
        v10 = v12 + 1;
        v15 = __OFADD__(v6++, 1);
        if (!v15)
        {
          continue;
        }

        goto LABEL_18;
      }

      v10 = v12 + 1;
      v15 = __OFADD__(v18++, 1);
      if (!v15)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_16:
  *a2 = a3;
  *(a2 + 8) = v17;
  *(a2 + 16) = v16;
  *(a2 + 24) = v6;
  *(a2 + 32) = v18;
  return result;
}

double sub_183FBCEF0@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  sub_183FBCDC8((a1 + 1), v5, *a1);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

BOOL sub_183FBCF38(double *a1, double a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a1;
  if (*a1 > v3)
  {
    v4 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 ? *a1 : a1[2];
    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      v4 = a1[2];
    }
  }

  if (v4 > a2)
  {
    return 0;
  }

  if (v3 >= v2)
  {
    if ((*&v3 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v2 = a1[2];
    }

    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      v2 = a1[2];
    }
  }

  return v2 > a2;
}

void *sub_183FBCFA0(void *result, char a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  if (!a2)
  {
    return ((v4 != v5) ^ (v2 != v3));
  }

  if (a2 == 1)
  {
    return ((v4 < v5) ^ (v2 < v3));
  }

  v6 = __OFADD__(v2, v3);
  v7 = v2 + v3;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v6 = __OFADD__(v4, v5);
    v8 = v4 + v5;
    if (!v6)
    {
      return (((v8 & 0x8000000000000001) == 1) ^ ((v7 & 0x8000000000000001) == 1));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FBD020(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183FBD040(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t CGPDFArrayRef.debugDescription.getter(const __CFString *a1)
{
  DebugDescription = CGPDFArrayCreateDebugDescription(a1);
  if (!DebugDescription)
  {
    return 0;
  }

  v2 = DebugDescription;
  v3 = sub_18438FCD8();

  return v3;
}

uint64_t CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v4 = *MEMORY[0x1E69E9840];
  value = 0;
  if (CGPDFArrayGetBoolean(array, index, &value))
  {
    return value != 0;
  }

  else
  {
    return 2;
  }
}

{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0.0;
  Number = CGPDFArrayGetNumber(array, index, v5);
  v3 = v5[0];
  if (!Number)
  {
    v3 = 0.0;
  }

  return *&v3;
}

void (*CGPDFArrayRef.subscript.modify(uint64_t a1, size_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = *v2;
  *(a1 + 17) = 0;
  Boolean = CGPDFArrayGetBoolean(v4, a2, (a1 + 17));
  v6 = *(a1 + 17) != 0;
  if (!Boolean)
  {
    v6 = 2;
  }

  *(a1 + 16) = v6;
  return sub_183FBD214;
}

{
  *(a1 + 16) = a2;
  *(a1 + 24) = v2;
  v4 = *v2;
  *(a1 + 8) = 0;
  String = CGPDFArrayGetString(v4, a2, (a1 + 8));
  v6 = *(a1 + 8);
  if (!String)
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_183FBD8A0;
}

{
  *(a1 + 16) = a2;
  *(a1 + 24) = v2;
  v4 = *v2;
  *(a1 + 8) = 0;
  Dictionary = CGPDFArrayGetDictionary(v4, a2, (a1 + 8));
  v6 = *(a1 + 8);
  if (!Dictionary)
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_183FBDA54;
}

{
  *(a1 + 16) = a2;
  *(a1 + 24) = v2;
  v4 = *v2;
  *(a1 + 8) = 0;
  Stream = CGPDFArrayGetStream(v4, a2, (a1 + 8));
  v6 = *(a1 + 8);
  if (!Stream)
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_183FBDC08;
}

CGPDFInteger CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  Integer = CGPDFArrayGetInteger(array, index, v5);
  v3 = v5[0];
  if (!Integer)
  {
    return 0;
  }

  return v3;
}

void CGPDFArrayRef.subscript.setter(uint64_t a1, char a2, unint64_t a3)
{
  sub_183FBE8F8(a1, a2 & 1, a3);
}

{
  sub_183FBE9DC(a1, a2 & 1, a3);
}

void (*CGPDFArrayRef.subscript.modify(uint64_t *a1, size_t a2))(void **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  v7 = *v2;
  *(v6 + 16) = 0;
  Integer = CGPDFArrayGetInteger(v7, a2, (v6 + 16));
  v9 = *(v6 + 16);
  if (!Integer)
  {
    v9 = 0;
  }

  *v6 = v9;
  *(v6 + 8) = !Integer;
  return sub_183FBD390;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  v7 = *v2;
  *(v6 + 16) = 0;
  Number = CGPDFArrayGetNumber(v7, a2, (v6 + 16));
  v9 = *(v6 + 16);
  if (!Number)
  {
    v9 = 0;
  }

  *v6 = v9;
  *(v6 + 8) = !Number;
  return sub_183FBD4FC;
}

void sub_183FBD514(void **a1, uint64_t a2, void (*a3)(void, void, void))
{
  v3 = *a1;
  a3(**a1, *(*a1 + 8), (*a1)[3]);

  free(v3);
}

const char *CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  Name = CGPDFArrayGetName(array, index, v4);
  result = 0;
  if (Name)
  {
    result = v4[0];
    if (v4[0])
    {
      return sub_18438FD28();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*CGPDFArrayRef.subscript.modify(uint64_t *a1, size_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  v7 = *v2;
  v6[2] = 0;
  v8 = (v6 + 2);
  Name = CGPDFArrayGetName(v7, a2, v6 + 2);
  v10 = 0;
  v11 = 0;
  if (!Name)
  {
    goto LABEL_7;
  }

  result = *v8;
  if (*v8)
  {
    v10 = sub_18438FD28();
LABEL_7:
    *v6 = v10;
    v6[1] = v11;
    return sub_183FBD6C8;
  }

  __break(1u);
  return result;
}

void sub_183FBD6C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  if (a2)
  {

    _sSo13CGPDFArrayRefa12CoreGraphicsEySSSgSi_SSmtcis_0(v3, v4, v5);
  }

  else
  {
    _sSo13CGPDFArrayRefa12CoreGraphicsEySSSgSi_SSmtcis_0(**a1, v4, v5);
  }

  free(v2);
}

CGPDFStringRef CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (CGPDFArrayGetString(array, index, v3))
  {
    return v3[0];
  }

  else
  {
    return 0;
  }
}

void CGPDFArrayRef.subscript.setter(uint64_t a1, unint64_t a2)
{
  sub_183FBECA0(a1, a2, &qword_1EA854990, &unk_18439B530, type metadata accessor for CGPDFStringRef, CGPDFObjectCreateWithString);
}

{
  sub_183FBECA0(a1, a2, &qword_1EA854988, &unk_18439B528, type metadata accessor for CGPDFDictionaryRef, CGPDFObjectCreateWithDictionary);
}

{
  sub_183FBECA0(a1, a2, &qword_1EA854980, &unk_18439B520, type metadata accessor for CGPDFStreamRef, CGPDFObjectCreateWithStream);
}

CGPDFDictionaryRef CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (CGPDFArrayGetDictionary(array, index, v3))
  {
    return v3[0];
  }

  else
  {
    return 0;
  }
}

CGPDFStreamRef CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (CGPDFArrayGetStream(array, index, v3))
  {
    return v3[0];
  }

  else
  {
    return 0;
  }
}

void CGPDFArrayRef.subscript.getter(size_t index@<X0>, CGPDFArrayRef array@<X1>, uint64_t a3@<X8>)
{
  v3 = array;
  value[1] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  if (CGPDFArrayGetObject(array, index, value))
  {
    v3 = value[0];
    if (!value[0])
    {
      __break(1u);
    }

    Type = CGPDFObjectGetType(value[0]);
    if (Type <= kCGPDFObjectTypeName)
    {
      if (Type <= kCGPDFObjectTypeInteger)
      {
        if (Type == kCGPDFObjectTypeBoolean)
        {
          LOBYTE(v16) = 0;
          if (CGPDFObjectGetValue(v3, kCGPDFObjectTypeBoolean, &v16))
          {
            v12 = v16 != 0;
            *(a3 + 24) = MEMORY[0x1E69E6370];
            *(a3 + 32) = &protocol witness table for Bool;
            *a3 = v12;
            return;
          }
        }

        else if (Type == kCGPDFObjectTypeInteger)
        {
          v16 = 0;
          if (CGPDFObjectGetValue(v3, kCGPDFObjectTypeInteger, &v16))
          {
            v6 = v16;
            *(a3 + 24) = MEMORY[0x1E69E6530];
            *(a3 + 32) = &protocol witness table for Int;
            *a3 = v6;
            return;
          }
        }

        goto LABEL_34;
      }

      if (Type == kCGPDFObjectTypeReal)
      {
        v16 = 0;
        if (CGPDFObjectGetValue(v3, kCGPDFObjectTypeReal, &v16))
        {
          v13 = v16;
          *(a3 + 24) = MEMORY[0x1E69E63B0];
          *(a3 + 32) = &protocol witness table for Double;
          *a3 = v13;
          return;
        }

        goto LABEL_34;
      }

      v16 = 0;
      if (CGPDFObjectGetValue(v3, kCGPDFObjectTypeName, &v16))
      {
        if (v16)
        {
          v10 = sub_18438FD28();
          *(a3 + 24) = MEMORY[0x1E69E6158];
          *(a3 + 32) = &protocol witness table for String;
          *a3 = v10;
          *(a3 + 8) = v11;
          return;
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_34:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    if (Type > kCGPDFObjectTypeArray)
    {
      if (Type == kCGPDFObjectTypeDictionary)
      {
        v16 = 0;
        if (!CGPDFObjectGetValue(v3, kCGPDFObjectTypeDictionary, &v16))
        {
          goto LABEL_34;
        }

        v7 = v16;
        if (!v16)
        {
          goto LABEL_34;
        }

        type metadata accessor for CGPDFDictionaryRef(0);
        v9 = &protocol witness table for CGPDFDictionaryRef;
      }

      else
      {
        if (Type != kCGPDFObjectTypeStream)
        {
          goto LABEL_34;
        }

        v16 = 0;
        if (!CGPDFObjectGetValue(v3, kCGPDFObjectTypeStream, &v16))
        {
          goto LABEL_34;
        }

        v7 = v16;
        if (!v16)
        {
          goto LABEL_34;
        }

        type metadata accessor for CGPDFStreamRef(0);
        v9 = &protocol witness table for CGPDFStreamRef;
      }
    }

    else if (Type == kCGPDFObjectTypeString)
    {
      v16 = 0;
      if (!CGPDFObjectGetValue(v3, kCGPDFObjectTypeString, &v16))
      {
        goto LABEL_34;
      }

      v7 = v16;
      if (!v16)
      {
        goto LABEL_34;
      }

      type metadata accessor for CGPDFStringRef(0);
      v9 = &protocol witness table for CGPDFStringRef;
    }

    else
    {
      v16 = 0;
      if (!CGPDFObjectGetValue(v3, kCGPDFObjectTypeArray, &v16))
      {
        goto LABEL_34;
      }

      v7 = v16;
      if (!v16)
      {
        goto LABEL_34;
      }

      type metadata accessor for CGPDFArrayRef(0);
      v9 = &protocol witness table for CGPDFArrayRef;
    }

    *(a3 + 24) = v8;
    *(a3 + 32) = v9;
    *a3 = v7;
    return;
  }

LABEL_37:
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_184390098();

  v16 = 0xD00000000000001ALL;
  v17 = 0x8000000184566800;
  v14 = sub_1843901B8();
  MEMORY[0x1865EC630](v14);

  MEMORY[0x1865EC630](0xD000000000000013, 0x8000000184566820);
  CGPDFArrayGetCount(v3);
  v15 = sub_1843901B8();
  MEMORY[0x1865EC630](v15);

  sub_184390118();
  __break(1u);
}

uint64_t sub_183FBE030(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  sub_183F903C8(a1, v6);
  sub_183F8F868(v6, a2, v4);
  return sub_183F90438(v6);
}

uint64_t CGPDFArrayRef.subscript.setter(uint64_t a1, unint64_t a2)
{
  sub_183F8F868(a1, v2, a2);

  return sub_183F90438(a1);
}

void (*CGPDFArrayRef.subscript.modify(uint64_t *a1, size_t a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  *a1 = v5;
  *(v5 + 80) = a2;
  *(v5 + 88) = v2;
  CGPDFArrayRef.subscript.getter(a2, *v2, v5);
  return sub_183FBE140;
}

void sub_183FBE140(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 80);
    v3 = *(v2 + 88);
    sub_183F903C8(*a1, v2 + 40);
    sub_183F8F868(v2 + 40, v3, v4);
    sub_183F90438(v2 + 40);
  }

  else
  {
    sub_183F8F868(*a1, *(v2 + 88), *(v2 + 80));
  }

  sub_183F90438(v2);

  free(v2);
}

uint64_t CGPDFArrayRef.enumerateObjects(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_183FBED94;
  *(v7 + 24) = v6;
  v10[4] = sub_183FBED94;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_183FBE310;
  v10[3] = &block_descriptor_1;
  v8 = _Block_copy(v10);

  CGPDFArrayEnumerateObjects(a3, v8);
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FBE388()
{
  DebugDescription = CGPDFArrayCreateDebugDescription(*v0);
  if (!DebugDescription)
  {
    return 0;
  }

  v2 = DebugDescription;
  v3 = sub_18438FCD8();

  return v3;
}

void *sub_183FBE3E0@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = CGPDFArrayGetCount(*v2);
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_183FBE434(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = CGPDFArrayGetCount(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

size_t sub_183FBE488@<X0>(size_t *a1@<X8>)
{
  result = CGPDFArrayGetCount(*v1);
  *a1 = result;
  return result;
}

void (*sub_183FBE4B4(uint64_t *a1, size_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  CGPDFArrayRef.subscript.getter(*a2, *v2, v5);
  return sub_183FBE534;
}

void sub_183FBE534(uint64_t *a1)
{
  v1 = *a1;
  sub_183F90438(*a1);

  free(v1);
}

int64_t sub_183FBE570@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = CGPDFArrayGetCount(v6);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= v4)
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_183FBE5CC@<X0>(void *a1@<X8>)
{
  result = CGPDFArrayGetCount(*v1);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_183FBE624@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = CGPDFArrayGetCount(*v3);
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FBE678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_183F78010(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

int64_t sub_183FBE6B4(int64_t *a1, int64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = CGPDFArrayGetCount(*v2);
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = CGPDFArrayGetCount(v5);
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return v4 - v3;
    }
  }

  __break(1u);
  return result;
}

int64_t sub_183FBE718@<X0>(int64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = CGPDFArrayGetCount(*v2);
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

int64_t sub_183FBE764(int64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = CGPDFArrayGetCount(v3);
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

int64_t sub_183FBE7B4()
{
  v1 = *v0;
  Count = CGPDFArrayGetCount(v1);
  result = CGPDFArrayGetCount(v1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = CGPDFArrayGetCount(v1);
    if ((Count & 0x8000000000000000) == 0 && result >= Count)
    {
      return Count;
    }
  }

  __break(1u);
  return result;
}

void _sSo13CGPDFArrayRefa12CoreGraphicsEySbSgSi_Sbmtcis_0(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549B0);
  if (swift_dynamicCast())
  {
    v4 = CGPDFObjectCreateWithBoolean(v6);
    if (v4)
    {
      v5 = v4;
      CGPDFArraySetObjectAtIndex(*v2, a2, v4);
      CGPDFObjectRelease(v5);
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

void sub_183FBE8F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549A8);
  if (swift_dynamicCast())
  {
    v5 = CGPDFObjectCreateWithInteger(v7);
    if (v5)
    {
      v6 = v5;
      CGPDFArraySetObjectAtIndex(*v3, a3, v5);
      CGPDFObjectRelease(v6);
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

void sub_183FBE9DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549A0);
  if (swift_dynamicCast())
  {
    v5 = CGPDFObjectCreateWithReal(v7);
    if (v5)
    {
      v6 = v5;
      CGPDFArraySetObjectAtIndex(*v3, a3, v5);
      CGPDFObjectRelease(v6);
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}