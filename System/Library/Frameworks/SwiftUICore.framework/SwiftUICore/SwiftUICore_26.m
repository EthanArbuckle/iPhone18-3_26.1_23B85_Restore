__CFString *_CAFilterInputKey(int a1)
{
  switch(a1)
  {
    case 1:
      v1 = MEMORY[0x1E6979980];
      goto LABEL_26;
    case 2:
      v1 = MEMORY[0x1E6979988];
      goto LABEL_26;
    case 3:
      v1 = MEMORY[0x1E6979990];
      goto LABEL_26;
    case 4:
      v1 = MEMORY[0x1E6979998];
      goto LABEL_26;
    case 5:
      v1 = MEMORY[0x1E69799C0];
      goto LABEL_26;
    case 6:
      v1 = MEMORY[0x1E69799C8];
      goto LABEL_26;
    case 7:
      v1 = MEMORY[0x1E6979A28];
      goto LABEL_26;
    case 8:
      v2 = @"inputClamp";
      break;
    case 9:
      v2 = @"inputClampPreserveHue";
      break;
    case 10:
      v1 = MEMORY[0x1E6979AA0];
      goto LABEL_26;
    case 11:
      v1 = MEMORY[0x1E6979AC0];
      goto LABEL_26;
    case 12:
      v1 = MEMORY[0x1E6979AC8];
      goto LABEL_26;
    case 13:
      v1 = MEMORY[0x1E6979B38];
      goto LABEL_26;
    case 14:
      v1 = MEMORY[0x1E6979B48];
      goto LABEL_26;
    case 15:
      v2 = @"inputMaskImage";
      break;
    case 16:
      v1 = MEMORY[0x1E6979B78];
      goto LABEL_26;
    case 17:
      v2 = @"inputNormalizeEdgesTransparent";
      break;
    case 18:
      v2 = @"inputPremultipliedAlpha";
      break;
    case 19:
      v1 = MEMORY[0x1E6979B98];
      goto LABEL_26;
    case 20:
      v1 = MEMORY[0x1E6979BA8];
      goto LABEL_26;
    case 21:
      v1 = MEMORY[0x1E6979BB0];
      goto LABEL_26;
    case 22:
      v1 = MEMORY[0x1E6979BF0];
      goto LABEL_26;
    case 23:
      v1 = MEMORY[0x1E6979C10];
      goto LABEL_26;
    case 24:
      v1 = MEMORY[0x1E6979C28];
LABEL_26:
      v2 = *v1;
      break;
    default:
      v2 = @"inputAdaptive";
      break;
  }

  return v2;
}

uint64_t specialized AnimatableAttribute.updateValue()()
{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v5[0] = *Value;
  v5[1] = v2;
  v6 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  v5 = *Value;
  v6 = v2;
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v5, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v14 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 12);
  v3 = *(Value + 16);
  v9 = *Value;
  v10 = *(Value + 8);
  v11 = v2;
  v12 = v3;
  v13 = v4 & 1;
  v5 = *(v0 + 4);
  outlined copy of Material.ID(v9, v10);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v9, 0, v5, v0 + 8);
  if ((v13 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v6 = v9;
    v7 = v10;
    AGGraphSetOutputValue();
  }

  else
  {
    v6 = v9;
    v7 = v10;
  }

  return outlined consume of Material.ID(v6, v7);
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v6[0] = *Value;
  v6[1] = v2;
  v7 = v3 & 1;
  v4 = *(v0 + 4);

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v6, 0, v4, v0 + 8);
  if ((v7 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }
}

{
  v12 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v3 = *(Value + 20);
  v4 = *(Value + 21);
  v7 = *Value;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v7, 0, *(v0 + 4), (v0 + 8));
  if (v11)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v5 = *Value;
  v6 = v2;
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v5, 0, *(v0 + 4), (v0 + 8));
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v3 = *(Value + 24);
  v6 = *Value;
  v7 = v2;
  v8 = v3;
  v9 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v6, 0, *(v0 + 4), v0 + 8);
  if (v9)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v5 = *Value;
  v6 = v2;
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v5, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v5[0] = *Value;
  v5[1] = v2;
  *v6 = *(Value + 32);
  *&v6[13] = *(Value + 45);
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v5[0] = *Value;
  v5[1] = v2;
  v5[2] = Value[2];
  v6 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), (v0 + 8));
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v9 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v7[0] = v2;
  v7[1] = v3;
  v8 = v4 & 1;
  v5 = *(v0 + 4);

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v7, 0, v5, v0 + 8);
  if ((v8 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v6[0] = *Value;
  v6[1] = v2;
  v3 = Value[3];
  v6[2] = Value[2];
  v6[3] = v3;
  v7 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v6, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v11 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v8 = *Value;
  v9 = v2;
  v10 = v3 & 1;
  v4 = *(v0 + 4);
  outlined copy of Material?(v8, v2);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v8, 0, v4, v0 + 8);
  if ((v10 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v5 = v8;
    v6 = v9;
    AGGraphSetOutputValue();
  }

  else
  {
    v5 = v8;
    v6 = v9;
  }

  return outlined consume of Material?(v5, v6);
}

{
  v9 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  memcpy(__dst, Value, 0x154uLL);
  memcpy(__src, Value, 0x154uLL);
  __src[340] = v3 & 1;
  v4 = *(v0 + 4);
  outlined init with copy of GlassEffectShapeModifier(__dst, v6);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(__src, 0, v4, v0 + 8);
  if ((__src[340] & 1) != 0 || !AGGraphGetOutputValue())
  {
    memcpy(v6, __src, 0x154uLL);
    AGGraphSetOutputValue();
  }

  memcpy(v6, __src, 0x155uLL);
  return outlined destroy of (value: GlassEffectShapeModifier, changed: Bool)(v6);
}

{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v5[0] = *Value;
  v5[1] = v2;
  v5[2] = Value[2];
  v6 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), (v0 + 8));
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v6[0] = *Value;
  v6[1] = v2;
  v3 = *(Value + 48);
  v6[2] = *(Value + 32);
  v6[3] = v3;
  v7 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v6, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v33 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v4 = Value[3];
  v31[2] = Value[2];
  v31[3] = v4;
  v31[0] = v2;
  v31[1] = v3;
  v5 = Value[4];
  v6 = Value[5];
  v7 = Value[6];
  *(v32 + 12) = *(Value + 108);
  v31[5] = v6;
  v32[0] = v7;
  v31[4] = v5;
  v8 = *Value;
  v9 = Value[1];
  v10 = Value[3];
  v26 = Value[2];
  v27 = v10;
  v24 = v8;
  v25 = v9;
  v11 = Value[4];
  v12 = Value[5];
  v13 = Value[6];
  *&v30[12] = *(Value + 108);
  v29 = v12;
  *v30 = v13;
  v28 = v11;
  v30[28] = v14 & 1;
  v15 = *(v0 + 4);
  outlined init with copy of VariableBlurStyle(v31, &v17);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v24, 0, v15, v0 + 8);
  if ((v30[28] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v21 = v28;
    v22 = v29;
    v23[0] = *v30;
    *(v23 + 12) = *&v30[12];
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    AGGraphSetOutputValue();
  }

  v21 = v28;
  v22 = v29;
  v23[0] = *v30;
  *(v23 + 13) = *&v30[13];
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  return outlined destroy of (value: VariableBlurStyle, changed: Bool)(&v17);
}

{
  v21 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[3];
  v4 = *Value;
  v3 = Value[1];
  v20[2] = Value[2];
  v20[3] = v2;
  v20[0] = v4;
  v20[1] = v3;
  v5 = Value[1];
  v15 = *Value;
  v16 = v5;
  v6 = Value[3];
  v17 = Value[2];
  v18 = v6;
  v19 = v7 & 1;
  v8 = *(v0 + 4);
  outlined init with copy of ViewGeometry(v20, &v10);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v15, 0, v8, v0 + 8);
  if ((v19 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v10 = v15;
    v11 = v16;
    v12 = v17;
    v13 = v18;
    AGGraphSetOutputValue();
  }

  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  return outlined destroy of (value: ViewGeometry, changed: Bool)(&v10);
}

{
  v11 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = Value[1];
  v2 = Value[2];
  v4 = Value[3];
  v5 = Value[4];
  v9[0] = *Value;
  v9[1] = v3;
  v9[2] = v2;
  v9[3] = v4;
  v9[4] = v5;
  v10 = v6 & 1;
  v7 = *(v0 + 4);

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v9, 0, v7, v0 + 8);
  if ((v10 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }

  else
  {
  }
}

{
  v20 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v18[0] = *Value;
  v3 = *(Value + 32);
  v2 = *(Value + 48);
  v4 = *(Value + 16);
  v19 = *(Value + 64);
  v18[2] = v3;
  v18[3] = v2;
  v18[1] = v4;
  v5 = *(Value + 48);
  v16 = *(Value + 32);
  *v17 = v5;
  *&v17[16] = *(Value + 64);
  v6 = *(Value + 16);
  v14 = *Value;
  v15 = v6;
  v17[24] = v7 & 1;
  v8 = *(v0 + 4);
  outlined init with copy of MeshGradient._Paint(v18, &v10);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v14, 0, v8, (v0 + 8));
  if ((v17[24] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v12 = v16;
    *v13 = *v17;
    *&v13[16] = *&v17[16];
    v10 = v14;
    v11 = v15;
    AGGraphSetOutputValue();
  }

  v12 = v16;
  *v13 = *v17;
  *&v13[9] = *&v17[9];
  v10 = v14;
  v11 = v15;
  return outlined destroy of (value: MeshGradient._Paint, changed: Bool)(&v10);
}

{
  v13 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  v3 = *(Value + 12);
  v4 = *(Value + 16);
  v8 = *Value;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5 & 1;
  v6 = *(v0 + 4);

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v8, 0, v6, v0 + 8);
  if ((v12 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }

  else
  {
  }
}

{
  v33 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = *(Value + 16);
  v4 = *(Value + 48);
  v31[2] = *(Value + 32);
  v31[3] = v4;
  v31[0] = v2;
  v31[1] = v3;
  v5 = *(Value + 64);
  v6 = *(Value + 80);
  v7 = *(Value + 96);
  v32 = *(Value + 112);
  v31[5] = v6;
  v31[6] = v7;
  v31[4] = v5;
  v8 = *Value;
  v9 = *(Value + 16);
  v10 = *(Value + 48);
  v26 = *(Value + 32);
  v27 = v10;
  v24 = v8;
  v25 = v9;
  v11 = *(Value + 64);
  v12 = *(Value + 80);
  v13 = *(Value + 96);
  *&v30[16] = *(Value + 112);
  v29 = v12;
  *v30 = v13;
  v28 = v11;
  v30[24] = v14 & 1;
  v15 = *(v0 + 4);
  outlined init with copy of _ShapeStyle_Pack.Style(v31, &v17);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v24, 0, v15, v0 + 8);
  if ((v30[24] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v21 = v28;
    v22 = v29;
    *v23 = *v30;
    *&v23[16] = *&v30[16];
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    AGGraphSetOutputValue();
  }

  v21 = v28;
  v22 = v29;
  *v23 = *v30;
  *&v23[9] = *&v30[9];
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  return outlined destroy of (value: _ShapeStyle_Pack.Style, changed: Bool)(&v17);
}

{
  v25 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v23[0] = *Value;
  v23[1] = v2;
  v3 = *(Value + 32);
  v4 = *(Value + 48);
  v5 = *(Value + 64);
  *&v24[14] = *(Value + 78);
  v23[3] = v4;
  *v24 = v5;
  v23[2] = v3;
  v6 = *(Value + 16);
  v18 = *Value;
  v19 = v6;
  v7 = *(Value + 32);
  v8 = *(Value + 48);
  v9 = *(Value + 64);
  *&v22[14] = *(Value + 78);
  v21 = v8;
  *v22 = v9;
  v20 = v7;
  v22[22] = v10 & 1;
  v11 = *(v0 + 4);
  outlined init with copy of _ShapeStyle_Pack.Fill(v23, &v13);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v18, 0, v11, (v0 + 8));
  if ((v22[22] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v15 = v20;
    v16 = v21;
    v17[0] = *v22;
    *(v17 + 14) = *&v22[14];
    v13 = v18;
    v14 = v19;
    AGGraphSetOutputValue();
  }

  v15 = v20;
  v16 = v21;
  v17[0] = *v22;
  *(v17 + 15) = *&v22[15];
  v13 = v18;
  v14 = v19;
  return outlined destroy of (value: _ShapeStyle_Pack.Fill, changed: Bool)(&v13);
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v5[0] = *Value;
  v5[1] = v2;
  *v6 = *(Value + 32);
  *&v6[14] = *(Value + 46);
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v18[0] = *Value;
  v3 = Value[2];
  v2 = Value[3];
  v4 = Value[1];
  *(v19 + 9) = *(Value + 57);
  v18[2] = v3;
  v19[0] = v2;
  v18[1] = v4;
  v5 = Value[3];
  v16 = Value[2];
  *v17 = v5;
  *&v17[9] = *(Value + 57);
  v6 = Value[1];
  v14 = *Value;
  v15 = v6;
  v17[25] = v7 & 1;
  v8 = *(v0 + 4);
  outlined init with copy of _ShapeStyle_Pack.Effect(v18, &v10);
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v14, 0, v8, (v0 + 8));
  if ((v17[25] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v12 = v16;
    v13[0] = *v17;
    *(v13 + 9) = *&v17[9];
    v10 = v14;
    v11 = v15;
    AGGraphSetOutputValue();
  }

  v12 = v16;
  v13[0] = *v17;
  *(v13 + 10) = *&v17[10];
  v10 = v14;
  v11 = v15;
  return outlined destroy of (value: _ShapeStyle_Pack.Effect, changed: Bool)(&v10);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *AGGraphGetValue();
  v5 = v1 & 1;
  v2 = *(v0 + 4);

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v4, 0, v2, v0 + 8);
  if ((v5 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }

  else
  {
  }
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  memcpy(__dst, Value, sizeof(__dst));
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(__dst, 0, *(v0 + 4), (v0 + 8));
  if ((v7 & 1) != 0 || (result = AGGraphGetOutputValue()) == 0)
  {
    memcpy(v5, __dst, sizeof(v5));
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v5[0] = *Value;
  v5[1] = v2;
  *v6 = *(Value + 32);
  *&v6[13] = *(Value + 45);
  v7 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *AGGraphGetValue();
  v4 = v1 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v3, 0, *(v0 + 4), v0 + 8);
  if (v4)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v11 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 32);
  v3 = *(Value + 40);
  v4 = *(Value + 16);
  v7[0] = *Value;
  v7[1] = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v7, 0, *(v0 + 4), v0 + 8);
  if (v10)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v9 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 32);
  v3 = *(Value + 16);
  v6[0] = *Value;
  v6[1] = v3;
  v7 = v2;
  v8 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v6, 0, *(v0 + 4), (v0 + 8));
  if (v8)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 16);
  v6 = v2 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v4, 0, *(v0 + 4), v0 + 8);
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v15 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  v3 = *(Value + 32);
  v4 = *(Value + 40);
  v5 = *(Value + 48);
  v8 = *Value;
  v9 = v2;
  v10 = *(Value + 16);
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v8, 0, *(v0 + 4), v0 + 8);
  if (v14)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v13 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[11];
  v11[10] = Value[10];
  v11[11] = v2;
  v3 = Value[13];
  v11[12] = Value[12];
  v11[13] = v3;
  v4 = Value[7];
  v11[6] = Value[6];
  v11[7] = v4;
  v5 = Value[9];
  v11[8] = Value[8];
  v11[9] = v5;
  v6 = Value[3];
  v11[2] = Value[2];
  v11[3] = v6;
  v7 = Value[5];
  v11[4] = Value[4];
  v11[5] = v7;
  v8 = Value[1];
  v11[0] = *Value;
  v11[1] = v8;
  v12 = v9 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v11, 0, *(v0 + 4), v0 + 8);
  if (v12)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v13 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[13];
  v11[12] = Value[12];
  v11[13] = v2;
  v11[14] = Value[14];
  v3 = Value[9];
  v11[8] = Value[8];
  v11[9] = v3;
  v4 = Value[11];
  v11[10] = Value[10];
  v11[11] = v4;
  v5 = Value[5];
  v11[4] = Value[4];
  v11[5] = v5;
  v6 = Value[7];
  v11[6] = Value[6];
  v11[7] = v6;
  v7 = Value[1];
  v11[0] = *Value;
  v11[1] = v7;
  v8 = Value[3];
  v11[2] = Value[2];
  v11[3] = v8;
  v12 = v9 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v11, 0, *(v0 + 4), v0 + 8);
  if (v12)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v14 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[13];
  v12[12] = Value[12];
  v12[13] = v2;
  v3 = Value[15];
  v12[14] = Value[14];
  v12[15] = v3;
  v4 = Value[9];
  v12[8] = Value[8];
  v12[9] = v4;
  v5 = Value[11];
  v12[10] = Value[10];
  v12[11] = v5;
  v6 = Value[5];
  v12[4] = Value[4];
  v12[5] = v6;
  v7 = Value[7];
  v12[6] = Value[6];
  v12[7] = v7;
  v8 = Value[1];
  v12[0] = *Value;
  v12[1] = v8;
  v9 = Value[3];
  v12[2] = Value[2];
  v12[3] = v9;
  v13 = v10 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v12, 0, *(v0 + 4), v0 + 8);
  if (v13)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v6[0] = *Value;
  v6[1] = v2;
  v3 = Value[3];
  v6[2] = Value[2];
  v6[3] = v3;
  v7 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v6, 0, *(v0 + 4), (v0 + 8));
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 16);
  v6 = v2 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v4, 0, *(v0 + 4), (v0 + 8));
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *AGGraphGetValue();
  v4 = v1 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v3, 0, *(v0 + 4), v0 + 8);
  if (v4)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = Value[1];
  v5[0] = *Value;
  v5[1] = v2;
  v6 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  v3 = *(Value + 9);
  v6 = *Value;
  v7 = v2;
  v8 = v3;
  v9 = v4 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v6, 0, *(v0 + 4), v0 + 8);
  if (v9)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *AGGraphGetValue();
  v4 = v1 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v3, 0, *(v0 + 4), v0 + 8);
  if (v4)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *AGGraphGetValue();
  v4 = v1 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v3, 0, *(v0 + 4), v0 + 8);
  if (v4)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v2 = Value[1];
  v5[0] = *Value;
  v5[1] = v2;
  v6 = v3 & 1;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v5, 0, *(v0 + 4), v0 + 8);
  if (v6)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

uint64_t outlined init with copy of Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for Transaction.PendingListeners(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for DispatchTime();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t type metadata completion function for Transaction.PendingListeners.WeakListener()
{
  result = type metadata accessor for DispatchTime();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for DispatchTime?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t closure #1 in static Transaction.addPendingListener(_:)(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for Transaction.PendingListeners.WeakListener(0);
  v9 = v8 - 8;
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  static DispatchTime.now()();
  + infix(_:_:)();
  v42 = *(v13 + 8);
  v43 = v13 + 8;
  v42(v15, v12);
  v19 = *(v13 + 16);
  v20 = &v11[*(v9 + 28)];
  v45 = v18;
  v34 = v19;
  v19(v20, v18, v12);
  swift_weakInit();
  swift_weakAssign();
  v21 = a1;
  v22 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
  }

  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v22);
  }

  v22[2] = v24 + 1;
  outlined init with take of Transaction.PendingListeners.WeakListener(v11, v22 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24);
  *v21 = v22;
  v25 = *(type metadata accessor for Transaction.PendingListeners(0) + 20);
  outlined init with copy of DispatchTime?(&v21[v25], v7);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of DispatchTime?(v7);
    outlined destroy of DispatchTime?(&v21[v25]);
    v34(&v21[v25], v45, v12);
    (*(v13 + 56))(&v21[v25], 0, 1, v12);
    type metadata accessor for OS_dispatch_queue();
    v26 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for implicit closure #1 in closure #1 in static Transaction.addPendingListener(_:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_3;
    v27 = _Block_copy(aBlock);

    v28 = v35;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v29 = v37;
    v30 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v31 = v45;
    MEMORY[0x193ABFB50](v45, v28, v29, v27);
    _Block_release(v27);

    (*(v39 + 8))(v29, v30);
    (*(v36 + 8))(v28, v38);
    return (v42)(v31, v12);
  }

  else
  {
    v42(v45, v12);
    return outlined destroy of DispatchTime?(v7);
  }
}

uint64_t outlined init with take of Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transaction.PendingListeners.WeakListener(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithTake for Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakTakeInit();
  v6 = *(a3 + 20);
  v7 = type metadata accessor for DispatchTime();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t outlined init with copy of DispatchTime?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DispatchTime?(uint64_t a1)
{
  type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    type metadata accessor for DispatchTime?(255, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE017AnimationListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(*a1) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for AnimationListener?, type metadata accessor for AnimationListener, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.AnimationListenerKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationListenerKey>, &type metadata for Transaction.AnimationListenerKey, &protocol witness table for Transaction.AnimationListenerKey, type metadata accessor for TransactionPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.AnimationListenerKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.AnimationListenerKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationListenerKey>, &type metadata for Transaction.AnimationListenerKey, &protocol witness table for Transaction.AnimationListenerKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.AnimationListenerKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.AnimationListenerKey>>);
    }
  }
}

void type metadata completion function for Transaction.PendingListeners()
{
  type metadata accessor for DispatchTime?(319, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeWithCopy for Transaction.PendingListeners(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);

  if (v8(&a2[v5], 1, v6))
  {
    type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.AnimationListenerKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.AnimationListenerKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.AnimationListenerKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationListenerKey>, &type metadata for Transaction.AnimationListenerKey, &protocol witness table for Transaction.AnimationListenerKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.AnimationListenerKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

uint64_t one-time initialization function for pendingListeners()
{
  v0 = type metadata accessor for Transaction.PendingListeners(0);
  v1 = v0 - 8;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = MEMORY[0x1E69E7CC0];
  v5 = *(v1 + 28);
  v6 = type metadata accessor for DispatchTime();
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for AtomicBuffer<Transaction.PendingListeners>, type metadata accessor for Transaction.PendingListeners, type metadata accessor for AtomicBuffer);
  v7 = (*(v2 + 80) + 20) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  outlined init with copy of Transaction.PendingListeners.WeakListener(v4, v8 + v7, type metadata accessor for Transaction.PendingListeners);
  result = outlined destroy of Transaction.PendingListeners.WeakListener(v4, type metadata accessor for Transaction.PendingListeners);
  static Transaction.pendingListeners = v8;
  return result;
}

id GraphicsFilter.makeCAFilter()()
{
  v1 = v0[5];
  v138[4] = v0[4];
  v138[5] = v1;
  v139[0] = v0[6];
  *(v139 + 12) = *(v0 + 108);
  v2 = v0[1];
  v138[0] = *v0;
  v138[1] = v2;
  v3 = v0[3];
  v138[2] = v0[2];
  v138[3] = v3;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v138))
  {
    case 1u:
      v83 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0x11u);
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, isa, 20);

      v85 = Bool._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v85, 16);

      v86 = Bool._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v86, 12);

      v87 = v83[6];
      v129 = v83[5];
      v130[0] = v87;
      *(v130 + 12) = *(v83 + 108);
      v88 = v83[2];
      v125 = v83[1];
      v126 = v88;
      v89 = v83[4];
      v127 = v83[3];
      v128 = v89;
      v90 = v0[3];
      v133 = v0[2];
      v134 = v90;
      v91 = v0[5];
      v135 = v0[4];
      v136 = v91;
      v137[0] = v0[6];
      *(v137 + 12) = *(v0 + 108);
      v92 = v0[1];
      v131 = *v0;
      v132 = v92;
      v93 = _s7SwiftUI14GraphicsFilterOWOj6_(&v131);
      outlined init with copy of VariableBlurStyle(v93, &v119);
      goto LABEL_35;
    case 2u:
      v64 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v65 = _CAFilterCreate(0xBu);
      goto LABEL_33;
    case 3u:
      v64 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v65 = _CAFilterCreate(2u);
LABEL_33:
      v4 = v65;
      v75 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v75, 3);

      v76 = *(v64 + 56);
      v77 = *(v64 + 88);
      v129 = *(v64 + 72);
      v130[0] = v77;
      *(v130 + 12) = *(v64 + 100);
      v78 = *(v64 + 24);
      v125 = *(v64 + 8);
      v126 = v78;
      v127 = *(v64 + 40);
      v128 = v76;
      v79 = v0[5];
      v135 = v0[4];
      v136 = v79;
      v137[0] = v0[6];
      *(v137 + 12) = *(v0 + 108);
      v80 = v0[1];
      v131 = *v0;
      v132 = v80;
      v81 = v0[3];
      v133 = v0[2];
      v134 = v81;
      v82 = _s7SwiftUI14GraphicsFilterOWOj6_(&v131);
      outlined init with copy of GraphicsFilter.DisplacementMap(v82, &v119);
      goto LABEL_35;
    case 4u:
    case 5u:
    case 0x12u:
      goto LABEL_50;
    case 6u:
      v58 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(7u);
      v116 = v58[1];
      v112 = v58[3];
      v114 = v58[2];
      v110 = v58[4];
      v131 = *v58;
      v132 = v116;
      v133 = v114;
      v134 = v112;
      v135 = v110;
      v59 = [objc_opt_self() valueWithCAColorMatrix_];
      if (!v59)
      {
        goto LABEL_49;
      }

      v60 = v59;
      _CAFilterSetInput(v4, v59, 11);

      goto LABEL_26;
    case 7u:
      v41 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v42 = *(v41 + 16);
      v131 = *v41;
      LODWORD(v132) = v42;
      v4 = _CAFilterCreate(0x10u);
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v7.super.super.isa = specialized ObjectCache.subscript.getter(&v131);
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 10;
      goto LABEL_45;
    case 8u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v50 = *v49;
      v51 = v49[1];
      v52 = v49[2];
      v53 = v49[3];
      v4 = _CAFilterCreate(7u);
      specialized _ColorMatrix.init(alphaMultiply:premultiplied:)(1, &v131, v50, v51, v52, v53);
      v54 = objc_opt_self();
      v119 = v131;
      v120 = v132;
      v121 = v133;
      v122 = v134;
      v123 = v135;
      v55 = [v54 valueWithCAColorMatrix_];
      if (!v55)
      {
        goto LABEL_48;
      }

      v56 = v55;
      _CAFilterSetInput(v4, v55, 11);

LABEL_26:
      v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 19;
      goto LABEL_45;
    case 9u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(5u);
      v7.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 4;
      goto LABEL_45;
    case 0xAu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v11 = _CAFilterCreate(9u);
      goto LABEL_23;
    case 0xBu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v11 = _CAFilterCreate(3u);
      goto LABEL_23;
    case 0xCu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v11 = _CAFilterCreate(4u);
      goto LABEL_23;
    case 0xDu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v11 = _CAFilterCreate(8u);
LABEL_23:
      v4 = v11;
      v57.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      goto LABEL_44;
    case 0xEu:
      v12 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v13 = *(v12 + 16);
      v117 = *v12;
      v4 = _CAFilterCreate(8u);
      v131 = v117;
      LODWORD(v132) = v13;
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v14 = specialized ObjectCache.subscript.getter(&v131);
      _CAFilterSetInput(v4, v14, 10);

      v15 = Float._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v15, 3);

      v7.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 6;
      goto LABEL_45;
    case 0xFu:
      v43 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0x12u);
      v115 = *(v43 + 16);
      v111 = *(v43 + 48);
      v113 = *(v43 + 32);
      v109 = *(v43 + 64);
      v131 = *v43;
      v132 = v115;
      v133 = v113;
      v134 = v111;
      v135 = v109;
      v44 = [objc_opt_self() valueWithCAColorMatrix_];
      if (!v44)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        _s7SwiftUI14GraphicsFilterOWOj6_(v138);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x18D172914);
      }

      v45 = v44;
      _CAFilterSetInput(v4, v44, 11);

      v46 = *(v43 + 84);
      if (v46)
      {
        v47 = Bool._bridgeToObjectiveC()().super.super.isa;
        _CAFilterSetInput(v4, v47, 5);
      }

      if (*(v43 + 80) == INFINITY)
      {
        return v4;
      }

      v48 = Float._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v48, 8);

      if ((v46 & 2) == 0)
      {
        return v4;
      }

      v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 9;
      goto LABEL_45;
    case 0x10u:
      v94 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v95 = *v94;
      v96 = v94[1];
      v97 = v94[2];
      v98 = v94[3];
      v4 = _CAFilterCreate(0xEu);
      type metadata accessor for _ContiguousArrayStorage<Any>();
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_18DDACA80;
      v100 = MEMORY[0x1E69E6448];
      *(v99 + 56) = MEMORY[0x1E69E6448];
      *(v99 + 32) = v95;
      *(v99 + 88) = v100;
      *(v99 + 64) = v96;
      *(v99 + 120) = v100;
      *(v99 + 96) = v97;
      *(v99 + 152) = v100;
      *(v99 + 128) = v98;
      type metadata accessor for NSArray();
      v101 = MEMORY[0x193ABFBE0](v99);
      v102 = v4;
      v103 = v101;
      v104 = 24;
      goto LABEL_43;
    case 0x11u:
      v16 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0xAu);
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      type metadata accessor for _ContiguousArrayStorage<Any>();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_18DDACA80;
      v22 = MEMORY[0x1E69E6448];
      *(v21 + 56) = MEMORY[0x1E69E6448];
      *(v21 + 32) = v17;
      *(v21 + 88) = v22;
      *(v21 + 64) = v18;
      *(v21 + 120) = v22;
      *(v21 + 96) = v19;
      *(v21 + 152) = v22;
      *(v21 + 128) = v20;
      type metadata accessor for NSArray();
      v23 = MEMORY[0x193ABFBE0](v21);
      _CAFilterSetInput(v4, v23, 21);

      v24 = v16[4];
      v25 = v16[5];
      v26 = v16[6];
      v27 = v16[7];
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_18DDACA80;
      *(v28 + 56) = v22;
      *(v28 + 32) = v24;
      *(v28 + 88) = v22;
      *(v28 + 64) = v25;
      *(v28 + 120) = v22;
      *(v28 + 96) = v26;
      *(v28 + 152) = v22;
      *(v28 + 128) = v27;
      v29 = MEMORY[0x193ABFBE0]();
      _CAFilterSetInput(v4, v29, 13);

      v30 = v16[8];
      v31 = v16[9];
      v32 = v16[10];
      v33 = v16[11];
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18DDACA80;
      *(v34 + 56) = v22;
      *(v34 + 32) = v30;
      *(v34 + 88) = v22;
      *(v34 + 64) = v31;
      *(v34 + 120) = v22;
      *(v34 + 96) = v32;
      *(v34 + 152) = v22;
      *(v34 + 128) = v33;
      v35 = MEMORY[0x193ABFBE0]();
      _CAFilterSetInput(v4, v35, 7);

      v36 = v16[12];
      v37 = v16[13];
      v38 = v16[14];
      v39 = v16[15];
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_18DDACA80;
      *(v40 + 56) = v22;
      *(v40 + 32) = v36;
      *(v40 + 88) = v22;
      *(v40 + 64) = v37;
      *(v40 + 120) = v22;
      *(v40 + 96) = v38;
      *(v40 + 152) = v22;
      *(v40 + 128) = v39;
      v7.super.super.isa = MEMORY[0x193ABFBE0]();
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 2;
      goto LABEL_45;
    case 0x13u:
      v106 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v107 = *(v106 + 16);
      v118 = *v106;
      v4 = _CAFilterCreate(0);
      v131 = v118;
      LODWORD(v132) = v107;
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v101 = specialized ObjectCache.subscript.getter(&v131);
      v102 = v4;
      v103 = v101;
      v104 = 10;
LABEL_43:
      _CAFilterSetInput(v102, v103, v104);

      v57.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
LABEL_44:
      v7.super.super.isa = v57.super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 3;
      goto LABEL_45;
    case 0x14u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0xCu);
      v61 = Float._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v61, 3);

      v62 = Float._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v62, 22);

      v63 = Bool._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v63, 0);

      v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 1;
      goto LABEL_45;
    case 0x15u:
      v67 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0x13u);
      v68 = *(v67 + 56);
      v69 = *(v67 + 88);
      v129 = *(v67 + 72);
      v130[0] = v69;
      *(v130 + 12) = *(v67 + 100);
      v70 = *(v67 + 24);
      v125 = *(v67 + 8);
      v126 = v70;
      v127 = *(v67 + 40);
      v128 = v68;
      v71 = v0[5];
      v135 = v0[4];
      v136 = v71;
      v137[0] = v0[6];
      *(v137 + 12) = *(v0 + 108);
      v72 = v0[1];
      v131 = *v0;
      v132 = v72;
      v73 = v0[3];
      v133 = v0[2];
      v134 = v73;
      v74 = _s7SwiftUI14GraphicsFilterOWOj6_(&v131);
      outlined init with copy of GraphicsFilter.GlassBackgroundStyle(v74, &v119);
LABEL_35:
      VariableBlurStyle.Mask.setCAFilterInput(of:)(v4);
      v123 = v129;
      v124[0] = v130[0];
      *(v124 + 12) = *(v130 + 12);
      v119 = v125;
      v120 = v126;
      v121 = v127;
      v122 = v128;
      outlined destroy of VariableBlurStyle.Mask(&v119);
      return v4;
    case 0x16u:
      v105 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v66 = (*(**v105 + 88))();
      goto LABEL_39;
    case 0x17u:
      v66 = _CAFilterCreate(1u);
      goto LABEL_39;
    case 0x18u:
      v66 = _CAFilterCreate(0xFu);
      goto LABEL_39;
    case 0x19u:
      v66 = _CAFilterCreate(6u);
LABEL_39:
      v4 = v66;
      break;
    default:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0xDu);
      v5 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v5, 20);

      v6 = Bool._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v6, 16);

      v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 12;
LABEL_45:
      _CAFilterSetInput(v8, v9, v10);

      break;
  }

  return v4;
}

id _CAFilterCreate(unsigned int a1)
{
  v1 = MEMORY[0x1E6979378];
  if (a1 > 0x12)
  {
    v2 = @"glassBackground";
  }

  else
  {
    v2 = **(&unk_1E7242160 + a1);
  }

  v3 = [v1 filterWithType:v2];

  return v3;
}

void _CAFilterSetInput(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a1;
  v7 = _CAFilterInputKey(a3);
  [v6 setValue:v5 forKey:v7];
}

uint64_t _AnyAnimatableData.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for VTable();
  v9 = *(a3 + 24);
  a4[4] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1(a4 + 1);
  v9(a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v8;
  return result;
}

uint64_t static VTable.isEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  outlined init with copy of Any(a1, v15);
  swift_dynamicCast();
  outlined init with copy of Any(a2, v14);
  swift_dynamicCast();
  swift_getAssociatedConformanceWitness();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, AssociatedTypeWitness);
  v12(v10, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t _AnyShapeBox.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  v9 = *(v4 + 168);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  return _AnyAnimatableData.init<A>(_:)(v8, v5, *(*(v4 + 160) + 8), a2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _AnyAnimatableData(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return (*(*a1 + 88))(a1 + 8, a2 + 1) & 1;
  }

  else
  {
    return 0;
  }
}

double _AnyShapeBox.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = *v6;
  v13 = *(*v6 + 152);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v20[-v15];
  v17 = *(v12 + 168);
  swift_beginAccess();
  (*(v14 + 16))(v16, v6 + v17, v13);
  (*(*(v12 + 160) + 24))(v21, v13, a3, a4, a5, a6);
  (*(v14 + 8))(v16, v13);
  result = *v21;
  v19 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v19;
  *(a2 + 32) = v22;
  return result;
}

double protocol witness for Shape.path(in:) in conformance AnyShape@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 80))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

BOOL specialized AnimatableAttributeHelper.checkReset()()
{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 64);
  if (v1 != v2)
  {
    if (*(v0 + 56))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 56) = 0;
    outlined destroy of HitTestableEvent?(v0 + 16, &lazy cache variable for type metadata for _AnyAnimatableData?);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 64) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 96);
  if (v1 != v2)
  {
    if (*(v0 + 88))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 88) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 1;
    *(v0 + 96) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 64);
  if (v1 != v2)
  {
    if (*(v0 + 56))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 56) = 0;
    outlined consume of ScrapeableContent?(*(v0 + 16));
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 64) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 80);
  if (v1 != v2)
  {
    if (*(v0 + 72))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 72) = 0;

    *(v0 + 64) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 80) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 48);
  if (v1 != v2)
  {
    if (*(v0 + 40))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 40) = 0;

    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 128);
  if (v1 != v2)
  {
    if (*(v0 + 120))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 120) = 0;
    v3 = *(v0 + 96);
    v7[4] = *(v0 + 80);
    v7[5] = v3;
    v8 = *(v0 + 112);
    v4 = *(v0 + 32);
    v7[0] = *(v0 + 16);
    v7[1] = v4;
    v5 = *(v0 + 64);
    v7[2] = *(v0 + 48);
    v7[3] = v5;
    outlined destroy of Slice<IndexSet>(v7, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0;
    *(v0 + 128) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 112);
  if (v1 != v2)
  {
    if (*(v0 + 104))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 104) = 0;
    v3 = *(v0 + 64);
    v6[2] = *(v0 + 48);
    v6[3] = v3;
    v6[4] = *(v0 + 80);
    v7 = *(v0 + 96);
    v4 = *(v0 + 32);
    v6[0] = *(v0 + 16);
    v6[1] = v4;
    outlined destroy of HitTestableEvent?(v6, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = -1;
    *(v0 + 112) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 72);
  if (v1 != v2)
  {
    if (*(v0 + 64))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 64) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 41) = 0u;
    *(v0 + 57) = 1;
    *(v0 + 72) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 80);
  if (v1 != v2)
  {
    if (*(v0 + 72))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 72) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 256;
    *(v0 + 80) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 288);
  if (v1 != v2)
  {
    if (*(v0 + 280))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 280) = 0;
    _s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOi0_(__src);
    memcpy((v0 + 16), __src, 0x101uLL);
    *(v0 + 288) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 128);
  if (v1 != v2)
  {
    if (*(v0 + 120))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 120) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 1;
    *(v0 + 128) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 136);
  if (v1 != v2)
  {
    if (*(v0 + 128))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 128) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0;
    *(v0 + 120) = 1;
    *(v0 + 136) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 160);
  if (v1 != v2)
  {
    if (*(v0 + 152))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 152) = 0;
    _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOi0_(v8);
    v3 = v8[7];
    *(v0 + 112) = v8[6];
    *(v0 + 128) = v3;
    *(v0 + 144) = v9;
    v4 = v8[3];
    *(v0 + 48) = v8[2];
    *(v0 + 64) = v4;
    v5 = v8[5];
    *(v0 + 80) = v8[4];
    *(v0 + 96) = v5;
    v6 = v8[1];
    *(v0 + 16) = v8[0];
    *(v0 + 32) = v6;
    *(v0 + 160) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 40);
  if (v1 != v2)
  {
    if (*(v0 + 32))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 32) = 0;
    *(v0 + 20) = 0;
    *(v0 + 12) = 0;
    *(v0 + 28) = 1;
    *(v0 + 40) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 48);
  if (v1 != v2)
  {
    if (*(v0 + 40))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 40) = 0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

double protocol witness for Shape.path(in:) in conformance Capsule@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Capsule.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t Capsule.path(in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v9 = *v5;
  Width = CGRectGetWidth(*&a2);
  v20.origin.x = a2;
  v20.size.width = a4;
  v20.origin.y = a3;
  v20.size.height = a5;
  Height = CGRectGetHeight(v20);
  if (Height < Width)
  {
    Width = Height;
  }

  v21.origin.x = a2;
  v21.size.width = a4;
  v21.origin.y = a3;
  v21.size.height = a5;
  IsNull = CGRectIsNull(v21);
  v13 = 0uLL;
  if (IsNull)
  {
    result = 0;
    v15 = 6;
    a5 = 0.0;
  }

  else
  {
    v16 = Width * 0.5;
    if (v16 == 0.0 || (v22.origin.x = a2, v22.size.width = a4, v22.origin.y = a3, v22.size.height = a5, CGRectIsInfinite(v22)))
    {
      v15 = 0;
      result = *&a2;
      *&v17 = a3;
      *(&v17 + 1) = a4;
      v13 = v17;
    }

    else
    {
      result = swift_allocObject();
      v13 = 0uLL;
      *(result + 16) = a2;
      *(result + 24) = a3;
      *(result + 32) = a4;
      *(result + 40) = a5;
      *(result + 48) = v16;
      *(result + 56) = v16;
      v15 = 2;
      a5 = 0.0;
      *(result + 64) = v9;
    }
  }

  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 24) = a5;
  *(a1 + 32) = v15;
  return result;
}

__n128 initializeWithCopy for PlatformGlassInteractionProxy(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakCopyInit();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

__n128 initializeWithTake for PlatformGlassInteractionProxy(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeInit();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

uint64_t destroy for CoreInteractionRepresentableEffect(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }

  return swift_unknownObjectRelease();
}

uint64_t *initializeBufferWithCopyOfBuffer for CoreInteractionRepresentableEffect(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v11 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v12;
    *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);

    swift_unknownObjectRetain();
  }

  return a1;
}

uint64_t specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x193ABEDD0](0xD00000000000003FLL, 0x800000018DD79E20);
    v8 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v8);

    MEMORY[0x193ABEDD0](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x193ABEDD0](0xD00000000000003FLL, 0x800000018DD79E20);
    v8 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v8);

    MEMORY[0x193ABEDD0](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t DisplayList.ViewUpdater.Platform.updateSDFShapeView(_:state:shape:contentsChanged:)(uint64_t a1, void *a2, __int128 *a3, char a4)
{
  v4 = a2;
  v5 = a3[1];
  v60 = *a3;
  v61 = v5;
  v62 = a3[2];
  v63 = *(a3 + 6);
  if ((a4 & 1) == 0)
  {
LABEL_25:
    v40 = v4[3];
    *&v58.a = v4[2];
    *&v58.c = v40;
    *&v58.tx = v4[4];
    result = CGAffineTransformTranslate(&v56, &v58, -*&v60, -*(&v60 + 1));
    v42 = *&v56.c;
    v43 = *&v56.tx;
    v4[2] = *&v56.a;
    v4[3] = v42;
    v4[4] = v43;
    return result;
  }

  v7 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  v10 = *(v61 + 16);
  if (!v10)
  {
LABEL_21:
    v67.origin.x = v7;
    v67.origin.y = v6;
    v67.size.width = v9;
    v67.size.height = v8;
    if (CGRectIsNull(v67))
    {
      v7 = 0.0;
      v6 = 0.0;
      v9 = 0.0;
      v8 = 0.0;
    }

    v32 = *(a1 + 16);
    type metadata accessor for SDFLayer();
    v33 = swift_dynamicCastClassUnconditional();
    v34 = *(v33 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver);
    *(v33 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver) = v63;
    swift_retain_n();
    outlined init with copy of SDFShape(&v60, &v58);
    v35 = v32;
    SDFLayer.backdropObserver.didset(v34);

    *v53 = v7;
    *(v53 + 1) = v6;
    v55 = *(a3 + 6);
    v36 = a3[1];
    v54 = a3[2];
    v53[1] = v36;
    *&v58.a = v53[0];
    *&v58.c = v36;
    *&v58.tx = v54;
    v59 = v55;
    v4 = a2;
    v52 = *(*a2 + 24);
    v37 = a2[14];
    outlined init with copy of SDFShape(v53, &v56);
    SDFLayer.update(shape:size:in:backdropGroupID:)(&v58, &v52, v37, v9, v8);

    v56 = v58;
    v57 = v59;
    outlined destroy of SDFShape(&v56);
    v58.a = v7;
    v58.b = v6;
    v38 = a3[2];
    *&v58.c = a3[1];
    *&v58.tx = v38;
    v59 = *(a3 + 6);
    outlined destroy of SDFShape(&v58);
    v39 = *(a1 + 65);
    if ((v39 & 0x20) == 0)
    {
      *(a1 + 65) = v39 | 0x20;
    }

    goto LABEL_25;
  }

  v11 = 0;
  v12 = (v61 + 64);
  v48 = *(MEMORY[0x1E695F050] + 24);
  v49 = *(MEMORY[0x1E695F050] + 16);
  v50 = *(MEMORY[0x1E695F050] + 8);
  v51 = *MEMORY[0x1E695F050];
  v44 = *(v61 + 16);
  while (v11 < *(v61 + 16))
  {
    v17 = *(v12 - 4);
    v18 = *(v12 - 3);
    v19 = *(v12 - 2);
    v20 = *(v12 - 1);
    v21 = *v12;
    if (v21 > 2)
    {
      if (v21 == 5)
      {
        if (*(v17 + 16))
        {
          if (*(v17 + 16) == 1)
          {
            outlined copy of Path.Storage(*(v12 - 4), *(v12 - 3), *(v12 - 2), *(v12 - 1), 5u);
            v10 = v44;
            RBPathGetBoundingRect();
          }

          else
          {
            outlined copy of Path.Storage(*(v12 - 4), *(v12 - 3), *(v12 - 2), *(v12 - 1), 5u);
            v26 = MEMORY[0x193AC3640](v17 + 24);
          }

          v13 = v26;
          v14 = v27;
          v15 = v28;
          v16 = v29;
          goto LABEL_5;
        }

        v30 = *(v17 + 24);
        if (!v30)
        {
          goto LABEL_27;
        }

        v31 = v30;
        outlined copy of Path.Storage(v17, v18, v19, v20, 5u);
        outlined copy of Path.Storage(v17, v18, v19, v20, 5u);
        PathBoundingBox = CGPathGetPathBoundingBox(v31);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;

        outlined consume of Path.Storage(v17, v18, v19, v20, 5u);
        goto LABEL_18;
      }

      v14 = v50;
      v13 = v51;
      v16 = v48;
      v15 = v49;
      if (v21 != 6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v21 >= 2)
      {
        x = *(v17 + 16);
        y = *(v17 + 24);
        width = *(v17 + 32);
        height = *(v17 + 40);
        outlined copy of Path.Storage(*(v12 - 4), *(v12 - 3), *(v12 - 2), *(v12 - 1), 2u);
LABEL_18:
        v16 = height;
        v15 = width;
        v14 = y;
        v13 = x;
        goto LABEL_5;
      }

      v13 = *(v12 - 4);
      v14 = *(v12 - 3);
      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
    }

LABEL_5:
    ++v11;
    v64.origin.x = v7;
    v64.origin.y = v6;
    v64.size.width = v9;
    v64.size.height = v8;
    v65 = CGRectUnion(v64, *&v13);
    v7 = v65.origin.x;
    v6 = v65.origin.y;
    v9 = v65.size.width;
    v8 = v65.size.height;
    outlined consume of Path.Storage(v17, v18, v19, v20, v21);
    v12 += 56;
    if (v10 == v11)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SDFLayer.update(shape:size:in:backdropGroupID:)(uint64_t a1, double *a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v10 = *a1;
  v11 = *(a1 + 8);
  v225 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 44);
  v211 = *a2;
  SDFLayer.beginUpdatingStyle(_:shapeBounds:)(v13, v10, v11, a4, a5);
  if (v12 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v12;
  }

  v17 = COERCE_DOUBLE(SDFStyle.distanceRange.getter(v13));
  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = fmin(v17, 0.0);
    if (v16 <= v18)
    {
      v16 = v18;
    }

    if (v20 > v16)
    {
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      v192 = 0;
      v191 = 520;
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  if (v16 > 0.0)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0.0;
  }

  v227 = v20;
  if (v20 > v21)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v199 = v15;
  v200 = v12;
  v201 = v13;
  v202 = a3;
  v203 = SDFStyle.needsDistanceGradient.getter(v13);
  v22 = 0.0;
  if (v203)
  {
    v22 = v14;
  }

  v210 = v22;
  v23 = v211;
  v24 = v227;
  v224 = *(v225 + 16);
  if (!v224)
  {
    goto LABEL_153;
  }

  v212 = &v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange];
  v204 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_ovalization;
  v25 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements;
  v26 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets;
  v223 = v225 + 32;
  swift_beginAccess();
  swift_beginAccess();
  v27 = 0;
  v28 = v211 * (v21 - v227);
  if (v28 < 64.0)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 16.0)
  {
    v29 = 0;
  }

  v206 = v29;
  v222 = v203 & 1;
  v205 = &v247;
  v209 = *MEMORY[0x1E69796E8];
  v208 = *MEMORY[0x1E69796E0];
  v30 = v210;
  v31 = *MEMORY[0x1E6979F18];
  v32 = *MEMORY[0x1E6979F30];
  v232 = *MEMORY[0x1E6979F28];
  v233 = v32;
  v33 = *MEMORY[0x1E695F050];
  v197 = *(MEMORY[0x1E695F050] + 8);
  v198 = v33;
  v34 = *(MEMORY[0x1E695F050] + 16);
  v195 = *(MEMORY[0x1E695F050] + 24);
  v196 = v34;
  v207 = -v21;
  v229 = *MEMORY[0x1E6979F20];
  v230 = v31;
  v226 = v25;
  while (1)
  {
    if (v27 >= *(v225 + 16))
    {
      goto LABEL_151;
    }

    v35 = v27 + 1;
    v36 = (v223 + 56 * v27);
    v37 = *v36;
    v38 = v36[1];
    v39 = v36[2];
    v254 = *(v36 + 6);
    v252 = v38;
    v253 = v39;
    v251 = v37;
    v40 = *&v6[v25];
    v41 = *(v40 + 2);
    v235 = v27;
    if (v27 == v41)
    {
      swift_beginAccess();
      outlined init with copy of PathSet.Element(&v251, &v246);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v6[v25] = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 1, v40);
        *&v6[v25] = v40;
      }

      v44 = *(v40 + 2);
      v43 = *(v40 + 3);
      if (v44 >= v43 >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v40);
      }

      *(v40 + 2) = v44 + 1;
      v45 = &v40[40 * v44];
      *(v45 + 2) = 0u;
      *(v45 + 3) = 0u;
      *(v45 + 32) = 248;
      *&v6[v25] = v40;
      swift_endAccess();
    }

    else
    {
      outlined init with copy of PathSet.Element(&v251, &v246);
    }

    v46 = v251;
    v47 = 1;
    v228 = v35;
    if (!v253)
    {
      v53 = 0.0;
      v49 = *(&v251 + 1);
      v48 = *&v251;
      v51 = *(&v252 + 1);
      v50 = *&v252;
      v52 = 0.0;
      goto LABEL_38;
    }

    if (v253 == 1)
    {
      break;
    }

    if (v253 != 2)
    {
      goto LABEL_73;
    }

    v48 = *(v251 + 16);
    v49 = *(v251 + 24);
    v50 = *(v251 + 32);
    v51 = *(v251 + 40);
    v53 = *(v251 + 48);
    v52 = *(v251 + 56);
    v47 = *(v251 + 64) ^ 1;
LABEL_38:
    width = v50;
    height = v51;
    if (v53 == v52 || vabdd_f64(v53, v52) < 0.001)
    {
      goto LABEL_40;
    }

    v47 = 0;
    v23 = v211;
LABEL_73:
    v217 = v253;
    if (v253 <= 2u)
    {
      if (v253)
      {
        v218 = *(&v252 + 1);
        v219 = v252;
        v220 = *(&v251 + 1);
        v221 = v251;
        x = *(v251 + 16);
        y = *(v251 + 24);
        width = *(v251 + 32);
        height = *(v251 + 40);
        goto LABEL_88;
      }

      v220 = *(&v251 + 1);
      y = *(&v251 + 1);
      v221 = v251;
      x = *&v251;
      v218 = *(&v252 + 1);
      height = *(&v252 + 1);
      v219 = v252;
      width = *&v252;
      goto LABEL_87;
    }

    v220 = *(&v251 + 1);
    v221 = v251;
    v218 = *(&v252 + 1);
    v219 = v252;
    if (v253 == 5)
    {
      if (*(v251 + 16))
      {
        if (*(v251 + 16) == 1)
        {
          outlined init with copy of PathSet.Element(&v251, &v246);
          RBPathGetBoundingRect();
        }

        else
        {
          outlined init with copy of PathSet.Element(&v251, &v246);
          v90 = MEMORY[0x193AC3640](v46 + 24);
        }

        x = v90;
        y = v91;
        width = v92;
        height = v93;
      }

      else
      {
        v94 = *(v251 + 24);
        if (!v94)
        {
          goto LABEL_168;
        }

        v95 = v94;
        outlined init with copy of PathSet.Element(&v251, &v246);

        PathBoundingBox = CGPathGetPathBoundingBox(v95);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;

        outlined destroy of PathSet.Element(&v251);
      }

      goto LABEL_87;
    }

    if (v253 != 6)
    {
      goto LABEL_169;
    }

    outlined destroy of PathSet.Element(&v251);
    y = v197;
    x = v198;
    height = v195;
    width = v196;
LABEL_88:
    v260.origin.x = x;
    v260.origin.y = y;
    v260.size.width = width;
    v260.size.height = height;
    v261 = CGRectInset(v260, v207, v207);
    v96 = v261.origin.x;
    v97 = v261.origin.y;
    v98 = v261.size.width;
    v99 = v261.size.height;
    IsNull = CGRectIsNull(v261);
    v101 = 0.0;
    if (IsNull)
    {
      v102 = 0.0;
    }

    else
    {
      v102 = v96;
    }

    if (IsNull)
    {
      v103 = 0.0;
    }

    else
    {
      v103 = v97;
    }

    if (IsNull)
    {
      v104 = 0.0;
    }

    else
    {
      v104 = v98;
    }

    if (!IsNull)
    {
      v101 = v99;
    }

    v262 = CGRectIntegral(*(&v101 - 3));
    v105 = v262.origin.x;
    v106 = v262.origin.y;
    v107 = v262.size.width;
    v108 = v262.size.height;
    if ((v47 & ((v254 & 0x100000000) == 0)) != 0)
    {
      v109 = 0.0;
    }

    else
    {
      v109 = v210;
    }

    v110 = *(v212 + 16);
    v111 = v235;
    v216 = 5 * v235;
    if ((v110 & 1) == 0 && v227 == *v212 && v21 == v212[1] && v109 == *&v6[v204])
    {
      [v6 contentsScale];
      if (v23 == v119)
      {
        v120 = *&v6[v25];
        if (v111 >= *(v120 + 16))
        {
          goto LABEL_165;
        }

        v121 = 8 * v216;
        v122 = v120 + 8 * v216;
        v124 = *(v122 + 32);
        v123 = *(v122 + 40);
        v126 = *(v122 + 48);
        v125 = *(v122 + 56);
        v127 = *(v122 + 64);
        if (v127 <= 0xF7)
        {
          *&v241 = *(v122 + 32);
          *(&v241 + 1) = v123;
          v242 = v126;
          v243 = v125;
          v244 = v127;
          v236 = v221;
          v237 = v220;
          v238 = v219;
          v239 = v218;
          v240 = v217;
          outlined init with copy of PathSet.Element(&v251, &v246);
          outlined copy of SDFLayer.SDFElement.Contents?(v124, v123, v126, v125, v127);
          outlined copy of SDFLayer.SDFElement.Contents?(v124, v123, v126, v125, v127);
          v175 = specialized static SDFLayer.SDFElement.Contents.== infix(_:_:)(&v241, &v236);
          outlined consume of SDFLayer.SDFElement.Contents(v236, v237, v238, v239, v240);
          outlined consume of SDFLayer.SDFElement.Contents(v241, *(&v241 + 1), v242, v243, v244);
          outlined consume of SDFLayer.SDFElement.Contents?(v124, v123, v126, v125, v127);
          if (v175)
          {
            v176 = *&v6[v226];
            if (v235 >= *(v176 + 16))
            {
              goto LABEL_167;
            }

            if ((v203 & 1) == *(v176 + v121 + 65))
            {
              goto LABEL_152;
            }
          }
        }

        else
        {
          outlined init with copy of PathSet.Element(&v251, &v246);
          outlined copy of SDFLayer.SDFElement.Contents?(v124, v123, v126, v125, v127);
          outlined consume of SDFLayer.SDFElement.Contents?(v124, v123, v126, v125, v127);
          outlined consume of SDFLayer.SDFElement.Contents?(v221, v220, v219, v218, v217);
        }
      }
    }

    v112 = EnvironmentValues.init()(&v236);
    v114 = v236;
    v113 = v237;
    v115 = dword_18DDF8998[v206];
    MEMORY[0x1EEE9AC00](v112);
    *(&v194 - 8) = v105;
    *(&v194 - 7) = v106;
    *(&v194 - 6) = v107;
    *(&v194 - 5) = v108;
    *(&v194 - 4) = &v251;
    *(&v194 - 3) = v227;
    v191 = *&v21;
    LOBYTE(v192) = v222;
    BYTE1(v192) = v116;
    v193 = v109;
    v117 = [objc_opt_self() sharedDefaultDevice];
    v213 = &v194;
    v214 = v117;
    v215 = v114;
    v234 = &v194 - 10;
    if (v117)
    {
      v118 = swift_unknownObjectRetain();
    }

    else
    {
      v118 = [objc_opt_self() sharedDevice];
    }

    v231 = v118;
    type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDACA80;
    v129 = *MEMORY[0x1E69C71B8];
    *(inited + 32) = *MEMORY[0x1E69C71B8];
    *(inited + 40) = v23;
    v130 = *MEMORY[0x1E69C7198];
    *(inited + 64) = MEMORY[0x1E69E7DE0];
    *(inited + 72) = v130;
    LODWORD(v246) = v115;
    WORD2(v246) = 768;
    DWORD2(v246) = 1027;
    BYTE12(v246) = 3;
    *(inited + 80) = RasterizationOptions.resolvedColorMode.getter();
    v131 = *MEMORY[0x1E69C71A8];
    v132 = MEMORY[0x1E69E72F0];
    *(inited + 104) = MEMORY[0x1E69E72F0];
    *(inited + 112) = v131;
    *(inited + 120) = 1;
    v133 = *MEMORY[0x1E69C7188];
    *(inited + 144) = MEMORY[0x1E69E6370];
    *(inited + 152) = v133;
    *(inited + 184) = v132;
    *(inited + 160) = 0;
    v134 = v129;
    v135 = v130;
    v136 = v131;
    v137 = v133;
    v138 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23RBImageRendererPropertya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    type metadata accessor for (RBImageRendererProperty, Any)();
    swift_arrayDestroy();
    v139 = *MEMORY[0x1E69C71C0];
    v248 = MEMORY[0x1E69E6448];
    LODWORD(v246) = 2139095040;
    outlined init with take of Any(&v246, &v241);
    v140 = swift_isUniquelyReferenced_nonNull_native();
    v245 = v138;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v241, v139, v140);
    type metadata accessor for RBImageRendererProperty(0);
    lazy protocol witness table accessor for type RBImageRendererProperty and conformance RBImageRendererProperty();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v142 = swift_allocObject();
    v142[2] = v215;
    v142[3] = v113;
    v143 = v234;
    v142[4] = partial apply for closure #1 in SDFLayer.update(shape:size:in:backdropGroupID:);
    v142[5] = v143;
    v144 = swift_allocObject();
    *(v144 + 16) = partial apply for closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:);
    *(v144 + 24) = v142;
    v249 = partial apply for thunk for @callee_guaranteed (@guaranteed RBDisplayList) -> ();
    v250 = v144;
    *&v246 = MEMORY[0x1E69E9820];
    *(&v246 + 1) = 1107296256;
    v247 = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
    v248 = &block_descriptor_21;
    v145 = _Block_copy(&v246);

    v234 = [v231 renderImageInRect:isa options:v145 renderer:{0.0, 0.0, v107, v108}];
    swift_unknownObjectRelease();

    _Block_release(v145);
    swift_unknownObjectRelease();

    LOBYTE(v145) = swift_isEscapingClosureAtFileLocation();

    v24 = v227;
    if (v145)
    {
      goto LABEL_161;
    }

    v146 = *(*&v6[v26] + 16);
    if (v146)
    {
      v147 = 0;
      v148 = 0;
      v149 = v254;
      v256 = v254;
      v231 = *(&v253 + 1);
      do
      {
        swift_beginAccess();
        v150 = *&v6[v26];
        v151 = swift_isUniquelyReferenced_nonNull_native();
        *&v6[v26] = v150;
        v152 = v235;
        if ((v151 & 1) == 0)
        {
          v150 = specialized _ArrayBuffer._consumeAndCreateNew()(v150);
          *&v6[v26] = v150;
        }

        if (v148 >= *(v150 + 2))
        {
          goto LABEL_147;
        }

        v153 = &v150[v147 + 64];
        if (*v153 >> 62)
        {
          if (v152 < __CocoaSet.count.getter())
          {
LABEL_121:
            v154 = *v153;
            if ((*v153 & 0xC000000000000001) != 0)
            {
              v155 = MEMORY[0x193AC03C0](v152);
            }

            else
            {
              if (v152 >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_150;
              }

              v155 = *(v154 + 8 * v152 + 32);
            }

            goto LABEL_128;
          }
        }

        else if (v152 < *((*v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_121;
        }

        v156 = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
        [v156 setHitTestsAsFill_];
        [v156 setAnchorPoint_];
        [v156 setSDFCoordinatedAnimationDelegate];
        [*&v150[v147 + 48] addSublayer_];
        v155 = v156;
        MEMORY[0x193ABF170]();
        if (*((*v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v149 = v256;
LABEL_128:
        *&v6[v26] = v150;
        swift_endAccess();
        v157 = v155;
        [v157 setPosition_];
        [v157 setBounds_];
        [v157 setContentsScale_];
        [v157 setContents_];
        [v157 setContentsZeroValueDistance_];
        [v157 setContentsOneValueDistance_];
        [v157 setMode_];
        v158 = v233;
        if (v149)
        {
          v158 = v232;
        }

        v159 = v158;
        [v157 setOperation_];

        v160 = *&v6[v26];
        if (v148 >= *(v160 + 16))
        {
          goto LABEL_148;
        }

        ++v148;
        [v157 setHidden_];

        v147 += 40;
      }

      while (v146 != v148);
    }

    v161 = v226;
    swift_beginAccess();
    v162 = *&v6[v161];
    outlined init with copy of PathSet.Element(&v251, &v246);
    v163 = swift_isUniquelyReferenced_nonNull_native();
    *&v6[v161] = v162;
    v164 = v235;
    if ((v163 & 1) == 0)
    {
      v162 = specialized _ArrayBuffer._consumeAndCreateNew()(v162);
      *&v6[v161] = v162;
    }

    if (v164 >= *(v162 + 2))
    {
      goto LABEL_162;
    }

    v165 = v161;
    v166 = 8 * v216;
    v167 = &v162[v166];
    v168 = *&v162[8 * v216 + 32];
    v169 = *&v162[8 * v216 + 40];
    v170 = *&v162[8 * v216 + 56];
    v231 = *&v162[8 * v216 + 48];
    v171 = v220;
    *(v167 + 4) = v221;
    *(v167 + 5) = v171;
    v172 = v218;
    *(v167 + 6) = v219;
    *(v167 + 7) = v172;
    v173 = v162[v166 + 64];
    v167[64] = v217;
    *&v6[v165] = v162;
    swift_endAccess();
    outlined consume of SDFLayer.SDFElement.Contents?(v168, v169, v231, v170, v173);
    swift_beginAccess();
    v174 = swift_isUniquelyReferenced_nonNull_native();
    *&v6[v165] = v162;
    if ((v174 & 1) == 0)
    {
      v162 = specialized _ArrayBuffer._consumeAndCreateNew()(v162);
    }

    v87 = v228;
    if (v235 >= *(v162 + 2))
    {
      goto LABEL_163;
    }

    v162[v166 + 65] = v222;
    v25 = v226;
    *&v6[v226] = v162;
    swift_endAccess();
LABEL_22:
    outlined destroy of PathSet.Element(&v251);

    v27 = v87;
    if (v87 == v224)
    {
      goto LABEL_153;
    }
  }

  height = *(&v252 + 1);
  width = *&v252;
  if (vabdd_f64(*&v252, *(&v252 + 1)) >= 0.001)
  {
    v217 = 1;
    v218 = *(&v252 + 1);
    v219 = v252;
    v220 = *(&v251 + 1);
    y = *(&v251 + 1);
    v221 = v251;
    x = *&v251;
LABEL_87:
    outlined destroy of PathSet.Element(&v251);
    goto LABEL_88;
  }

  v53 = *&v252 * 0.5;
  v49 = *(&v251 + 1);
  v48 = *&v251;
LABEL_40:
  v56 = v49;
  v57 = v48;
  v257.origin.x = v48;
  v257.origin.y = v49;
  v257.size.width = width;
  v257.size.height = height;
  v58 = CGRectGetWidth(v257);
  v258.origin.x = v57;
  v258.origin.y = v56;
  v258.size.width = width;
  v258.size.height = height;
  v59 = CGRectGetHeight(v258);
  if (v59 >= v58)
  {
    v59 = v58;
  }

  v60 = v59 * 0.5;
  if (v60 >= v53)
  {
    v61 = v53;
  }

  else
  {
    v61 = v60;
  }

  v62 = v209;
  if (v47)
  {
    v62 = v208;
  }

  v234 = v62;
  v63 = *(*&v6[v26] + 16);
  v23 = v211;
  if (!v63)
  {
LABEL_67:
    v25 = v226;
    swift_beginAccess();
    v78 = *&v6[v25];
    v79 = swift_isUniquelyReferenced_nonNull_native();
    *&v6[v25] = v78;
    v80 = v235;
    if ((v79 & 1) == 0)
    {
      v78 = specialized _ArrayBuffer._consumeAndCreateNew()(v78);
      *&v6[v25] = v78;
    }

    v24 = v227;
    if (v80 < *(v78 + 2))
    {
      v81 = &v78[40 * v80];
      v82 = *(v81 + 4);
      v83 = *(v81 + 5);
      v85 = *(v81 + 6);
      v84 = *(v81 + 7);
      *(v81 + 2) = 0u;
      *(v81 + 3) = 0u;
      v86 = v81[64];
      v81[64] = -8;
      *&v6[v25] = v78;
      swift_endAccess();
      outlined consume of SDFLayer.SDFElement.Contents?(v82, v83, v85, v84, v86);
      v87 = v228;
      goto LABEL_22;
    }

    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v64 = 0;
  v65 = 0;
  v66 = v254;
  v255 = v254;
  v231 = *(&v253 + 1);
  while (1)
  {
    swift_beginAccess();
    v67 = *&v6[v26];
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *&v6[v26] = v67;
    v69 = v235;
    if ((v68 & 1) == 0)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew()(v67);
      *&v6[v26] = v67;
    }

    if (v65 >= *(v67 + 2))
    {
      break;
    }

    v70 = &v67[v64 + 64];
    if (*v70 >> 62)
    {
      if (v69 >= __CocoaSet.count.getter())
      {
LABEL_58:
        v73 = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
        [v73 setHitTestsAsFill_];
        [v73 setAnchorPoint_];
        [v73 setSDFCoordinatedAnimationDelegate];
        [*&v67[v64 + 48] addSublayer_];
        v72 = v73;
        MEMORY[0x193ABF170]();
        if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v66 = v255;
        goto LABEL_61;
      }
    }

    else if (v69 >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v71 = *v70;
    if ((*v70 & 0xC000000000000001) != 0)
    {
      v72 = MEMORY[0x193AC03C0](v69);
    }

    else
    {
      if (v69 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_149;
      }

      v72 = *(v71 + 8 * v69 + 32);
    }

LABEL_61:
    *&v6[v26] = v67;
    swift_endAccess();
    v74 = v72;
    [v74 setPosition_];
    [v74 setBounds_];
    [v74 setCornerRadius_];
    [v74 setCornerCurve_];
    [v74 setMode_];
    v75 = v233;
    if (v66)
    {
      v75 = v232;
    }

    v76 = v75;
    [v74 setOperation_];

    [v74 setGradientOvalization_];
    v77 = *&v6[v26];
    if (v65 >= *(v77 + 16))
    {
      goto LABEL_146;
    }

    ++v65;
    [v74 setHidden_];

    v64 += 40;
    if (v63 == v65)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  outlined destroy of PathSet.Element(&v251);
  v24 = v227;
LABEL_153:
  v177 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
  swift_beginAccess();
  v178 = *(*&v6[v177] + 16);
  if (v178)
  {

    v179 = (v235 + 40);
    v180 = (v199 >> 1) & 1;
    v181 = (v235 + 40);
    v182 = v200;
    do
    {
      v184 = *v181;
      v181 += 4;
      v183 = v184;
      if (v184)
      {
        v185 = *(v179 - 1);
        objc_opt_self();
        v186 = swift_dynamicCastObjCClassUnconditional();
        v187 = v183;
        v188 = v185;
        [v186 setSmoothness_];
        [v186 setMergeElements_];
      }

      v179 = v181;
      --v178;
    }

    while (v178);

    v24 = v227;
  }

  [v6 setContentsScale_];
  v189 = &v6[OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange];
  *v189 = v24;
  v189[1] = v21;
  *(v189 + 16) = 0;
  *&v6[OBJC_IVAR____TtC7SwiftUI8SDFLayer_ovalization] = v210;
  *&v241 = v23;
  return SDFLayer.finishUpdatingStyle(_:in:elementCount:backdropGroupID:)(v201, &v241, v224, v202);
}

id SDFLayer.beginUpdatingStyle(_:shapeBounds:)(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *&v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfStyle];

  v12 = styleTypesEqual(_:_:)(a1, v11);

  if ((v12 & 1) == 0)
  {
    SDFLayer.resetSDFEffects()();
    SDFLayer.makeSDFEffects(for:shapeFilter:)(a1, 0, 0);
    if (v13)
    {
      v14 = v13;
      [v5 addSublayer_];
    }

    if (v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer] == 1 && (v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup] & 1) == 0)
    {
      if (one-time initialization token for defaultContentGroup != -1)
      {
        swift_once();
      }

      SDFLayer.makeSDFEffects(for:shapeFilter:)(static SDFStyle.defaultContentGroup, 0, 0);
      if (v15)
      {
        v16 = v15;
        [v5 addSublayer_];
      }
    }
  }

  v17 = &v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds];
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  result = CGRectEqualToRect(*&v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds], v20);
  if ((result & 1) == 0)
  {
    *v17 = a2;
    v17[1] = a3;
    v17[2] = a4;
    v17[3] = a5;

    return [v5 setNeedsLayout];
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AnyShape(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnyShape and conformance AnyShape();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinearGradient(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t instantiation function for generic protocol witness table for EmptyAnimatableData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialEffectState and conformance MaterialEffectState()
{
  result = lazy protocol witness table cache variable for type MaterialEffectState and conformance MaterialEffectState;
  if (!lazy protocol witness table cache variable for type MaterialEffectState and conformance MaterialEffectState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialEffectState and conformance MaterialEffectState);
  }

  return result;
}

uint64_t initializeWithCopy for MaterialEffectState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

unint64_t lazy protocol witness table accessor for type MaterialEffectUpdatedFill and conformance MaterialEffectUpdatedFill()
{
  result = lazy protocol witness table cache variable for type MaterialEffectUpdatedFill and conformance MaterialEffectUpdatedFill;
  if (!lazy protocol witness table cache variable for type MaterialEffectUpdatedFill and conformance MaterialEffectUpdatedFill)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialEffectUpdatedFill and conformance MaterialEffectUpdatedFill);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialEffectEnvironment and conformance MaterialEffectEnvironment()
{
  result = lazy protocol witness table cache variable for type MaterialEffectEnvironment and conformance MaterialEffectEnvironment;
  if (!lazy protocol witness table cache variable for type MaterialEffectEnvironment and conformance MaterialEffectEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialEffectEnvironment and conformance MaterialEffectEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialEffectTransaction and conformance MaterialEffectTransaction()
{
  result = lazy protocol witness table cache variable for type MaterialEffectTransaction and conformance MaterialEffectTransaction;
  if (!lazy protocol witness table cache variable for type MaterialEffectTransaction and conformance MaterialEffectTransaction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialEffectTransaction and conformance MaterialEffectTransaction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init()
{
  result = lazy protocol witness table cache variable for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init;
  if (!lazy protocol witness table cache variable for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init);
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9_ShapeSetV7WrapperV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    memset(&v10[6], 0, 36);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeSet.Wrapper>, lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ShapeSet.Wrapper> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeSet.Wrapper>, lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeSet.Wrapper>, lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper()
{
  result = lazy protocol witness table cache variable for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper;
  if (!lazy protocol witness table cache variable for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewTraitKeys(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t instantiation function for generic protocol witness table for _AnyAnimatableData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData()
{
  result = lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData;
  if (!lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData;
  if (!lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData;
  if (!lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData);
  }

  return result;
}

uint64_t assignWithCopy for GlassEffectGroupModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  return a1;
}

void *assignWithCopy for GlassEffectIDModifier(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t assignWithCopy for GlassEffectModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t storeEnumTagSinglePayload for LinearGradient(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *assignWithCopy for ViewTransform(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  return a1;
}

uint64_t Element.deinit()
{
  v1 = *v0;
  v2 = AnyElement.deinit();
  (*(*(*(v1 + 128) - 8) + 8))(v2 + *(*v2 + 152));
  return v2;
}

uint64_t Element.__deallocating_deinit()
{
  Element.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnyElement.deinit()
{

  while (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;

    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v1 = v2;
    if ((isUniquelyReferenced_native & 1) == 0)
    {

      break;
    }
  }

  v4 = *(v0 + 16);
  *(v0 + 16) = 0;

  if (v4)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v5 = *(v4 + 16);
      swift_retain_n();

      v4 = v5;
    }

    while (v5);
  }

  return v0;
}

uint64_t CoordinateSpaceNode.deinit()
{

  while (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;

    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v1 = v2;
    if ((isUniquelyReferenced_native & 1) == 0)
    {

      break;
    }
  }

  outlined destroy of CoordinateSpace(v0 + 24);
  v4 = *(v0 + 16);
  *(v0 + 16) = 0;

  if (v4)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v5 = *(v4 + 16);
      swift_retain_n();

      v4 = v5;
    }

    while (v5);
  }

  return v0;
}

uint64_t CoordinateSpaceNode.__deallocating_deinit()
{
  CoordinateSpaceNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t CoreInteractionRepresentableEffect.updatePlatformGroup(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v66 = type metadata accessor for UncheckedSendable();
  v7 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v54 - v8;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v54 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = *a1;
  v62 = a2;
  v67 = *(a2 + 24);
  v68 = &v54 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v60 = AssociatedTypeWitness;
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v69;
    (*(v10 + 16))(v12, v3, v9);
    if ((*(v13 + 48))(v12, 1, v6) == 1)
    {
      swift_unknownObjectRelease();
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      v56 = v13;
      (*(v13 + 32))(v68, v12, v6);
      v63 = v6;
      v21 = v60;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v23 = *(AssociatedConformanceWitness + 32);
      v58 = AssociatedConformanceWitness;
      v59 = v20;
      v23(&v70, v21);
      v24 = v70;
      v25 = *(v70 + 16);
      v26 = v7;
      if (v25)
      {
        v70 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
        v27 = v70;
        v28 = *(v70 + 16);
        v29 = 32;
        do
        {
          v30 = *(v24 + v29);
          v70 = v27;
          v31 = *(v27 + 24);
          if (v28 >= v31 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v28 + 1, 1);
            v27 = v70;
          }

          *(v27 + 16) = v28 + 1;
          *(v27 + 8 * v28 + 32) = v30;
          v29 += 16;
          ++v28;
          --v25;
        }

        while (v25);
      }

      else
      {

        v27 = MEMORY[0x1E69E7CC0];
      }

      v32 = *(v3 + *(v62 + 36));
      v33 = v32[2];
      v34 = MEMORY[0x1E69E7CC0];
      v55 = v3;
      if (v33)
      {
        v70 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
        v34 = v70;
        v35 = v32 + 4;
        v36 = *(v70 + 16);
        do
        {
          v37 = *v35;
          v70 = v34;
          v38 = *(v34 + 24);
          if (v36 >= v38 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v36 + 1, 1);
            v34 = v70;
          }

          *(v34 + 16) = v36 + 1;
          *(v34 + 8 * v36 + 32) = v37;
          v35 += 2;
          ++v36;
          --v33;
        }

        while (v33);
      }

      LODWORD(v62) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSO_Tt1g5(v27, v34);

      v39 = v32[2];
      if (v39)
      {
        v61 = type metadata accessor for MainActor();
        v57 = v58 + 56;
        v40 = (v56 + 16);
        v41 = (v26 + 8);
        v42 = v32 + 5;
        do
        {
          v48 = *(v42 - 1);
          v49 = *v42;
          if (v62)
          {
            swift_unknownObjectRetain();
          }

          else
          {
            v50 = v58;
            v51 = *(v58 + 56);
            v52 = swift_unknownObjectRetain();
            v51(v52, v60, v50);
          }

          v42 += 2;
          v43 = v63;
          v44 = v64;
          (*v40)(v64, v68, v63);
          v45 = v65;
          v46 = UncheckedSendable.init(_:)(v44, v43, v65);
          MEMORY[0x1EEE9AC00](v46);
          v47 = v67;
          *(&v54 - 6) = v43;
          *(&v54 - 5) = v47;
          *(&v54 - 4) = v45;
          *(&v54 - 3) = v48;
          *(&v54 - 2) = v49;
          specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #3 in CoreInteractionRepresentableEffect.updatePlatformGroup(_:), (&v54 - 8));
          swift_unknownObjectRelease();
          (*v41)(v45, v66);
          --v39;
        }

        while (v39);
      }

      v53 = v63;
      $defer #1 <A>() in CoreInteractionRepresentableEffect.updatePlatformGroup(_:)(v59, v55);
      swift_unknownObjectRelease();
      return (*(v56 + 8))(v68, v53);
    }
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 32 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

unint64_t styleTypesEqual(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 60;
  if ((a1 >> 60) <= 4)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (a2 >> 60 != 1)
        {
          return 0;
        }
      }

      else if (a2 >> 60)
      {
        return 0;
      }

      return 1;
    }

    if (v2 == 2)
    {
      return a2 >> 60 == 2;
    }

    if (v2 != 3)
    {
      if (a2 >> 60 == 4)
      {
        return **((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == **((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      }

      return 0;
    }

    return a2 >> 60 == 3;
  }

  if (v2 <= 7)
  {
    if (v2 == 5)
    {
      if (a2 >> 60 != 5)
      {
        return 0;
      }
    }

    else if (v2 == 6)
    {
      if (a2 >> 60 != 6)
      {
        return 0;
      }
    }

    else if (a2 >> 60 != 7)
    {
      return 0;
    }

    return 1;
  }

  if (v2 != 8)
  {
    if (v2 == 9)
    {
      if (a2 >> 60 == 9)
      {
        v4 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v5 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

        if (styleTypesEqual(_:_:)(v4, v5))
        {
          v7 = styleTypesEqual(_:_:)(v3, v6);

          return v7 & 1;
        }
      }

      return 0;
    }

    return a2 >> 60 == 10;
  }

  if (a2 >> 60 != 8)
  {
    return 0;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v27 = v10;
  v24 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v25 = v11;
  if ((specialized static Material.Layer.SDFLayer.GroupType.== infix(_:_:)(&v26, &v24) & 1) == 0)
  {
    return 0;
  }

  v23 = *(v9 + 16);
  if (v23 != *(v12 + 16))
  {
    return 0;
  }

  v13 = 0;
  v14 = (v9 + 64);
  v15 = (v12 + 64);
  while (1)
  {
    if (v23 == v13)
    {
LABEL_46:

      return 1;
    }

    if (v13 >= *(v9 + 16))
    {
      break;
    }

    v16 = *(v12 + 16);
    if (v13 == v16)
    {
      goto LABEL_46;
    }

    if (v13++ >= v16)
    {
      goto LABEL_48;
    }

    if (*(v14 - 1) == *(v15 - 1) && *v14 == *v15)
    {
      v17 = *(v14 - 4);
      v18 = *(v14 - 3);
      v14 += 7;
      v19 = v15 + 7;
      v20 = *(v15 - 4);
      v21 = *(v15 - 3);

      outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v18);

      outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v21);
      v22 = styleTypesEqual(_:_:)(v17, v20);

      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v21);

      result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v18);
      v15 = v19;
      if (v22)
      {
        continue;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t specialized static Material.Layer.SDFLayer.GroupType.== infix(_:_:)(unint64_t *a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (!(v3 >> 6))
  {
    return v5 < 0x40 && *&v2 == *&v4;
  }

  v6 = a1[1];
  v7 = *(a2 + 1);
  if (v3 >> 6 != 1)
  {
    if (v6 | v2 || v3 != 128)
    {
      v12 = v2 == 1 && v6 == 0;
      if (v12 && v3 == 128)
      {
        if ((v5 & 0xC0) == 0x80 && *&v4 == 1 && !v7 && v5 == 128)
        {
          return 1;
        }
      }

      else if (v2 == 2 && !v6 && v3 == 128)
      {
        if ((v5 & 0xC0) == 0x80 && *&v4 == 2 && !v7 && v5 == 128)
        {
          return 1;
        }
      }

      else if ((v5 & 0xC0) == 0x80 && *&v4 == 3 && !v7 && v5 == 128)
      {
        return 1;
      }
    }

    else
    {
      v10 = v7 | *&v4;
      v11 = (v5 & 0xC0) == 0x80 && v10 == 0;
      if (v11 && v5 == 128)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((v5 & 0xC0) != 0x40)
  {
    return 0;
  }

  v8 = (COERCE_FLOAT(*a1) == *&v4) & (HIDWORD(v2) ^ ((*&v4 & 0x100000000) == 0)) & ((v2 >> 40) & 1 ^ ((*&v4 & 0x10000000000) == 0)) & (HIWORD(v2) ^ ((*&v4 & 0x1000000000000) == 0));
  if (*(a1 + 1) != a2[1])
  {
    v8 = 0;
  }

  return v8 & (v5 ^ v3 ^ 1);
}

unint64_t SDFStyle.distanceRange.getter(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 4)
  {
LABEL_7:
    if (v1 <= 1)
    {
      goto LABEL_24;
    }

    if (v1 == 2)
    {
      goto LABEL_27;
    }

    if (v1 != 3)
    {
      goto LABEL_49;
    }

    LODWORD(v1) = result;
    v4 = *((result & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v5 = 0.0;
    if (*((result & 0xFFFFFFFFFFFFFFFLL) + 0x30) >= 0.0)
    {
      v5 = *((result & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    }

    v6 = -v4;
    if (v5 * 3.0 - v4 >= -v4)
    {
      goto LABEL_36;
    }

    __break(1u);
LABEL_14:
    if (v1 == 8)
    {
      v27 = *(*((result & 0xFFFFFFFFFFFFFFFLL) + 0x28) + 16);
      if (v27)
      {
        v9 = 0.0;
        v28 = 0.0;
        v29 = ( + 40);
        v30 = 1;
        do
        {
          v31 = *(v29 - 1);
          v32 = *v29;

          outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v32);
          v33 = COERCE_DOUBLE(SDFStyle.distanceRange.getter(v31));
          v35 = v34;
          v37 = v36;

          outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v32);
          if ((v37 & 1) == 0)
          {
            v38 = v33;
            v39 = v35;
            if ((v30 & 1) == 0)
            {
              if (v33 >= v9)
              {
                v38 = v9;
              }

              if (v28 > v35)
              {
                v39 = v28;
              }

              if (v38 > v39)
              {
                __break(1u);
                goto LABEL_49;
              }
            }

            v30 = 0;
            v9 = v38;
            v28 = v39;
          }

          v29 += 7;
          --v27;
        }

        while (v27);

        return *&v9;
      }

      goto LABEL_49;
    }

    if (v1 != 9)
    {
      v9 = *((result & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      return *&v9;
    }

    v7 = *((result & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((result & 0xFFFFFFFFFFFFFFFLL) + 0x18);

    v9 = COERCE_DOUBLE(SDFStyle.distanceRange.getter(v7));
    v11 = v10;
    v13 = v12;
    v14 = COERCE_DOUBLE(SDFStyle.distanceRange.getter(v8));
    v16 = v15;
    v18 = v17;

    if (v18)
    {
      return *&v9;
    }

    v3 = v14;
    v19 = v16;
    if (v13)
    {
      goto LABEL_57;
    }

    if (v14 >= v9)
    {
      v3 = v9;
    }

    if (v11 > v16)
    {
      v19 = v11;
    }

    if (v3 <= v19)
    {
      goto LABEL_57;
    }

    __break(1u);
LABEL_24:
    if (!v1)
    {
      v20 = *(result + 16);
      v6 = -1.0 - v20;
      if (-1.0 - v20 <= 1.0 - v20)
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_27:
      v21 = *((result & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v22 = *(v21 + 16);
      if (v22)
      {
        v6 = *(v21 + 32);
        v23 = *(v21 + 32 + 8 * v22 - 8);
        if (v6 <= v23)
        {
          if (v6 > v23 + 1.0)
          {
            __break(1u);
            goto LABEL_31;
          }

LABEL_36:
          v9 = v6;
          return *&v9;
        }
      }

LABEL_49:
      v9 = 0.0;
      return *&v9;
    }

    v40 = *((result & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v41 = *((result & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    if (v41 < 0.0)
    {
      v41 = 0.0;
    }

    v42 = v41 * 0.5 + 1.0;
    v3 = -v40 - v42;
    if (v3 > v42 - v40)
    {
      __break(1u);
LABEL_54:
      v43 = -*((result & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v3 = v43 - fabs(*((result & 0xFFFFFFFFFFFFFFFLL) + 0x48));
      v44 = v43 - fabs(*((result & 0xFFFFFFFFFFFFFFFLL) + 0x80));
      if (v44 < v3)
      {
        v3 = v44;
      }

      if (v3 > v43)
      {
        goto LABEL_62;
      }
    }

LABEL_57:
    v9 = v3;
    return *&v9;
  }

  if (v1 > 7)
  {
    goto LABEL_14;
  }

  if (v1 != 5)
  {
    if (v1 != 6)
    {
      goto LABEL_54;
    }

    LODWORD(v1) = result;
    v2 = -*((result & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v3 = v2 - fabs(*((result & 0xFFFFFFFFFFFFFFFLL) + 0x30));
    if (v3 <= v2)
    {
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_31:
  v24 = *((result & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  v25 = -*((result & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v6 = v25 - fabs(*((result & 0xFFFFFFFFFFFFFFFLL) + 0x18));
  if (-1.0 - v24 < v6)
  {
    v6 = -1.0 - v24;
  }

  v26 = 1.0 - v24;
  if (1.0 - v24 < v25)
  {
    v26 = -*((result & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  if (v6 <= v26)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

unint64_t SDFStyle.needsDistanceGradient.getter(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) <= 4)
  {
    v4 = 0;
    return v4 & 1;
  }

  if (v1 < 8)
  {
    goto LABEL_7;
  }

  if (v1 == 8)
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v7 = *(v6 + 16);

    v4 = 0;
    if (!v7)
    {
LABEL_17:

      return v4 & 1;
    }

    v8 = 0;
    v9 = (v6 + 40);
    while (v8 < *(v6 + 16))
    {
      if (v4)
      {
        v4 = 1;
      }

      else
      {
        v11 = *(v9 - 1);
        v10 = *v9;

        outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v10);
        v4 = SDFStyle.needsDistanceGradient.getter(v11);

        result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v10);
      }

      ++v8;
      v9 += 7;
      if (v7 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    return result;
  }

  if (v1 != 9)
  {
LABEL_7:
    v4 = 1;
    return v4 & 1;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

  if (SDFStyle.needsDistanceGradient.getter(v2))
  {

    goto LABEL_7;
  }

  v12 = SDFStyle.needsDistanceGradient.getter(v3);

  return v12 & 1;
}

uint64_t outlined copy of SDFLayer.SDFElement.Contents?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xF7u)
  {
    return outlined copy of SDFLayer.SDFElement.Contents(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t outlined consume of SDFLayer.SDFElement.Contents?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xF7u)
  {
    return outlined consume of SDFLayer.SDFElement.Contents(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSO_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t $defer #1 <A>() in CoreInteractionRepresentableEffect.updatePlatformGroup(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + *(type metadata accessor for CoreInteractionRepresentableEffect() + 36));
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 40);

  v4 = swift_checkMetadataState();
  return v3(&v6, v4, AssociatedConformanceWitness);
}

uint64_t static _OffsetEffect._makeView(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v36 = *(a2 + 32);
  v37 = v4;
  v5 = *(a2 + 48);
  v38 = *(a2 + 64);
  v6 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v6;
  v33 = v35[0];
  v34 = v6;
  v32[0] = *(a2 + 36);
  v7 = *a1;
  v39 = *(a2 + 80);
  *(v32 + 12) = v5;
  v15 = *(a2 + 68);
  v8 = v36;
  v9 = v38;
  outlined init with copy of _ViewInputs(v35, v27);
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v10 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v11 = specialized CachedEnvironment.attribute<A>(id:_:)(v10);
  swift_endAccess();
  *&v27[0] = __PAIR64__(v9, v7);
  DWORD2(v27[0]) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for CGPoint(0);
  lazy protocol witness table accessor for type OffsetPosition and conformance OffsetPosition();
  LODWORD(v10) = Attribute.init<A>(body:value:flags:update:)();
  v12 = v8 | 8;
  v22[0] = v33;
  v22[1] = v34;
  *v23 = v12;
  *&v23[16] = *(v32 + 12);
  *&v23[4] = v32[0];
  *v24 = v10;
  *&v24[4] = v15;
  v18 = *v23;
  v19 = *&v23[16];
  v20 = *v24;
  v21 = HIDWORD(v15);
  v16 = v33;
  v17 = v34;
  v13 = outlined init with copy of _ViewInputs(v22, v27);
  a3(v13, &v16);
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v26 = v21;
  v25[0] = v16;
  v25[1] = v17;
  outlined destroy of _ViewInputs(v25);
  v27[0] = v33;
  v27[1] = v34;
  v28 = v12;
  *v29 = v32[0];
  *&v29[12] = *(v32 + 12);
  v30 = v10;
  v31 = v15;
  return outlined destroy of _ViewInputs(v27);
}

unint64_t lazy protocol witness table accessor for type OffsetPosition and conformance OffsetPosition()
{
  result = lazy protocol witness table cache variable for type OffsetPosition and conformance OffsetPosition;
  if (!lazy protocol witness table cache variable for type OffsetPosition and conformance OffsetPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OffsetPosition and conformance OffsetPosition);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8MaterialVACE5LayerV8SDFLayerV05GroupE0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v73 = v11;
  v74 = v10;
  v75 = v9;
  v76 = v8;
  v77 = v7;
  v78 = v6;
  v79 = v5;
  v80 = v4;
  v81 = v2;
  v82 = v3;
  v13 = (a1 + 32);
  v14 = (a2 + 32);
  for (i = v12 - 1; ; --i)
  {
    v16 = v13[1];
    v67 = *v13;
    *v68 = v16;
    *&v68[16] = v13[2];
    v69 = *(v13 + 12);
    v17 = v67;
    v18 = v14[1];
    v70 = *v14;
    v19 = v14[2];
    *v71 = v18;
    *&v71[16] = v19;
    v72 = *(v14 + 12);
    v20 = v70;
    outlined init with copy of Material.Layer.SDFLayer.GroupLayer(&v67, v66);
    outlined init with copy of Material.Layer.SDFLayer.GroupLayer(&v70, v66);
    if ((static SDFStyle.== infix(_:_:)(v17, v20) & 1) == 0)
    {
      break;
    }

    v21 = *(&v67 + 1);
    v22 = *(&v70 + 1);
    v23 = *(&v70 + 1) >> 62;
    if (*(&v67 + 1) >> 62)
    {
      if (*(&v67 + 1) >> 62 == 1)
      {
        if (v23 != 1)
        {
          goto LABEL_43;
        }
      }

      else if (v23 != 2)
      {
LABEL_43:
        outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*(&v70 + 1));
        v33 = v21;
LABEL_46:
        outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v33);
        outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v21);
        outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v22);
        break;
      }

      v62 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x1C);
      v63 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v60 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x24);
      v61 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v58 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x2C);
      v59 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v57 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v55 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
      v53 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v51 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x3C);
      v49 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v47 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x44);
      v45 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
      v43 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x4C);
      v41 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v39 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x54);
      v37 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x58);
      v35 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x5C);
      v24 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x14);
      v25 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x14);
      v64 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x1C);
      v28 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v29 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x24);
      v30 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v31 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x2C);
      v56 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v54 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
      v52 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v50 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x3C);
      v48 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v46 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x44);
      v44 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
      v42 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x4C);
      v40 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v38 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x54);
      v36 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x58);
      v34 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x5C);
      outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*(&v70 + 1));
      outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v21);
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v21);
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v22);
      outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v70);
      outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v67);
      if (v65 != v64 || v24 != v25 || v63 != v27 || v62 != v26 || v61 != v28 || v60 != v29 || v59 != v30 || v58 != v31 || v57 != v56 || v55 != v54 || v53 != v52 || v51 != v50 || v49 != v48 || v47 != v46 || v45 != v44 || v43 != v42 || v41 != v40 || v39 != v38 || v37 != v36 || v35 != v34)
      {
        return 0;
      }
    }

    else
    {
      if (v23)
      {
        v33 = *(&v70 + 1);
        goto LABEL_46;
      }

      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(&v67 + 1));
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v22);
      outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v70);
      outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v67);
      if (v21 != v22)
      {
        return 0;
      }
    }

    if (*v68 != *v71 || *&v68[8] != *&v71[8] || *&v68[24] != *&v71[24] || *&v68[28] != *&v71[28] || v69 != v72)
    {
      return 0;
    }

    if (!i)
    {
      return 1;
    }

    v14 = (v14 + 56);
    v13 = (v13 + 56);
  }

  outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v70);
  outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v67);
  return 0;
}

uint64_t specialized static SDFStyle.Group.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v5 = a1[3];
  v4 = a1[4];
  v6 = *a2;
  v7 = *(a2 + 16);
  v9 = a2[3];
  v8 = a2[4];
  if (!(v3 >> 6))
  {
    if (v7 > 0x3F || *&v2 != *&v6)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v10 = a1[1];
  v11 = a2[1];
  if (v3 >> 6 != 1)
  {
    if (v10 | v2 || v3 != 128)
    {
      v15 = v2 == 1 && v10 == 0;
      if (v15 && v3 == 128)
      {
        if ((v7 & 0xC0) != 0x80 || v6 != 1)
        {
          return 0;
        }
      }

      else if (v2 == 2 && !v10 && v3 == 128)
      {
        if ((v7 & 0xC0) != 0x80 || v6 != 2)
        {
          return 0;
        }
      }

      else if ((v7 & 0xC0) != 0x80 || v6 != 3)
      {
        return 0;
      }

      if (v11)
      {
        return 0;
      }
    }

    else
    {
      v13 = v11 | v6;
      if ((v7 & 0xC0) != 0x80 || v13 != 0)
      {
        return 0;
      }
    }

    if (v7 == 128)
    {
      goto LABEL_38;
    }

    return 0;
  }

  if ((v7 & 0xC0) != 0x40)
  {
    return 0;
  }

  v23 = *a1;
  v24 = BYTE4(v2) & 1;
  v25 = BYTE5(v2) & 1;
  v26 = BYTE6(v2) & 1;
  v27 = v10;
  v28 = v3 & 1;
  v17 = v6;
  v18 = BYTE4(v6) & 1;
  v19 = BYTE5(v6) & 1;
  v20 = BYTE6(v6) & 1;
  v21 = v11;
  v22 = v7 & 1;
  if ((specialized static Material.Layer.SDFLayer.BackdropLayer.== infix(_:_:)(&v23, &v17) & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8MaterialVACE5LayerV8SDFLayerV05GroupE0V_Tt1g5(v5, v9) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14GraphicsFilterO_Tt1g5(v4, v8);
}

uint64_t static SDFStyle.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 60;
  if ((a1 >> 60) <= 4)
  {
    if (v2 <= 1)
    {
      v16 = a2 >> 60;
      if (v2)
      {
        if (v16 != 1)
        {
          goto LABEL_58;
        }

        v29 = ~vaddvq_s32(vandq_s8(vceqq_f32(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20)), xmmword_18DDA9F30)) & 0xF;
        v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && v29 == 0;
        v31 = v30 && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        if (!v31 || *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v16)
        {
          goto LABEL_58;
        }

        v17 = ~vaddvq_s32(vandq_s8(vceqq_f32(*(a1 + 24), *(a2 + 24)), xmmword_18DDA9F30)) & 0xF;
        v18 = *(a1 + 16) == *(a2 + 16) && v17 == 0;
        if (!v18 || *(a1 + 40) != *(a2 + 40))
        {
          goto LABEL_58;
        }
      }

      goto LABEL_48;
    }

    if (v2 == 2)
    {
      if (a2 >> 60 != 2)
      {
        goto LABEL_58;
      }

      v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v21 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v22 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorVACE11ResolvedHDRV_Tt1g5(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v20, v21) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(v19, v22) & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_48;
    }

    if (v2 == 3)
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v41 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *v42 = v8;
      *&v42[16] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      *&v42[26] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x3A);
      if (a2 >> 60 == 3)
      {
        v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v47 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *v48 = v9;
        *&v48[16] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        *&v48[26] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x3A);
        v7 = specialized static SDFStyle.Shadow.== infix(_:_:)(&v41, &v47);
        return v7 & 1;
      }
    }

    else if (a2 >> 60 == 4)
    {
      v25 = *(**((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 112);

      v27 = v25(v26);

      return v27 & 1;
    }

LABEL_58:
    v7 = 0;
    return v7 & 1;
  }

  if (v2 > 7)
  {
    if (v2 == 8)
    {
      if (a2 >> 60 == 8)
      {
        v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v24 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v48[0] = v23;
        *&v48[8] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v41 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v42[0] = v24;
        *&v42[8] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v7 = specialized static SDFStyle.Group.== infix(_:_:)(&v47, &v41);
        return v7 & 1;
      }

      goto LABEL_58;
    }

    v10 = a2 >> 60;
    if (v2 != 9)
    {
      if (v10 == 10)
      {
        v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
        {
          v40 = 0;
        }

        v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20) && v40;
        return v7 & 1;
      }

      goto LABEL_58;
    }

    if (v10 == 9)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

      if ((static SDFStyle.== infix(_:_:)(v12, v13) & 1) == 0)
      {

        goto LABEL_58;
      }

      v15 = static SDFStyle.== infix(_:_:)(v11, v14);

      if ((v15 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_48:
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_58;
  }

  if (v2 == 5)
  {
    if (a2 >> 60 == 5)
    {
      v7 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10)), vceqq_f64(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20))))) & (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30));
      return v7 & 1;
    }

    goto LABEL_58;
  }

  if (v2 != 6)
  {
    if (a2 >> 60 == 7)
    {
      v32 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v44 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v45 = v32;
      v46 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v33 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      *&v42[16] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      *&v42[32] = v33;
      v34 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      *&v42[48] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v43 = v34;
      v35 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v41 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *v42 = v35;
      v36 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v50 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v51 = v36;
      v52 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      *&v48[16] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      *&v48[32] = v37;
      v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      *&v48[48] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v49 = v38;
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *v48 = v39;
      v7 = specialized static Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.== infix(_:_:)(&v47, &v41);
      return v7 & 1;
    }

    goto LABEL_58;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  *&v42[16] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  *&v42[32] = v3;
  *&v42[41] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
  v4 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v41 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  *v42 = v4;
  if (a2 >> 60 != 6)
  {
    goto LABEL_58;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  *&v48[16] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  *&v48[32] = v5;
  *&v48[41] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
  v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v47 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  *v48 = v6;
  v7 = specialized static SDFStyle.GlassHighlight.== infix(_:_:)(&v41, &v47);
  return v7 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14GraphicsFilterO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v49 = v2;
  v50 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v36 = v5[4];
    v37 = v8;
    v38[0] = v5[6];
    v9 = v38[0];
    *(v38 + 12) = *(v5 + 108);
    v10 = v5[1];
    v33[0] = *v5;
    v33[1] = v10;
    v11 = v5[3];
    v34 = v5[2];
    v35 = v11;
    v26 = v33[0];
    v27 = v10;
    v28 = v34;
    v29 = v11;
    v30 = v36;
    v31 = v8;
    v32[0] = v9;
    *(v32 + 12) = *(v38 + 12);
    v12 = v6[5];
    v42 = v6[4];
    v43 = v12;
    v44[0] = v6[6];
    v13 = v44[0];
    *(v44 + 12) = *(v6 + 108);
    v14 = v6[1];
    v39[0] = *v6;
    v39[1] = v14;
    v15 = v6[3];
    v40 = v6[2];
    v41 = v15;
    v19 = v39[0];
    v20 = v14;
    v21 = v40;
    v22 = v15;
    v23 = v42;
    v24 = v12;
    v25[0] = v13;
    *(v25 + 12) = *(v44 + 12);
    outlined init with copy of GraphicsFilter(v33, v18);
    outlined init with copy of GraphicsFilter(v39, v18);
    v16 = specialized static GraphicsFilter.== infix(_:_:)(&v26, &v19);
    v45[4] = v23;
    v45[5] = v24;
    v46[0] = v25[0];
    *(v46 + 12) = *(v25 + 12);
    v45[0] = v19;
    v45[1] = v20;
    v45[2] = v21;
    v45[3] = v22;
    outlined destroy of GraphicsFilter(v45);
    v47[4] = v30;
    v47[5] = v31;
    v48[0] = v32[0];
    *(v48 + 12) = *(v32 + 12);
    v47[0] = v26;
    v47[1] = v27;
    v47[2] = v28;
    v47[3] = v29;
    outlined destroy of GraphicsFilter(v47);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 8;
    v6 += 8;
  }

  return 1;
}

uint64_t specialized static GraphicsFilter.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v156 = a1[4];
  v157 = v3;
  v4 = a1[5];
  v158[0] = a1[6];
  *(v158 + 12) = *(a1 + 108);
  v5 = a1[1];
  v152 = *a1;
  v153 = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v154 = a1[2];
  v155 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v161 = a2[2];
  v162 = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v159 = v9;
  v160 = v12;
  *(v165 + 12) = *(a2 + 108);
  v15 = a2[5];
  v165[0] = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v163 = a2[4];
  v164 = v17;
  v18 = a1[2];
  v166[3] = a1[3];
  v166[2] = v18;
  v19 = a1[1];
  v166[0] = *a1;
  v166[1] = v19;
  *(v167 + 12) = *(a1 + 108);
  v20 = a1[4];
  v166[5] = a1[5];
  v166[4] = v20;
  v167[4] = v13;
  v167[3] = v10;
  v167[0] = a1[6];
  v167[2] = v14;
  *(v168 + 12) = *(a2 + 108);
  v168[0] = a2[6];
  v167[7] = v15;
  v167[5] = v16;
  v167[6] = v163;
  v169[2] = v154;
  v169[3] = v2;
  v169[0] = v8;
  v169[1] = v7;
  v21 = a1[6];
  *&v170[12] = *(a1 + 108);
  v169[5] = v4;
  *v170 = v21;
  v169[4] = v156;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v169))
  {
    case 1u:
      v57 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 1)
      {
        v58 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
        v143 = *(v57 + 64);
        *v144 = *(v57 + 80);
        *&v144[16] = *(v57 + 96);
        *&v144[28] = *(v57 + 108);
        v140 = *v57;
        v141 = *(v57 + 16);
        *v142 = *(v57 + 32);
        *&v142[16] = *(v57 + 48);
        v132 = *(v58 + 64);
        *v133 = *(v58 + 80);
        *&v133[16] = *(v58 + 96);
        *&v133[28] = *(v58 + 108);
        v129 = *v58;
        v130 = *(v58 + 16);
        *v131 = *(v58 + 32);
        *&v131[16] = *(v58 + 48);
        outlined init with copy of GraphicsFilter(&v159, v124);
        outlined init with copy of GraphicsFilter(&v152, v124);
        outlined init with copy of GraphicsFilter(&v159, v124);
        outlined init with copy of GraphicsFilter(&v152, v124);
        v59 = specialized static VariableBlurStyle.== infix(_:_:)(&v140, &v129);
        goto LABEL_55;
      }

      v143 = v156;
      *v144 = v157;
      *&v144[16] = v158[0];
      *&v144[28] = *(v158 + 12);
      v140 = v152;
      v141 = v153;
      *v142 = v154;
      *&v142[16] = v155;
      v103 = _s7SwiftUI14GraphicsFilterOWOj6_(&v140);
      outlined init with copy of VariableBlurStyle(v103, &v129);
      goto LABEL_75;
    case 2u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 2)
      {
        goto LABEL_45;
      }

      goto LABEL_28;
    case 3u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 3)
      {
        goto LABEL_45;
      }

LABEL_28:
      v143 = v156;
      *v144 = v157;
      *&v144[16] = v158[0];
      *&v144[28] = *(v158 + 12);
      v140 = v152;
      v141 = v153;
      *v142 = v154;
      *&v142[16] = v155;
      v52 = _s7SwiftUI14GraphicsFilterOWOj6_(&v140);
      outlined init with copy of GraphicsFilter.DisplacementMap(v52, &v129);
      goto LABEL_75;
    case 4u:
      v47 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 4)
      {
        goto LABEL_75;
      }

      v48 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v140 = *v47;
      v141 = *(v47 + 16);
      *v142 = *(v47 + 32);
      *&v142[13] = *(v47 + 45);
      v129 = *v48;
      v130 = *(v48 + 16);
      *v131 = *(v48 + 32);
      *&v131[13] = *(v48 + 45);
      v45 = specialized static ResolvedShadowStyle.== infix(_:_:)(&v140, &v129);
      return v45 & 1;
    case 5u:
      v68 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v111 = *(v68 + 48);
      v112 = *(v68 + 32);
      v115 = *(v68 + 16);
      v121 = *v68;
      v69 = *(v68 + 64);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 5)
      {
        goto LABEL_75;
      }

      v70 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v71 = *(v70 + 64);
      v109 = *(v70 + 16);
      v110 = *v70;
      v107 = *(v70 + 48);
      v108 = *(v70 + 32);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v35 = v69 == v71;
      v36 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v121, v110), vceqq_f64(v115, v109)), vuzp1q_s32(vceqq_f64(v112, v108), vceqq_f64(v111, v107)))));
      goto LABEL_43;
    case 6u:
      v77 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 6)
      {
        goto LABEL_75;
      }

      v78 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v130 = *(v77 + 16);
      *v131 = *(v77 + 32);
      *&v131[16] = *(v77 + 48);
      v132 = *(v77 + 64);
      v129 = *v77;
      v141 = *(v78 + 16);
      *v142 = *(v78 + 32);
      *&v142[16] = *(v78 + 48);
      v143 = *(v78 + 64);
      v140 = *v78;
      if ((specialized static _ColorMatrix.== infix(_:_:)(&v129, &v140) & 1) == 0)
      {
        goto LABEL_77;
      }

      v45 = *(v77 + 80) ^ *(v78 + 80) ^ 1;
      return v45 & 1;
    case 7u:
      v53 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v120 = *v53;
      v54 = *(v53 + 16);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 7)
      {
        goto LABEL_75;
      }

      v55 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v56 = *(v55 + 16);
      v114 = *v55;
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      if (vminv_u16(vmovn_s32(vceqq_f32(v120, v114))))
      {
        goto LABEL_31;
      }

      goto LABEL_77;
    case 8u:
      v90 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v122 = *v90;
      v54 = *(v90 + 16);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 8)
      {
        goto LABEL_75;
      }

      v91 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v56 = *(v91 + 16);
      v116 = *v91;
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      if ((vminv_u16(vmovn_s32(vceqq_f32(v122, v116))) & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_31:
      if (v54 != v56)
      {
        goto LABEL_77;
      }

      goto LABEL_47;
    case 9u:
      v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 9)
      {
        goto LABEL_75;
      }

      goto LABEL_57;
    case 0xAu:
      v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 10)
      {
        goto LABEL_57;
      }

      goto LABEL_75;
    case 0xBu:
      v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 11)
      {
        goto LABEL_75;
      }

      goto LABEL_57;
    case 0xCu:
      v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 12)
      {
        goto LABEL_75;
      }

      goto LABEL_57;
    case 0xDu:
      v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 13)
      {
        goto LABEL_75;
      }

LABEL_57:
      v89 = *_s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v45 = v46 == v89;
      return v45 & 1;
    case 0xEu:
      v37 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v38 = *v37;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      v41 = *(v37 + 24);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 14)
      {
        goto LABEL_75;
      }

      v42 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v43 = *(v42 + 24);
      v119 = *v42;
      v44 = *(v42 + 16);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v140.i64[0] = v38;
      v140.i64[1] = v39;
      *&v141 = v40;
      DWORD2(v141) = v41;
      v129 = v119;
      *&v130 = v44;
      DWORD2(v130) = v43;
      v45 = specialized static GraphicsFilter.ColorMonochrome.== infix(_:_:)(&v140, &v129);
      return v45 & 1;
    case 0xFu:
      v50 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 15)
      {
        goto LABEL_75;
      }

      v51 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v130 = *(v50 + 16);
      *v131 = *(v50 + 32);
      *&v131[16] = *(v50 + 48);
      v132 = *(v50 + 64);
      v129 = *v50;
      v141 = *(v51 + 16);
      *v142 = *(v51 + 32);
      *&v142[16] = *(v51 + 48);
      v143 = *(v51 + 64);
      v140 = *v51;
      if ((specialized static _ColorMatrix.== infix(_:_:)(&v129, &v140) & 1) == 0 || *(v50 + 80) != *(v51 + 80) || *(v50 + 84) != *(v51 + 84))
      {
        goto LABEL_77;
      }

      goto LABEL_47;
    case 0x10u:
      v31 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v118 = *v31;
      v32 = *(v31 + 16);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 16)
      {
        goto LABEL_75;
      }

      v33 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v34 = *(v33 + 16);
      v113 = *v33;
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v35 = v32 == v34;
      v36 = vminv_u16(vmovn_s32(vceqq_f32(v118, v113)));
LABEL_43:
      v45 = v36 & v35;
      return v45 & 1;
    case 0x11u:
      v60 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 17)
      {
        goto LABEL_75;
      }

      v61 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v140 = *v60;
      v141 = *(v60 + 16);
      *v142 = *(v60 + 32);
      *&v142[16] = *(v60 + 48);
      v129 = *v61;
      v130 = *(v61 + 16);
      *v131 = *(v61 + 32);
      *&v131[16] = *(v61 + 48);
      v45 = specialized static GraphicsFilter.ColorCurves.== infix(_:_:)(&v140, &v129);
      return v45 & 1;
    case 0x12u:
      v79 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v80 = *v79;
      v81 = *(v79 + 8);
      v82 = *(v79 + 16);
      v83 = *(v79 + 24);
      v84 = *(v79 + 32);
      v85 = *(v79 + 40);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 18)
      {
        v143 = v156;
        *v144 = v157;
        *&v144[16] = v158[0];
        *&v144[28] = *(v158 + 12);
        v140 = v152;
        v141 = v153;
        *v142 = v154;
        *&v142[16] = v155;
        v105 = *_s7SwiftUI14GraphicsFilterOWOj6_(&v140);
        goto LABEL_75;
      }

      v86 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v87 = *v86;
      v88 = *(v86 + 24);
      v129.i64[0] = v80;
      v129.i64[1] = v81;
      *&v130 = v82;
      DWORD2(v130) = v83;
      *v131 = v84;
      *&v131[8] = v85;
      *v124 = v87;
      *&v124[8] = *(v86 + 8);
      *&v124[24] = v88;
      v125 = *(v86 + 32);
      outlined init with copy of GraphicsFilter(&v159, &v140);
      outlined init with copy of GraphicsFilter(&v152, &v140);
      outlined init with copy of GraphicsFilter(&v159, &v140);
      outlined init with copy of GraphicsFilter(&v152, &v140);
      v59 = specialized static GraphicsFilter.ShaderFilter.== infix(_:_:)(&v129, v124);
LABEL_55:
      v45 = v59;
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      outlined destroy of GraphicsFilter(&v159);
      outlined destroy of GraphicsFilter(&v152);
      return v45 & 1;
    case 0x13u:
      v95 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v123 = *v95;
      v97 = *(v95 + 16);
      v96 = *(v95 + 20);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 19)
      {
        goto LABEL_75;
      }

      v98 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v100 = *(v98 + 16);
      v99 = *(v98 + 20);
      v117 = *v98;
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      if ((vminv_u16(vmovn_s32(vceqq_f32(v123, v117))) & 1) == 0 || v97 != v100 || v96 != v99)
      {
        goto LABEL_77;
      }

      goto LABEL_47;
    case 0x14u:
      v62 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v64 = *v62;
      v63 = *(v62 + 4);
      v24 = *(v62 + 8);
      v25 = *(v62 + 9);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 20)
      {
        goto LABEL_75;
      }

      v65 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v66 = *v65;
      v67 = *(v65 + 4);
      v28 = *(v65 + 8);
      v29 = *(v65 + 9);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v30 = v64 != v66;
      if (v63 != v67)
      {
        v30 = 1;
      }

      goto LABEL_40;
    case 0x15u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 21)
      {
        v143 = v156;
        *v144 = v157;
        *&v144[16] = v158[0];
        *&v144[28] = *(v158 + 12);
        v140 = v152;
        v141 = v153;
        *v142 = v154;
        *&v142[16] = v155;
        v104 = _s7SwiftUI14GraphicsFilterOWOj6_(&v140);
        outlined init with copy of GraphicsFilter.GlassBackgroundStyle(v104, &v129);
        goto LABEL_75;
      }

LABEL_45:
      v72 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      if (*v49 != *v72)
      {
        outlined init with copy of GraphicsFilter(&v159, &v140);
        v101 = &v152;
        v102 = &v140;
        goto LABEL_76;
      }

      v126 = *(v49 + 56);
      v127 = *(v49 + 72);
      v128[0] = *(v49 + 88);
      *(v128 + 12) = *(v49 + 100);
      *v124 = *(v49 + 8);
      *&v124[16] = *(v49 + 24);
      v125 = *(v49 + 40);
      v73 = *(v72 + 56);
      v74 = *(v72 + 88);
      v138 = *(v72 + 72);
      v139[0] = v74;
      *(v139 + 12) = *(v72 + 100);
      v75 = *(v72 + 24);
      v134 = *(v72 + 8);
      v135 = v75;
      v136 = *(v72 + 40);
      v137 = v73;
      outlined init with copy of GraphicsFilter(&v159, &v140);
      outlined init with copy of GraphicsFilter(&v152, &v140);
      outlined init with copy of GraphicsFilter(&v159, &v140);
      outlined init with copy of GraphicsFilter(&v152, &v140);
      outlined init with copy of GraphicsFilter(&v159, &v140);
      outlined init with copy of GraphicsFilter(&v152, &v140);
      v76 = specialized static VariableBlurStyle.Mask.== infix(_:_:)(v124, &v134);
      v132 = v138;
      *v133 = v139[0];
      *&v133[12] = *(v139 + 12);
      v129 = v134;
      v130 = v135;
      *v131 = v136;
      *&v131[16] = v137;
      outlined destroy of VariableBlurStyle.Mask(&v129);
      v143 = v127;
      *v144 = v128[0];
      *&v144[12] = *(v128 + 12);
      v140 = *v124;
      v141 = *&v124[16];
      *v142 = v125;
      *&v142[16] = v126;
      outlined destroy of VariableBlurStyle.Mask(&v140);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      outlined destroy of GraphicsFilter(&v159);
      outlined destroy of GraphicsFilter(&v152);
      if ((v76 & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_47:
      v45 = 1;
      break;
    case 0x16u:
      v92 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 22)
      {
        v93 = *_s7SwiftUI14GraphicsFilterOWOj6_(&v145);
        v94 = *(*v92 + 120);
        outlined init with copy of GraphicsFilter(&v159, &v140);
        outlined init with copy of GraphicsFilter(&v152, &v140);
        v45 = v94(v93);
        outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      }

      else
      {
        v143 = v156;
        *v144 = v157;
        *&v144[16] = v158[0];
        *&v144[28] = *(v158 + 12);
        v140 = v152;
        v141 = v153;
        *v142 = v154;
        *&v142[16] = v155;
        _s7SwiftUI14GraphicsFilterOWOj6_(&v140);

LABEL_75:
        v101 = &v159;
        v102 = &v145;
LABEL_76:
        outlined init with copy of GraphicsFilter(v101, v102);
        outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
LABEL_77:
        v45 = 0;
      }

      break;
    case 0x17u:
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 23)
      {
        goto LABEL_69;
      }

      goto LABEL_75;
    case 0x18u:
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 24)
      {
        goto LABEL_75;
      }

      goto LABEL_69;
    case 0x19u:
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 25)
      {
        goto LABEL_75;
      }

LABEL_69:
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v45 = 1;
      return v45 & 1;
    default:
      v22 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 9);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145))
      {
        goto LABEL_75;
      }

      v26 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 9);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v30 = v23 != v27;
LABEL_40:
      v45 = (v30 | v24 ^ v28 | v25 ^ v29) ^ 1;
      return v45 & 1;
  }

  return v45 & 1;
}

uint64_t _AnyCAFilterProvider.isEqual(to:)()
{
  if (swift_dynamicCastClass())
  {
  }

  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _AnyCAFilterProvider.isEqual(to:), v0, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v1, &v3);

  return v3 & 1;
}

uint64_t partial apply for closure #1 in _AnyCAFilterProvider.isEqual(to:)@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t outlined destroy of (GraphicsFilter, GraphicsFilter)(uint64_t a1)
{
  type metadata accessor for (GraphicsFilter, GraphicsFilter)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (GraphicsFilter, GraphicsFilter)()
{
  if (!lazy cache variable for type metadata for (GraphicsFilter, GraphicsFilter))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (GraphicsFilter, GraphicsFilter));
    }
  }
}

uint64_t Path.init(roundedRect:cornerRadius:style:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>)
{
  v11 = *a1;
  IsNull = CGRectIsNull(*&a3);
  v13 = 0uLL;
  if (IsNull)
  {
    result = 0;
    v15 = 6;
    a6 = 0.0;
  }

  else if (a7 == 0.0 || (v18.origin.x = a3, v18.size.width = a5, v18.origin.y = a4, v18.size.height = a6, CGRectIsInfinite(v18)))
  {
    v15 = 0;
    result = *&a3;
    *&v13 = a4;
    *(&v13 + 1) = a5;
  }

  else
  {
    result = swift_allocObject();
    v13 = 0uLL;
    *(result + 16) = a3;
    *(result + 24) = a4;
    *(result + 32) = a5;
    *(result + 40) = a6;
    *(result + 48) = a7;
    *(result + 56) = a7;
    v15 = 2;
    a6 = 0.0;
    *(result + 64) = v11;
  }

  *a2 = result;
  *(a2 + 8) = v13;
  *(a2 + 24) = a6;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_18D1796BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t storeEnumTagSinglePayload for ViewTraitKeys(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();
  v4 = *(a2 + 20);
  v5 = type metadata accessor for DispatchTime();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

void closure #2 in static Transaction.dispatchPending()(uint64_t a1)
{
  v2 = type metadata accessor for Transaction.PendingListeners.WeakListener(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      outlined init with copy of Transaction.PendingListeners.WeakListener(v7, v5, type metadata accessor for Transaction.PendingListeners.WeakListener);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        (*(*Strong + 104))(Strong);
      }

      outlined destroy of Transaction.PendingListeners.WeakListener(v5, type metadata accessor for Transaction.PendingListeners.WeakListener);
      v7 += v8;
      --v6;
    }

    while (v6);
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t static Transaction.dispatchPending()()
{
  if (one-time initialization token for pendingListeners != -1)
  {
    swift_once();
  }

  v0 = static Transaction.pendingListeners;
  v1 = *(type metadata accessor for Transaction.PendingListeners(0) - 8);
  v2 = (*(v1 + 80) + 20) & ~*(v1 + 80);
  os_unfair_lock_lock(v0 + 4);
  closure #1 in static Transaction.dispatchPending()((v0 + v2), &v6);
  os_unfair_lock_unlock(v0 + 4);
  v3 = v6;
  if (*(v6 + 16))
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v4 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    closure #2 in static Transaction.dispatchPending()(v3);
    static Update.end()();
    _MovableLockUnlock(v4);
  }
}

uint64_t closure #1 in static Transaction.dispatchPending()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for Transaction.PendingListeners(0) + 20);
  outlined init with copy of DispatchTime?(a1 + v16, v11);
  v51 = *(v13 + 48);
  if (v51(v11, 1, v12) == 1)
  {
    result = outlined destroy of DispatchTime?(v11);
    *v54 = *a1;
    *a1 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v41 = v4;
  (*(v13 + 32))(v15, v11, v12);
  outlined destroy of DispatchTime?(a1 + v16);
  v42 = *(v13 + 56);
  v43 = v13 + 56;
  v18 = v42(a1 + v16, 1, 1, v12);
  v45 = &v38;
  v19 = *a1;
  MEMORY[0x1EEE9AC00](v18);
  *(&v38 - 2) = v15;
  swift_bridgeObjectRetain_n();
  specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in closure #1 in static Transaction.dispatchPending(), (&v38 - 4), v19);
  v21 = v20;
  v44 = v2;

  *a1 = v21;
  if (*(v21 + 16))
  {
    v45 = v15;
    result = outlined destroy of DispatchTime?(a1 + v16);
    v22 = *(v21 + 16);
    if (v22)
    {
      v40 = v19;
      v23 = v22 - 1;
      v24 = type metadata accessor for Transaction.PendingListeners.WeakListener(0);
      v25 = v21 + ((*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80)) + *(*(v24 - 8) + 72) * v23;
      v26 = *(v24 + 20);
      v39 = v13;
      (*(v13 + 16))(a1 + v16, v25 + v26, v12);
      v42(a1 + v16, 0, 1, v12);
      type metadata accessor for OS_dispatch_queue();
      v27 = static OS_dispatch_queue.main.getter();
      v28 = v52;
      outlined init with copy of DispatchTime?(a1 + v16, v52);
      v43 = v12;
      result = (v51)(v28, 1, v12);
      if (result != 1)
      {
        aBlock[4] = partial apply for implicit closure #1 in closure #1 in static Transaction.dispatchPending();
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_24;
        v29 = _Block_copy(aBlock);

        v30 = v46;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v31 = v48;
        v32 = v41;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x193ABFB50](v28, v30, v31, v29);
        _Block_release(v29);

        (*(v50 + 8))(v31, v32);
        (*(v47 + 8))(v30, v49);
        v33 = *(v39 + 8);
        v34 = v43;
        v35 = v33(v28, v43);
        MEMORY[0x1EEE9AC00](v35);
        v36 = v45;
        *(&v38 - 2) = v45;
        specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in closure #1 in static Transaction.dispatchPending(), (&v38 - 4), v40);
        *v54 = v37;
        return v33(v36, v34);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    *v54 = v19;
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

void specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Transaction.PendingListeners.WeakListener(0);
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      outlined init with copy of SystemFormatStyle.DateReference(a3 + v14 + v15 * v12, v11, type metadata accessor for Transaction.PendingListeners.WeakListener);
      v16 = a1(v11);
      if (v3)
      {
        outlined destroy of ClosedRange<Date>?(v11, type metadata accessor for Transaction.PendingListeners.WeakListener);

        goto LABEL_15;
      }

      if (v16)
      {
        outlined init with take of ClosedRange<Date>(v11, v23, type metadata accessor for Transaction.PendingListeners.WeakListener);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        outlined init with take of ClosedRange<Date>(v23, v13 + v14 + v19 * v15, type metadata accessor for Transaction.PendingListeners.WeakListener);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        outlined destroy of ClosedRange<Date>?(v11, type metadata accessor for Transaction.PendingListeners.WeakListener);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t outlined init with copy of SystemFormatStyle.DateReference(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17SystemFormatStyleO13DateReferenceVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17SystemFormatStyleO13DateReferenceVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in closure #1 in static Transaction.dispatchPending()()
{
  type metadata accessor for DispatchTime();
  type metadata accessor for Transaction.PendingListeners.WeakListener(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchTime and conformance DispatchTime, MEMORY[0x1E69E7FF8]);
  return dispatch thunk of static Comparable.> infix(_:_:)() & 1;
}

uint64_t initializeWithCopy for Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakCopyInit();
  v6 = *(a3 + 20);
  v7 = type metadata accessor for DispatchTime();
  (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t outlined destroy of ClosedRange<Date>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _AnyShapeBox<Capsule>()
{
  if (!lazy cache variable for type metadata for _AnyShapeBox<Capsule>)
  {
    lazy protocol witness table accessor for type Capsule and conformance Capsule();
    v0 = type metadata accessor for _AnyShapeBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _AnyShapeBox<Capsule>);
    }
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, Swift::UInt32 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;

    return outlined assign with take of GlassContainer.ItemData(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.Entry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v9, v10);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v12;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a2 + 144);
  v14 = *(a2 + 152);

  outlined copy of _Glass.Variant.Role(v13, v14);
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  *(a1 + 160) = *(a2 + 160);
  v15 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v15;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v16;
  v17 = *(a2 + 248);

  if (v17 == 1)
  {
    v18 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v18;
    *(a1 + 249) = *(a2 + 249);
  }

  else
  {
    v19 = *(a2 + 224);
    v20 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v19, v20);
    *(a1 + 224) = v19;
    *(a1 + 232) = v20;
    *(a1 + 240) = *(a2 + 240);
    v21 = *(a2 + 256);
    *(a1 + 248) = v17;
    *(a1 + 256) = v21;
    *(a1 + 264) = *(a2 + 264);
  }

  v22 = *(a2 + 296);
  if (v22 == 1)
  {
    v23 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v23;
    *(a1 + 297) = *(a2 + 297);
  }

  else
  {
    v24 = *(a2 + 272);
    v25 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v24, v25);
    *(a1 + 272) = v24;
    *(a1 + 280) = v25;
    *(a1 + 288) = *(a2 + 288);
    v26 = *(a2 + 304);
    *(a1 + 296) = v22;
    *(a1 + 304) = v26;
    *(a1 + 312) = *(a2 + 312);
  }

  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  return a1;
}

uint64_t destroy for GlassContainer.Entry(uint64_t a1)
{
  outlined consume of GlassContainer.Entry.ModelID(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  outlined consume of _Glass.Variant.Role(*(a1 + 40), *(a1 + 48));

  outlined consume of _Glass.Variant.Role(*(a1 + 144), *(a1 + 152));

  if (*(a1 + 248) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 224), *(a1 + 232));
  }

  if (*(a1 + 296) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 272), *(a1 + 280));
  }

  return result;
}

void *assignWithCopy for GlassContainer.Storage(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

void type metadata accessor for _AnyShapeBox<_SizedShape<OffsetShape<AnyShape>>>()
{
  if (!lazy cache variable for type metadata for _AnyShapeBox<_SizedShape<OffsetShape<AnyShape>>>)
  {
    type metadata accessor for _SizedShape<OffsetShape<AnyShape>>();
    lazy protocol witness table accessor for type _SizedShape<OffsetShape<AnyShape>> and conformance _SizedShape<A>();
    v0 = type metadata accessor for _AnyShapeBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _AnyShapeBox<_SizedShape<OffsetShape<AnyShape>>>);
    }
  }
}

void type metadata accessor for _SizedShape<OffsetShape<AnyShape>>()
{
  if (!lazy cache variable for type metadata for _SizedShape<OffsetShape<AnyShape>>)
  {
    type metadata accessor for OffsetShape<AnyShape>(255, &lazy cache variable for type metadata for OffsetShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for OffsetShape);
    lazy protocol witness table accessor for type OffsetShape<AnyShape> and conformance OffsetShape<A>();
    v0 = type metadata accessor for _SizedShape();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SizedShape<OffsetShape<AnyShape>>);
    }
  }
}

uint64_t MaterialProviderBox.isEqual(to:)(uint64_t a1, void (*a2)(void, void, void))
{
  a2(0, *(*v2 + 200), *(*v2 + 208));
  result = swift_dynamicCastClass();
  if (result)
  {

    v4 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v4 & 1;
  }

  return result;
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 89))
  {
    if (*(v0 + 177))
    {
      goto LABEL_3;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
    if (*(v0 + 177))
    {
      goto LABEL_3;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
LABEL_3:

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(v0 + 24));
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = *(type metadata accessor for ResolvableStringResolutionContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 64) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void, uint64_t *))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v10 = v2;
  v9 = *(v1 + 24);
  v11 = v9;
  v12 = v3;
  v4 = a1(0, &v10);
  v5 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v6 = v1 + v5;
  type metadata accessor for TimeDataFormatting.EntriesState();
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 8))(v1 + v5, v7);
  }

  (*(*(v2 - 8) + 8))(v6 + *(v4 + 52), v2);
  (*(*(v9 - 8) + 8))(v6 + *(v4 + 56));
  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{

  if ((~*(v0 + 120) & 0xF000000000000007) != 0)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13(uint64_t (*a1)(void, uint64_t *))
{
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v12 = v1[2];
  v3 = v12;
  v13 = v2;
  v14 = v4;
  v15 = v5;
  v6 = (a1(0, &v12) - 8);
  v7 = (*(*v6 + 80) + 48) & ~*(*v6 + 80);

  v8 = v1 + v7 + v6[15];
  (*(*(v3 - 8) + 8))(v8, v3);
  v12 = v3;
  v13 = v2;
  v14 = v4;
  v15 = v5;
  v9 = type metadata accessor for AppearanceAnimationView();
  v10 = *(*(v2 - 8) + 8);
  v10(&v8[*(v9 + 52)], v2);
  v10(&v8[*(v9 + 56)], v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{

  outlined consume of Environment<String?>.Content(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t initializeWithCopy for GlassContainer.Effect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  v8 = *(a2 + 104);

  if (v8 == 1)
  {
    v9 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v9;
    *(a1 + 105) = *(a2 + 105);
  }

  else
  {
    v10 = *(a2 + 80);
    v11 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v10, v11);
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    *(a1 + 96) = *(a2 + 96);
    v12 = *(a2 + 112);
    *(a1 + 104) = v8;
    *(a1 + 112) = v12;
    *(a1 + 120) = *(a2 + 120);
  }

  v13 = *(a2 + 152);
  if (v13 == 1)
  {
    v14 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v14;
    *(a1 + 153) = *(a2 + 153);
  }

  else
  {
    v15 = *(a2 + 128);
    v16 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v15, v16);
    *(a1 + 128) = v15;
    *(a1 + 136) = v16;
    *(a1 + 144) = *(a2 + 144);
    v17 = *(a2 + 160);
    *(a1 + 152) = v13;
    *(a1 + 160) = v17;
    *(a1 + 168) = *(a2 + 168);
  }

  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  v18 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v18;

  return a1;
}

uint64_t destroy for GlassContainer.Effect(uint64_t *a1)
{
  outlined consume of _Glass.Variant.Role(*a1, a1[1]);

  if (a1[13] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[10], a1[11]);
  }

  if (a1[19] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[16], a1[17]);
  }
}

uint64_t assignWithCopy for MaterialEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of Material.ID(v4, v5);
  v6 = *(a1 + 16);
  *(a1 + 16) = v4;
  v7 = *(a1 + 24);
  *(a1 + 24) = v5;
  outlined consume of Material.ID(v6, v7);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t MaterialEffectState.updateValue()()
{
  v1 = v0;
  v90 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v69 - v10);
  type metadata accessor for ObservationTracking._AccessList?();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v69 - v16;
  Value = AGGraphGetValue();
  v18 = *Value;
  v19 = *(Value + 8);
  v20 = *(Value + 16) == 1 && v19 == 1;
  if (!v20 || ((*(*v18 + 120))() & 1) == 0)
  {
    outlined copy of Material.ID(v18, v19);

    *(v0 + 16) = 0;
    v42 = *AGGraphGetValue();

    v43 = *AGGraphGetValue();
    v85 = 0;
    v86 = v42;
    v87 = v43;
    LODWORD(v88) = 0;

    AGGraphSetOutputValue();
    outlined consume of Material.ID(v18, v19);
  }

  v75 = v8;
  outlined copy of Material.ID(v18, 1u);
  outlined copy of Material.ID(v18, 1u);
  v21 = AGGraphGetValue();
  v22 = *v21;
  v23 = v21[1];
  LODWORD(v87) = 0;
  BYTE4(v87) = 1;
  v88 = 0;
  v89 = 0;
  v85 = v22;
  v86 = v23;
  LODWORD(v87) = *(v1 + 24);
  BYTE4(v87) = 0;
  v76 = v3;
  v24 = one-time initialization token for _current;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = static ObservationCenter._current;
  swift_beginAccess();
  v26 = pthread_getspecific(v25[2]);
  if (!v26)
  {
    v27 = swift_slowAlloc();
    pthread_setspecific(v25[2], v27);
    v84 = type metadata accessor for ObservationCenter();
    *&v82 = v25[3];
    outlined init with take of Any(&v82, v27);

    v26 = v27;
  }

  outlined init with copy of Any(v26, &v82);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v81[1];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_37:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *(v80 + 24) = v11;
    goto LABEL_17;
  }

  v70 = v5;
  v71 = CurrentAttribute;
  v73 = v11;
  swift_beginAccess();
  v72 = *(v28 + 24);
  *(v28 + 24) = MEMORY[0x1E69E7CC0];
  v25 = v76;
  v30 = v14;
  v31 = v79;
  (v76[7])(v79, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v33 = *(StatusReg + 848);
  *(StatusReg + 848) = v31;
  v78 = v1;
  v81[0] = *(v1 + 16);
  v34 = v18;
  v35 = *(*v18 + 128);

  v74 = v34;
  v35(&v82, v81, &v85);

  *(StatusReg + 848) = v33;
  v36 = v82;
  outlined init with copy of ObservationTracking._AccessList?(v31, v30);
  v37 = (v25[6])(v30, 1, v2);
  v38 = v2;
  v80 = v28;
  v77 = v36;
  if (v37 == 1)
  {
    v5 = v2;
    outlined destroy of ObservationTracking._AccessList?(v31);
    v39 = v30;
    v40 = v78;
    v41 = v28;
    goto LABEL_20;
  }

  v2 = v25[4];
  v45 = v73;
  (v2)(v73, v30, v38);
  v5 = v38;
  (v25[2])(v75, v45, v38);
  v11 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 24) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  v40 = v78;
  v48 = v11[2];
  v47 = v11[3];
  if (v48 >= v47 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v11);
  }

  v11[2] = v48 + 1;
  (v2)(v11 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + v25[9] * v48, v75, v5);
  v41 = v80;
  *(v80 + 24) = v11;
  (v25[1])(v73, v5);
  v39 = v79;
  v36 = v77;
LABEL_20:
  outlined destroy of ObservationTracking._AccessList?(v39);
  v49 = *(v41 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v53 = v25[2];
    v51 = (v25 + 2);
    v52 = v53;
    v54 = v49 + ((v51[64] + 32) & ~v51[64]);
    v55 = *(v51 + 7);
    v79 = *(v41 + 24);

    v56 = v71;
    v57 = v70;
    do
    {
      v52(v57, v54, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v56, v57);
      v41 = v80;
      (*(v51 - 1))(v57, v5);
      v54 += v55;
      --v50;
    }

    while (v50);

    v36 = v77;
    v40 = v78;
  }

  *(v41 + 24) = v72;

  v58 = *(v40 + 16);
  v59 = v74;
  if (v36)
  {
    if (v58)
    {
      if (v36 != v58)
      {
        v60 = *(*v36 + 88);
        swift_retain_n();

        v62 = v60(v61);

        if ((v62 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_30;
    }

LABEL_32:

LABEL_33:

    *(v40 + 16) = v36;
    v63 = v88;
    v64 = v89;

    v65 = *AGGraphGetValue();
    *&v82 = v36;
    *(&v82 + 1) = v63;
    v83 = v64;
    LODWORD(v84) = v65;
    AGGraphSetOutputValue();
    outlined consume of Material.ID(v59, 1u);
    outlined consume of Material.ID(v59, 1u);
  }

  if (v58)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (AGGraphGetOutputValue())
  {
    outlined consume of Material.ID(v59, 1u);

    outlined consume of Material.ID(v59, 1u);
  }

  else
  {
    v66 = *(v40 + 16);

    v67 = *AGGraphGetValue();

    v68 = *AGGraphGetValue();
    *&v82 = v66;
    *(&v82 + 1) = v67;
    v83 = v68;
    LODWORD(v84) = 0;

    AGGraphSetOutputValue();
    outlined consume of Material.ID(v59, 1u);
    outlined consume of Material.ID(v59, 1u);
  }
}

uint64_t StatefulMaterialProviderBox.updateState(_:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v33 = a3;
  v5 = *(*v3 + 208);
  v6 = *(*v3 + 200);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  v21 = *a1;
  v32 = v6;
  if (v21)
  {
    v34 = v21;
    swift_getAssociatedConformanceWitness();
    AnyEquatable.as<A>(type:)();

    if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) != 1)
    {
      (*(v11 + 32))(v20, v10, AssociatedTypeWitness);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v11 + 56))(v10, 1, 1, AssociatedTypeWitness, v18);
  }

  (*(v5 + 48))(v6, v5);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) != 1)
  {
    (*(v28 + 8))(v10, v29);
  }

LABEL_7:
  v22 = *(v11 + 16);
  v22(v16, v20, AssociatedTypeWitness);
  (*(v5 + 56))(v16, v31, v32, v5);
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v23 = *(v11 + 8);
    v23(v16, AssociatedTypeWitness);
    v23(v20, AssociatedTypeWitness);
  }

  else
  {
    v25 = v30;
    v22(v30, v16, AssociatedTypeWitness);
    AnyEquatable.init<A>(_:)(v25, AssociatedTypeWitness, &v34);
    v26 = *(v11 + 8);
    v26(v16, AssociatedTypeWitness);
    result = (v26)(v20, AssociatedTypeWitness);
    v21 = v34;
  }

  *v33 = v21;
  return result;
}

uint64_t _AnyEquatableBox.as<A>(type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for _AnyEquatableBox();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v9 = *(a1 - 8);
    (*(v9 + 16))(a2, v4 + *(*v4 + 128), a1);
    v5 = v9;
    v6 = 0;
  }

  else
  {
    v5 = *(a1 - 8);
    v6 = 1;
  }

  v7 = *(v5 + 56);

  return v7(a2, v6, 1, a1);
}

uint64_t MaterialEffectUpdatedFill.value.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  LODWORD(v4) = *(Value + 8);
  v5 = *(Value + 12);
  v6 = *(Value + 16);
  if (v6 != 1 || v4 != 1)
  {
    v9 = *Value;
    v10 = v4;
LABEL_6:
    result = outlined copy of Material.ID(v9, v10);
    goto LABEL_7;
  }

  if (((*(*v3 + 120))() & 1) == 0)
  {
    LOBYTE(v4) = 1;
    v9 = v3;
    v10 = 1;
    goto LABEL_6;
  }

  outlined copy of Material.ID(v3, 1u);
  outlined copy of Material.ID(v3, 1u);
  v11 = *AGGraphGetValue();
  v4 = *(*v3 + 136);

  v4(&v12, &v11);
  outlined consume of Material.ID(v3, 1u);

  v7 = v12;
  LOBYTE(v4) = v13;
  v5 = v14;
  result = outlined consume of Material.ID(v3, 1u);
  v3 = v7;
LABEL_7:
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  *(a1 + 16) = v6;
  return result;
}

uint64_t StatefulMaterialProviderBox.applyingState(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = *v2;
  v6 = v5[26];
  v7 = v5[25];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v27 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v27 - v13;
  v14 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v30 = *(v18 - 8);
  v31 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - v20;
  v22 = *a1;
  v23 = v5[27];
  v33 = v14;
  (*(v14 + 16))(v17, &v3[v23], v7, v19);
  if (v22)
  {
    v36 = v22;
    swift_getAssociatedConformanceWitness();
    v24 = v32;
    AnyEquatable.as<A>(type:)();

    if ((*(v11 + 48))(v24, 1, AssociatedTypeWitness) != 1)
    {
      v25 = v34;
      (*(v11 + 32))(v34, v24, AssociatedTypeWitness);
      goto LABEL_7;
    }
  }

  else
  {
    v24 = v32;
    (*(v11 + 56))(v32, 1, 1, AssociatedTypeWitness);
  }

  v25 = v34;
  (*(v6 + 48))(v7, v6);
  if ((*(v11 + 48))(v24, 1, AssociatedTypeWitness) != 1)
  {
    (*(v28 + 8))(v24, v29);
  }

LABEL_7:
  (*(v6 + 64))(v25, v7, v6);
  (*(v11 + 8))(v25, AssociatedTypeWitness);
  (*(v33 + 8))(v17, v7);
  (*(*v3 + 240))(v21);
  return (*(v30 + 8))(v21, v31);
}

uint64_t AnimatableStatefulMaterialProviderBox.makeMaterial(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, AssociatedTypeWitness, v5);
  swift_getAssociatedConformanceWitness();
  return Material.init<A>(provider:)(v7, AssociatedTypeWitness, a2);
}

uint64_t specialized AnimatableMaterialProviderBox.init(_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2);
  (*(*(*(*v1 + 200) - 8) + 32))(v1 + *(*v1 + 216), v3);
  return v1;
}

double MaterialEffectEnvironment.value.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(AGGraphGetValue() + 16) == 1)
  {
    Value = AGGraphGetValue();
    v4 = *Value;
    v3 = Value[1];
    *&v22 = *Value;
    *(&v22 + 1) = v3;

    v5 = AGGraphGetValue();
    if (*(v5 + 8) == 1)
    {
      v6 = *v5;
      outlined copy of Material.ID(*v5, 1u);
      v7 = AGGraphGetValue();
      v8 = *(v7 + 12);
      v9 = *(v7 + 8);
      v19 = *v7;
      v20 = v9;
      v21 = v8;
      v10 = *(*v6 + 112);
      outlined copy of Material.ID(v19, v9);
      v10(&v22, &v19);
      outlined consume of Material.ID(v6, 1u);
      outlined consume of Material.ID(v19, v20);
    }

    else
    {
      v15 = AGGraphGetValue();
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = v17 | (*(v15 + 12) << 32);
      outlined copy of Material.ID(*v15, v17);
      swift_retain_n();
      outlined copy of Material.ID(v16, v17);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(&v22, v16, v18);

      outlined consume of Material.ID(v16, v17);
      if (v3)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v4, v22);
      }

      outlined consume of Material.ID(v16, v17);
    }

    result = *&v22;
    *a1 = v22;
  }

  else
  {
    v11 = AGGraphGetValue();
    v13 = *v11;
    v12 = v11[1];
    *a1 = v13;
    *(a1 + 8) = v12;
  }

  return result;
}

uint64_t MaterialProviderBox.foregroundEnvironment(_:for:)(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 3);
  v7 = *a2;
  v8 = v4;
  v9 = v5;
  return (*(*(v3 + 208) + 40))(a1, &v7, *(v3 + 200));
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unsigned __int8 *a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v232 = *MEMORY[0x1E69E9840];
  v211 = type metadata accessor for OSSignpostID();
  v208 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v9 = v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v192 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v209 = v192 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v192 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v210 = v192 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v200 = v192 - v21;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    a1[17] = 1;
    goto LABEL_9;
  }

  if (a1[17] == 1)
  {
LABEL_9:
    v26 = a1[8];
    v212 = *&a2;
    if (v26 == 1)
    {
      v27 = *a1;
      v28 = *(**a1 + 144);

      v28(&v223, v29);
      outlined consume of Material.ID(v27, 1u);
      if (v223)
      {
        v229 = v223;
        v230 = v224;
        v231 = v225;
        goto LABEL_16;
      }
    }

    else
    {
      v225 = 0.0;
      v223 = 0u;
      v224 = 0u;
    }

    if (one-time initialization token for empty != -1)
    {
      goto LABEL_206;
    }

    goto LABEL_14;
  }

LABEL_135:
  v155 = *(a4 + 56);
  if (!v155)
  {
    return result;
  }

  if (a1[8] == 1)
  {
    v156 = *a1;
    v157 = *(**a1 + 144);

    v158 = outlined copy of Material.ID(v156, 1u);
    v157(&v217, v158);
    outlined consume of Material.ID(v156, 1u);
    if (v217)
    {
      v223 = v217;
      v224 = v218;
      v225 = *&v219;
      goto LABEL_144;
    }
  }

  else
  {
    *&v219 = 0.0;
    v217 = 0u;
    v218 = 0u;
  }

  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, &v223);
  if (v217)
  {
    outlined destroy of HitTestableEvent?(&v217, &lazy cache variable for type metadata for _AnyAnimatableData?);
  }

LABEL_144:
  LOBYTE(v217) = 0;
  v159 = specialized AnimatorState.update(_:at:environment:)(&v223, v5, v24);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v64 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    LODWORD(Counter) = 0;
  }

  else
  {
    LODWORD(Counter) = CurrentAttribute;
  }

  if (v159)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      v190 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v190;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
        LODWORD(v217) = Counter;
        BYTE4(v217) = CurrentAttribute == v64;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      v197 = a4;
      v201 = a1;
      v161 = one-time initialization token for animationState;
      v199 = v155;

      if (v161 == -1)
      {
        goto LABEL_155;
      }

      goto LABEL_210;
    }

    __break(1u);
    goto LABEL_208;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
LABEL_208:
    v191 = CurrentAttribute;
    swift_once();
    CurrentAttribute = v191;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
      LODWORD(v217) = Counter;
      BYTE4(v217) = CurrentAttribute == v64;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    specialized AnimatorState.nextUpdate()();
    goto LABEL_198;
  }

  __break(1u);
LABEL_210:
  swift_once();
LABEL_155:
  v63 = *(&static Signpost.animationState + 1);
  v72 = static Signpost.animationState;
  v71 = word_1ED5283E8;
  v162 = HIBYTE(word_1ED5283E8);
  v163 = byte_1ED5283EA;
  v164 = static os_signpost_type_t.end.getter();
  v217 = __PAIR128__(v63, v72);
  LOBYTE(v218) = v71;
  BYTE1(v218) = v162;
  BYTE2(v218) = v163;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {

    goto LABEL_197;
  }

  LODWORD(v209) = v164;
  v165 = one-time initialization token for _signpostLog;
  v69 = v199;

  if (v165 != -1)
  {
    swift_once();
  }

  v68 = _signpostLog;
  OSSignpostID.init(log:object:)();
  type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  *&v70 = COERCE_DOUBLE(swift_allocObject());
  *(v70 + 16) = xmmword_18DDAF080;
  if (AGGraphGetCurrentAttribute() == v64)
  {
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    v209 = v74;
    *&v204 = v75;
    v205 = v73;
    v207 = v76;
    swift_once();
    v75 = *&v204;
    v73 = v205;
    v76 = v207;
    v74 = v209;
LABEL_49:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v77 = v64;
        v78 = Counter;
        Counter = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v79 = v63 == v78;
          v209 = *(static CustomEventTrace.recorder + 24);
          *(v209 + 2) = 322;
          v80 = Counter[2];
          LODWORD(v223) = v77;
          BYTE4(v223) = v79;
          *(&v223 + 1) = &type metadata for MaterialEffect.Fill;
          *&v224 = v74;
          *(&v224 + 1) = v73;
          v225 = v76;
          v226 = v75;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v207 = v81;

          v82 = v80;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v68, v69, v71, v70, v72, LOBYTE(v212));
          LODWORD(Counter) = v78;
        }

        else
        {
          outlined consume of Animation.Function(v68, v69, v71, v70, v72, LOBYTE(v212));
          LODWORD(Counter) = v78;
        }
      }

      else
      {
        outlined consume of Animation.Function(v68, v69, v71, v70, v72, LOBYTE(v212));
      }

      v122 = one-time initialization token for animationState;
      v69 = v196;

      if (v122 == -1)
      {
LABEL_97:
        v98 = *(&static Signpost.animationState + 1);
        v90 = static Signpost.animationState;
        LOBYTE(v91) = word_1ED5283E8;
        LOBYTE(v44) = HIBYTE(word_1ED5283E8);
        v123 = byte_1ED5283EA;
        v124 = static os_signpost_type_t.begin.getter();
        v223 = __PAIR128__(v98, v90);
        LOBYTE(v224) = v91;
        BYTE1(v224) = v44;
        BYTE2(v224) = v123;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {

          a4 = v197;
          *(v197 + 56) = v69;
          goto LABEL_133;
        }

        LODWORD(v209) = v124;
        v125 = one-time initialization token for _signpostLog;

        if (v125 != -1)
        {
          goto LABEL_220;
        }

        goto LABEL_99;
      }
    }

    swift_once();
    goto LABEL_97;
  }

  v69 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v166 = MEMORY[0x1E69E6870];
  *(v70 + 56) = MEMORY[0x1E69E6810];
  *(v70 + 64) = v166;
  *(v70 + 32) = Counter;
  v167 = AGGraphGetCurrentAttribute();
  if (v167 == v64)
  {
    goto LABEL_214;
  }

  v168 = MEMORY[0x1E69E76D0];
  *(v70 + 96) = MEMORY[0x1E69E7668];
  *(v70 + 104) = v168;
  *(v70 + 72) = v167;
  v212 = *&v70;
  *(v70 + 136) = MEMORY[0x1E69E6158];
  *(*&v212 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(*&v212 + 112) = 0xD00000000000002BLL;
  *(*&v212 + 120) = 0x800000018DD7EBF0;
  v169 = v212;
  if (v162)
  {
    LOBYTE(v215) = v209;
    *&v227[0] = &dword_18D018000;
    v221 = v68;
    *&v217 = v72;
    *(&v217 + 1) = v63;
    LOBYTE(v218) = v71;
    *&v229 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v229 + 1) = 37;
    LOBYTE(v230) = 2;
    *&v216 = v212;
    v170 = v200;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v208 + 8))(v170, v211);
    goto LABEL_196;
  }

  v171 = v72;
  if (v72 == 20)
  {
    a4 = 3;
  }

  else
  {
    a4 = 4;
  }

  v17 = bswap32(v72) | (4 * WORD1(v72));
  v12 = v209;
  v172 = v208 + 16;
  v202 = *(v208 + 16);
  v173 = v202(v210, v200, v211);
  v5 = 0;
  LOBYTE(v229) = 1;
  v208 = v172;
  v206 = 16 * a4;
  *&v207 = v172 - 8;
  v204 = v171;
  *&v205 = *&v169 + 32;
  v203 = a4;
  do
  {
    v209 = v192;
    MEMORY[0x1EEE9AC00](v173);
    a1 = v192 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = a1 + 8;
    v175 = a4;
    v176 = a1 + 8;
    do
    {
      *(v176 - 1) = 0;
      *v176 = 0;
      v176 += 16;
      --v175;
    }

    while (v175);
    v177 = *&v205 + 40 * v5;
    while (1)
    {
      v178 = *(*&v212 + 16);
      if (v5 == v178)
      {
        break;
      }

      if (v5 >= v178)
      {
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        swift_once();
LABEL_14:
        outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, &v229);
        if (v223)
        {
          outlined destroy of HitTestableEvent?(&v223, &lazy cache variable for type metadata for _AnyAnimatableData?);
        }

LABEL_16:
        outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(a4 + 16, &v223, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData, type metadata accessor for HitTestableEvent?);
        if (!v223)
        {
          outlined destroy of HitTestableEvent?(&v223, &lazy cache variable for type metadata for _AnyAnimatableData?);
          goto LABEL_134;
        }

        v195 = v17;
        v227[0] = v223;
        v227[1] = v224;
        v228 = v225;
        v30 = v223;
        if (v229 == v223 && ((*(v229 + 88))(&v229 + 8, v227 + 8) & 1) != 0)
        {
          outlined destroy of _AnyAnimatableData(v227);
          goto LABEL_134;
        }

        v201 = a1;
        v206 = v9;
        v192[0] = v12;
        AGGraphClearUpdate();
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(a4, &v223, &lazy cache variable for type metadata for AnimatableAttributeHelper<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill, &type metadata for MaterialEffect.Fill, type metadata accessor for AnimatableAttributeHelper);
        Counter = *AGGraphGetValue();

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v223, &lazy cache variable for type metadata for AnimatableAttributeHelper<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill, &type metadata for MaterialEffect.Fill, type metadata accessor for AnimatableAttributeHelper);
        AGGraphSetUpdate();
        v32 = Transaction.effectiveAnimation.getter(Counter);
        if (v32)
        {
          v33 = v32;
          goto LABEL_25;
        }

        v33 = *&v212;
        if (v212 == 0.0)
        {
          outlined destroy of _AnyAnimatableData(v227);

          a1 = v201;
          goto LABEL_134;
        }

LABEL_25:
        v34 = v201;
        outlined init with copy of _AnyAnimatableData(&v229, &v221);
        v35 = v221;
        if (v221 == v30)
        {
          v221[13](v222, v227 + 8);
        }

        else if (v35 == type metadata accessor for ZeroVTable())
        {
          outlined destroy of _AnyAnimatableData(&v221);
          outlined init with copy of _AnyAnimatableData(v227, &v221);
          (v221[14])(v222);
        }

        v24 = *AGGraphGetValue();
        v197 = a4;
        v36 = *(a4 + 56);
        v194 = v5;
        v192[1] = v33;
        v193 = Counter;
        if (!v36)
        {
          outlined init with copy of _AnyAnimatableData(&v221, &v223);
          *&v216 = COERCE_DOUBLE(&type metadata for MaterialEffect.Fill);
          type metadata accessor for MaterialEffect.Fill.Type();
          type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _AnyAnimatableData>.Type);
          v58 = swift_dynamicCast();
          if (v58)
          {
            v59 = v217;
          }

          else
          {
            v59 = 0;
          }

          if (v58)
          {
            v60 = *(&v217 + 1);
          }

          else
          {
            v60 = 0;
          }

          v196 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA18_AnyAnimatableDataV_Tt4B5(v61, &v223, Counter, v59, v60, v24);
          v62 = AGGraphGetCurrentAttribute();
          LODWORD(v63) = v62;
          LODWORD(Counter) = *MEMORY[0x1E698D3F8];
          if (v62 == *MEMORY[0x1E698D3F8])
          {
            v64 = 0;
          }

          else
          {
            v64 = v62;
          }

          v65 = *v34;
          v66 = v34[8];
          outlined copy of Material.ID(*v34, v66);
          v67 = outlined consume of Material.ID(v65, v66);
          (*(*v33 + 96))(&v217, v67);
          v69 = *(&v217 + 1);
          v68 = v217;
          v70 = *(&v218 + 1);
          v71 = v218;
          v72 = v219;
          v215 = NAN;
          *&v216 = NAN;
          v213 = NAN;
          v214 = 1.0;
          v223 = v217;
          v224 = v218;
          v225 = *&v219;
          LODWORD(v212) = v220;
          LOBYTE(v226) = v220;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v223, &v216, &v215, &v214, &v213);
          v73 = v215;
          v74 = v216;
          v75 = v213;
          v76 = v214;
          if (one-time initialization token for enabledCategories != -1)
          {
            goto LABEL_215;
          }

          goto LABEL_49;
        }

        LOBYTE(v223) = 0;
        v196 = v36;
        specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v33, &v221, Counter, v24);
        v37 = AGGraphGetCurrentAttribute();
        LODWORD(Counter) = v37;
        v38 = *MEMORY[0x1E698D3F8];
        if (v37 == *MEMORY[0x1E698D3F8])
        {
          v39 = 0;
        }

        else
        {
          v39 = v37;
        }

        v40 = *v34;
        v41 = v34[8];
        outlined copy of Material.ID(*v34, v41);
        v42 = outlined consume of Material.ID(v40, v41);
        (*(*v33 + 96))(&v217, v42);
        v43 = v217;
        v44 = *(&v218 + 1);
        v45 = v218;
        v46 = v219;
        v47 = v220;
        v215 = NAN;
        *&v216 = NAN;
        v213 = NAN;
        v214 = 1.0;
        v223 = v217;
        v224 = v218;
        v225 = *&v219;
        LOBYTE(v226) = v220;
        static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v223, &v216, &v215, &v214, &v213);
        v48 = v215;
        v49 = *&v216;
        v50 = v213;
        v51 = v214;
        if (one-time initialization token for enabledCategories != -1)
        {
          v212 = *&v216;
          *&v206 = v215;
          v207 = v214;
          v205 = v213;
          swift_once();
          v50 = v205;
          v48 = *&v206;
          v51 = v207;
          v49 = v212;
        }

        if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
        {
          __break(1u);
LABEL_212:
          swift_once();
          goto LABEL_59;
        }

        if (*(static CustomEventTrace.enabledCategories + 98) == 1)
        {
          v52 = v39;
          v53 = v47;
          v54 = static CustomEventTrace.recorder;
          if (static CustomEventTrace.recorder)
          {
            v55 = Counter == v38;
            v212 = *(static CustomEventTrace.recorder + 24);
            *(*&v212 + 4) = 1602;
            v56 = *(v54 + 16);
            LODWORD(v223) = v52;
            BYTE4(v223) = v55;
            *(&v223 + 1) = &type metadata for MaterialEffect.Fill;
            *&v224 = v49;
            *(&v224 + 1) = v48;
            v225 = v51;
            v226 = v50;
            type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
            v207 = v57;

            Counter = v56;
            AGGraphAddTraceEvent();
            outlined consume of Animation.Function(v43, *(&v43 + 1), v45, v44, v46, v53);

            goto LABEL_58;
          }

          v84 = *(&v43 + 1);
          v83 = v43;
          v85 = v45;
          v86 = v44;
          v87 = v46;
          v88 = v53;
        }

        else
        {
          v84 = *(&v43 + 1);
          v83 = v43;
          v85 = v45;
          v86 = v44;
          v87 = v46;
          v88 = v47;
        }

        outlined consume of Animation.Function(v83, v84, v85, v86, v87, v88);
LABEL_58:
        LODWORD(v44) = v38;
        v89 = one-time initialization token for animationState;

        if (v89 != -1)
        {
          goto LABEL_212;
        }

LABEL_59:
        v91 = *(&static Signpost.animationState + 1);
        v90 = static Signpost.animationState;
        v92 = word_1ED5283E8;
        v93 = HIBYTE(word_1ED5283E8);
        v94 = byte_1ED5283EA;
        v95 = static os_signpost_type_t.event.getter();
        v223 = __PAIR128__(v91, v90);
        LOBYTE(v224) = v92;
        BYTE1(v224) = v93;
        BYTE2(v224) = v94;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {

          a4 = v197;
          goto LABEL_133;
        }

        LODWORD(v207) = v95;
        v96 = one-time initialization token for _signpostLog;

        if (v96 != -1)
        {
          swift_once();
        }

        v97 = COERCE_DOUBLE(_signpostLog);
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v44)
        {
          __break(1u);
        }

        else
        {
          v99 = AGGraphGetAttributeGraph();
          Counter = AGGraphGetCounter();

          v100 = MEMORY[0x1E69E6870];
          *(v98 + 56) = MEMORY[0x1E69E6810];
          *(v98 + 64) = v100;
          *(v98 + 32) = Counter;
          v101 = AGGraphGetCurrentAttribute();
          if (v101 != v44)
          {
            v102 = MEMORY[0x1E69E76D0];
            *(v98 + 96) = MEMORY[0x1E69E7668];
            *(v98 + 104) = v102;
            *(v98 + 72) = v101;
            v212 = *&v98;
            *(v98 + 136) = MEMORY[0x1E69E6158];
            *(*&v212 + 144) = lazy protocol witness table accessor for type String and conformance String();
            *(*&v212 + 112) = 0xD00000000000002BLL;
            *(*&v212 + 120) = 0x800000018DD7EBF0;
            v103 = v212;
            if (v93)
            {
              LOBYTE(v213) = LOBYTE(v207);
              v215 = v97;
              *&v216 = COERCE_DOUBLE(&dword_18D018000);
              *&v223 = v90;
              *(&v223 + 1) = v91;
              LOBYTE(v224) = v92;
              *&v217 = "Animation: (%p) [%d] %{public}@ updated";
              *(&v217 + 1) = 39;
              LOBYTE(v218) = 2;
              v214 = v212;
              v104 = v195;
              specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

              (*(v208 + 8))(v104, v211);
            }

            else
            {
              v105 = v90;
              if (v90 == 20)
              {
                v106 = 3;
              }

              else
              {
                v106 = 4;
              }

              a4 = bswap32(v90) | (4 * WORD1(v90));
              LODWORD(v5) = LOBYTE(v207);
              v107 = (v208 + 16);
              v198 = *(v208 + 16);
              v108 = v198(v209, v195, v211);
              v17 = 0;
              LOBYTE(v217) = 1;
              v207 = *&v106;
              v199 = v107;
              v204 = 16 * v106;
              *&v205 = v107 - 8;
              v202 = v105;
              v203 = *&v103 + 32;
              do
              {
                *&v206 = COERCE_DOUBLE(v192);
                MEMORY[0x1EEE9AC00](v108);
                a1 = v192 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
                v9 = a1 + 8;
                v110 = v207;
                v111 = a1 + 8;
                do
                {
                  *(v111 - 1) = 0;
                  *v111 = 0;
                  v111 += 16;
                  --*&v110;
                }

                while (v110 != 0.0);
                v112 = v203 + 40 * v17;
                v12 = *&v207;
                while (1)
                {
                  v113 = *(*&v212 + 16);
                  if (v17 == v113)
                  {
                    break;
                  }

                  if (v17 >= v113)
                  {
                    goto LABEL_204;
                  }

                  ++v17;
                  outlined init with copy of AnyTrackedValue(v112, &v223);
                  v114 = *(&v224 + 1);
                  __swift_project_boxed_opaque_existential_1(&v223, *(&v224 + 1));
                  *(v9 - 1) = CVarArg.kdebugValue(_:)(a4 | v5, v114);
                  *v9 = v115 & 1;
                  v9 += 16;
                  __swift_destroy_boxed_opaque_existential_1(&v223);
                  v112 += 40;
                  if (!--v12)
                  {
                    goto LABEL_79;
                  }
                }

                LOBYTE(v217) = 0;
LABEL_79:
                v116 = v202;
                if (v202 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                if (a1[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (a1[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (a1[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (v116 != 20 && a1[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v117 = **&v205;
                v118 = v209;
                v119 = v211;
                (**&v205)(v209, v211);
                v120 = __swift_project_value_buffer(v119, static OSSignpostID.continuation);
                v108 = v198(v118, v120, v119);
              }

              while ((v217 & 1) != 0);

              v121 = v211;
              v117(v209, v211);
              v117(v195, v121);
            }

            a4 = v197;
            goto LABEL_133;
          }
        }

        __break(1u);
LABEL_220:
        swift_once();
LABEL_99:
        v126 = COERCE_DOUBLE(_signpostLog);
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        *&v127 = COERCE_DOUBLE(swift_allocObject());
        *(v127 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == Counter)
        {
          __break(1u);
LABEL_222:
          __break(1u);
        }

        v128 = Counter;
        v129 = AGGraphGetAttributeGraph();
        v130 = AGGraphGetCounter();

        v131 = MEMORY[0x1E69E6870];
        *(v127 + 56) = MEMORY[0x1E69E6810];
        *(v127 + 64) = v131;
        *(v127 + 32) = v130;
        v132 = AGGraphGetCurrentAttribute();
        if (v132 == v128)
        {
          goto LABEL_222;
        }

        v133 = MEMORY[0x1E69E76D0];
        *(v127 + 96) = MEMORY[0x1E69E7668];
        *(v127 + 104) = v133;
        *(v127 + 72) = v132;
        v212 = *&v127;
        *(v127 + 136) = MEMORY[0x1E69E6158];
        *(*&v212 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(*&v212 + 112) = 0xD00000000000002BLL;
        *(*&v212 + 120) = 0x800000018DD7EBF0;
        v134 = v212;
        if (v44)
        {
          LOBYTE(v213) = v209;
          v215 = v126;
          *&v216 = COERCE_DOUBLE(&dword_18D018000);
          *&v223 = v90;
          *(&v223 + 1) = v98;
          LOBYTE(v224) = v91;
          *&v217 = "Animation: (%p) [%d] %{public}@ started";
          *(&v217 + 1) = 39;
          LOBYTE(v218) = 2;
          v214 = v212;
          v135 = v192[0];
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          v136 = v196;

          (*(v208 + 8))(v135, v211);
        }

        else
        {
          v137 = v90;
          if (v90 == 20)
          {
            v138 = 3;
          }

          else
          {
            v138 = 4;
          }

          a1 = (bswap32(v90) | (4 * WORD1(v90)));
          v17 = v209;
          v139 = (v208 + 16);
          v198 = *(v208 + 16);
          v140 = v198(v206, v192[0], v211);
          v12 = 0;
          LOBYTE(v217) = 1;
          v209 = v138;
          v199 = v139;
          v204 = 16 * v138;
          *&v205 = v139 - 8;
          v202 = v137;
          v203 = *&v134 + 32;
          do
          {
            v207 = COERCE_DOUBLE(v192);
            MEMORY[0x1EEE9AC00](v140);
            v5 = v192 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
            v9 = (v5 + 8);
            v142 = v209;
            v143 = (v5 + 8);
            do
            {
              *(v143 - 1) = 0;
              *v143 = 0;
              v143 += 16;
              --v142;
            }

            while (v142);
            v144 = v203 + 40 * v12;
            a4 = v209;
            while (1)
            {
              v145 = *(*&v212 + 16);
              if (v12 == v145)
              {
                break;
              }

              if (v12 >= v145)
              {
                goto LABEL_205;
              }

              ++v12;
              outlined init with copy of AnyTrackedValue(v144, &v223);
              v146 = *(&v224 + 1);
              __swift_project_boxed_opaque_existential_1(&v223, *(&v224 + 1));
              *(v9 - 1) = CVarArg.kdebugValue(_:)(a1 | v17, v146);
              *v9 = v147 & 1;
              v9 += 16;
              __swift_destroy_boxed_opaque_existential_1(&v223);
              v144 += 40;
              if (!--a4)
              {
                goto LABEL_116;
              }
            }

            LOBYTE(v217) = 0;
LABEL_116:
            v148 = v202;
            if (v202 == 20)
            {
              v149 = v206;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v149 = v206;
            }

            if (*(v5 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v5 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v5 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v148 != 20 && *(v5 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v150 = **&v205;
            v151 = v211;
            (**&v205)(v149, v211);
            v152 = __swift_project_value_buffer(v151, static OSSignpostID.continuation);
            v140 = v198(v149, v152, v151);
          }

          while ((v217 & 1) != 0);
          v136 = v196;

          v153 = v211;
          v150(v149, v211);
          v150(v192[0], v153);
        }

        a4 = v197;
        *(v197 + 56) = v136;
LABEL_133:
        specialized AnimatorState.addListeners(transaction:)(v193);

        outlined destroy of _AnyAnimatableData(&v221);
        outlined destroy of _AnyAnimatableData(v227);
        a1 = v201;
        LODWORD(v5) = v194;
LABEL_134:
        result = outlined destroy of HitTestableEvent?(a4 + 16, &lazy cache variable for type metadata for _AnyAnimatableData?);
        v154 = v230;
        *(a4 + 16) = v229;
        *(a4 + 32) = v154;
        *(a4 + 48) = v231;
        goto LABEL_135;
      }

      ++v5;
      outlined init with copy of AnyTrackedValue(v177, &v217);
      v179 = *(&v218 + 1);
      __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
      *(v9 - 1) = CVarArg.kdebugValue(_:)(v17 | v12, v179);
      *v9 = v180 & 1;
      v9 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v217);
      v177 += 40;
      if (!--a4)
      {
        goto LABEL_181;
      }
    }

    LOBYTE(v229) = 0;
LABEL_181:
    v181 = v204;
    if (v204 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    a4 = v203;
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v181 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v182 = **&v207;
    v184 = v210;
    v183 = v211;
    (**&v207)(v210, v211);
    v185 = __swift_project_value_buffer(v183, static OSSignpostID.continuation);
    v173 = v202(v184, v185, v183);
  }

  while ((v229 & 1) != 0);

  v186 = v211;
  v182(v210, v211);
  v182(v200, v186);
LABEL_196:

LABEL_197:
  specialized AnimatorState.removeListeners()();

  *(v197 + 56) = 0;
  a1 = v201;
LABEL_198:
  outlined init with copy of _AnyAnimatableData(&v223, &v217);
  outlined init with copy of _AnyAnimatableData(&v217, &v229);
  if (a1[8] == 1)
  {
    v187 = *a1;
    v188 = *(**a1 + 152);

    v189 = v188(&v229);
    outlined consume of Material.ID(v187, 1u);

    outlined destroy of _AnyAnimatableData(&v229);
    outlined destroy of _AnyAnimatableData(&v217);
    outlined destroy of _AnyAnimatableData(&v223);
    result = outlined consume of Material.ID(*a1, a1[8]);
    *a1 = v189;
    a1[8] = 1;
  }

  else
  {

    outlined destroy of _AnyAnimatableData(&v229);
    outlined destroy of _AnyAnimatableData(&v217);
    result = outlined destroy of _AnyAnimatableData(&v223);
  }

  a1[17] = 1;
  return result;
}