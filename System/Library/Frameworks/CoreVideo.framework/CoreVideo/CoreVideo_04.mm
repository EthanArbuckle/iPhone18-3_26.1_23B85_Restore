__n128 CVPixelFormatDescription.Compression.algorithm.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 CVPixelFormatDescription.Compression.algorithm.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 CVPixelFormatDescription.Compression.tileSize.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

__n128 CVPixelFormatDescription.Compression.tileSize.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

double sub_19D15A480@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_19D17CB10;
  *(a1 + 16) = 0;
  return result;
}

uint64_t CVPixelFormatDescription.Compression.uncompressedMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 56);
  return sub_19D15DF78(v2, v3);
}

uint64_t CVPixelFormatDescription.Compression.uncompressedMetadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 56);
  result = sub_19D15DF8C(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t CVPixelFormatDescription.Compression.init(algorithm:tiledAddressFormat:tileSize:uncompressedMetadata:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  v7 = *a4;
  v8 = a4[1];
  v9 = *(a4 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 24) = *a3;
  result = sub_19D15DF8C(0, 0xF000000000000000);
  *(a5 + 40) = v7;
  *(a5 + 48) = v8;
  *(a5 + 56) = v9;
  return result;
}

uint64_t CVPixelFormatDescription.Compression.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = *(v0 + 56);
  v8 = *v0;
  CVPixelFormatDescription.Compression.Algorithm.hash(into:)();
  sub_19D1716B0();
  sub_19D15EDC8();
  sub_19D171340();
  if (v5 >> 60 != 15)
  {
    sub_19D1716A0();
    sub_19D1712E0();
  }

  return sub_19D1716A0();
}

uint64_t CVPixelFormatDescription.Compression.hashValue.getter()
{
  sub_19D171680();
  CVPixelFormatDescription.Compression.hash(into:)();
  return sub_19D1716C0();
}

uint64_t sub_19D15A674()
{
  sub_19D171680();
  CVPixelFormatDescription.Compression.hash(into:)();
  return sub_19D1716C0();
}

uint64_t sub_19D15A6B8()
{
  sub_19D171680();
  CVPixelFormatDescription.Compression.hash(into:)();
  return sub_19D1716C0();
}

__n128 CVPixelFormatDescription.PixelLayout.blockSize.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 CVPixelFormatDescription.PixelLayout.blockSize.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t CVPixelFormatDescription.PixelLayout.bitsPerComponent.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t CVPixelFormatDescription.PixelLayout.bitsPerComponent.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

__n128 CVPixelFormatDescription.PixelLayout.blockAlignment.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

__n128 CVPixelFormatDescription.PixelLayout.blockAlignment.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

__n128 CVPixelFormatDescription.PixelLayout.subsampling.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 56);
  *a1 = result;
  return result;
}

__n128 CVPixelFormatDescription.PixelLayout.subsampling.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 56) = *a1;
  return result;
}

uint64_t CVPixelFormatDescription.PixelLayout.blackBlock.getter()
{
  v1 = *(v0 + 72);
  sub_19D15DF78(v1, *(v0 + 80));
  return v1;
}

uint64_t CVPixelFormatDescription.PixelLayout.blackBlock.setter(uint64_t a1, uint64_t a2)
{
  result = sub_19D15DF8C(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t CVPixelFormatDescription.PixelLayout.fillExtendedPixels.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_19D15EE1C(v1);
  return v1;
}

uint64_t CVPixelFormatDescription.PixelLayout.fillExtendedPixels.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  result = sub_19D15EE2C(*(v2 + 88));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t CVPixelFormatDescription.PixelLayout.cgBitmapInfo.setter(uint64_t result)
{
  *(v1 + 104) = result;
  *(v1 + 108) = BYTE4(result) & 1;
  return result;
}

double sub_19D15A99C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xFFFFFFFF00000000;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t CVPixelFormatDescription.PixelLayout.compression.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v7[0] = v1[7];
  v7[1] = v2;
  v8[0] = v1[9];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 153);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_19D15EE3C(v7, &v6);
}

__n128 CVPixelFormatDescription.PixelLayout.compression.setter(uint64_t a1)
{
  v3 = v1[8];
  v6[0] = v1[7];
  v6[1] = v3;
  v7[0] = v1[9];
  *(v7 + 9) = *(v1 + 153);
  sub_19D1602A4(v6, &qword_1EB00F0F8, &qword_19D17CB80);
  v4 = *(a1 + 16);
  v1[7] = *a1;
  v1[8] = v4;
  v1[9] = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 153) = result;
  return result;
}

uint64_t *CVPixelFormatDescription.PixelLayout.init(blockSize:bitsPerBlock:bitsPerComponent:blockAlignment:subsampling:blackBlock:fillExtendedPixels:cgBitmapInfo:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, int a12, char a13)
{
  if (a2 < 8 || (a2 & 7) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = *a5;
    v21 = *a6;
    v19 = *result;
    v18 = result[1];
    v22 = a4 & 1;
    result = sub_19D15DF8C(0, 0xF000000000000000);
    *a9 = v19;
    *(a9 + 8) = v18;
    *(a9 + 16) = a2;
    *(a9 + 24) = a3;
    *(a9 + 32) = v22;
    *(a9 + 56) = v21;
    *(a9 + 40) = v20;
    *(a9 + 72) = a7;
    *(a9 + 80) = a8;
    *(a9 + 88) = a10;
    *(a9 + 96) = a11;
    *(a9 + 104) = a12;
    *(a9 + 108) = a13 & 1;
    *(a9 + 112) = 0xFFFFFFFF00000000;
    *(a9 + 120) = 0u;
    *(a9 + 136) = 0u;
    *(a9 + 152) = 0u;
    *(a9 + 168) = 0;
  }

  return result;
}

uint64_t sub_19D15AB9C(uint64_t a1, uint64_t a2)
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

  v75 = v2;
  v76 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[9];
    v60 = v5[8];
    v61[0] = v9;
    *(v61 + 9) = *(v5 + 153);
    v10 = v5[3];
    v11 = v5[5];
    v56 = v5[4];
    v57 = v11;
    v12 = v5[5];
    v13 = v5[7];
    v58 = v5[6];
    v59 = v13;
    v14 = v5[1];
    v53[0] = *v5;
    v53[1] = v14;
    v15 = v5[3];
    v17 = *v5;
    v16 = v5[1];
    v54 = v5[2];
    v55 = v15;
    v18 = v5[9];
    v51 = v60;
    v52[0] = v18;
    *(v52 + 9) = *(v5 + 153);
    v47 = v56;
    v48 = v12;
    v49 = v58;
    v50 = v8;
    v43 = v17;
    v44 = v16;
    v45 = v54;
    v46 = v10;
    v19 = v6[7];
    v20 = v6[9];
    v69 = v6[8];
    v70[0] = v20;
    *(v70 + 9) = *(v6 + 153);
    v21 = v6[3];
    v22 = v6[5];
    v65 = v6[4];
    v66 = v22;
    v23 = v6[5];
    v24 = v6[7];
    v67 = v6[6];
    v68 = v24;
    v25 = v6[1];
    v62[0] = *v6;
    v62[1] = v25;
    v26 = v6[3];
    v28 = *v6;
    v27 = v6[1];
    v63 = v6[2];
    v64 = v26;
    v29 = v6[9];
    v41 = v69;
    v42[0] = v29;
    *(v42 + 9) = *(v6 + 153);
    v37 = v65;
    v38 = v23;
    v39 = v67;
    v40 = v19;
    v33 = v28;
    v34 = v27;
    v35 = v63;
    v36 = v21;
    sub_19D15F054(v53, v32);
    sub_19D15F054(v62, v32);
    v30 = _s9CoreVideo24CVPixelFormatDescriptionV11PixelLayoutV2eeoiySbAE_AEtFZ_0(&v43, &v33);
    v71[8] = v41;
    v72[0] = v42[0];
    *(v72 + 9) = *(v42 + 9);
    v71[4] = v37;
    v71[5] = v38;
    v71[6] = v39;
    v71[7] = v40;
    v71[0] = v33;
    v71[1] = v34;
    v71[2] = v35;
    v71[3] = v36;
    sub_19D15F08C(v71);
    v73[8] = v51;
    v74[0] = v52[0];
    *(v74 + 9) = *(v52 + 9);
    v73[4] = v47;
    v73[5] = v48;
    v73[6] = v49;
    v73[7] = v50;
    v73[0] = v43;
    v73[1] = v44;
    v73[2] = v45;
    v73[3] = v46;
    sub_19D15F08C(v73);
    if (!v30)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 11;
    v5 += 11;
  }

  return 1;
}

uint64_t CVPixelFormatDescription.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CVPixelFormatDescription.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CVPixelFormatDescription.planeConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 184);
  v14[8] = *(v1 + 168);
  v15[0] = v3;
  *(v15 + 9) = *(v1 + 193);
  v4 = *(v1 + 88);
  v5 = *(v1 + 120);
  v14[4] = *(v1 + 104);
  v14[5] = v5;
  v14[6] = *(v1 + 136);
  v14[7] = v2;
  v6 = *(v1 + 56);
  v14[0] = *(v1 + 40);
  v14[1] = v6;
  v14[2] = *(v1 + 72);
  v14[3] = v4;
  v7 = *(v1 + 152);
  v8 = *(v1 + 184);
  a1[8] = *(v1 + 168);
  a1[9] = v8;
  *(a1 + 153) = *(v1 + 193);
  v9 = *(v1 + 88);
  v10 = *(v1 + 120);
  a1[4] = *(v1 + 104);
  a1[5] = v10;
  a1[6] = *(v1 + 136);
  a1[7] = v7;
  v11 = *(v1 + 56);
  *a1 = *(v1 + 40);
  a1[1] = v11;
  a1[2] = *(v1 + 72);
  a1[3] = v9;
  return sub_19D15D010(v14, &v13);
}

__n128 CVPixelFormatDescription.planeConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 152);
  v4 = *(v1 + 184);
  v14[8] = *(v1 + 168);
  v15[0] = v4;
  *(v15 + 9) = *(v1 + 193);
  v5 = *(v1 + 88);
  v6 = *(v1 + 120);
  v14[4] = *(v1 + 104);
  v14[5] = v6;
  v14[6] = *(v1 + 136);
  v14[7] = v3;
  v7 = *(v1 + 56);
  v14[0] = *(v1 + 40);
  v14[1] = v7;
  v14[2] = *(v1 + 72);
  v14[3] = v5;
  sub_19D15D048(v14);
  v8 = *(a1 + 96);
  *(v1 + 152) = *(a1 + 112);
  v9 = *(a1 + 144);
  *(v1 + 168) = *(a1 + 128);
  *(v1 + 184) = v9;
  *(v1 + 193) = *(a1 + 153);
  v10 = *(a1 + 32);
  *(v1 + 88) = *(a1 + 48);
  v11 = *(a1 + 80);
  *(v1 + 104) = *(a1 + 64);
  *(v1 + 120) = v11;
  *(v1 + 136) = v8;
  result = *a1;
  v13 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v13;
  *(v1 + 72) = v10;
  return result;
}

uint64_t CVPixelFormatDescription.exactRatioBetweenBytesPerRowOfPlanes.getter()
{
  result = *(v0 + 216);
  v2 = *(v0 + 224);
  return result;
}

uint64_t CVPixelFormatDescription.exactRatioBetweenBytesPerRowOfPlanes.setter(uint64_t result, char a2)
{
  *(v2 + 216) = result;
  *(v2 + 224) = a2 & 1;
  return result;
}

__n128 CVPixelFormatDescription.init(pixelFormatType:name:components:componentRange:planeConfiguration:)@<Q0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a6 + 96);
  *(a7 + 152) = *(a6 + 112);
  v8 = *(a6 + 144);
  *(a7 + 168) = *(a6 + 128);
  *(a7 + 184) = v8;
  *(a7 + 193) = *(a6 + 153);
  v9 = *(a6 + 32);
  *(a7 + 88) = *(a6 + 48);
  v10 = *(a6 + 80);
  *(a7 + 104) = *(a6 + 64);
  *(a7 + 120) = v10;
  *(a7 + 136) = v7;
  result = *a6;
  v12 = *(a6 + 16);
  *(a7 + 40) = *a6;
  *(a7 + 56) = v12;
  v13 = *a1;
  v14 = *a4;
  v15 = *a5;
  *(a7 + 216) = 0;
  *(a7 + 224) = 1;
  *a7 = v13;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = v14;
  *(a7 + 32) = v15;
  *(a7 + 72) = v9;
  return result;
}

uint64_t sub_19D15B134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1E69E6370];
  sub_19D160A80(@"ContainsRGB", a1, MEMORY[0x1E69E6370], &v17);
  v5 = v17 & 1;
  sub_19D160A80(@"ContainsYCbCr", a1, v4, &v16);
  v6 = v5 | 2;
  if ((v16 & 1) == 0)
  {
    v6 = v5;
  }

  if (v16 == 2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  sub_19D160A80(@"ContainsGrayscale", a1, MEMORY[0x1E69E6370], &v15);
  v8 = v7 | 4;
  if ((v15 & 1) == 0)
  {
    v8 = v7;
  }

  if (v15 != 2)
  {
    v7 = v8;
  }

  sub_19D160A80(@"ContainsAlpha", a1, MEMORY[0x1E69E6370], &v14);
  v9 = v7 | 8;
  if ((v14 & 1) == 0)
  {
    v9 = v7;
  }

  if (v14 != 2)
  {
    v7 = v9;
  }

  sub_19D160A80(@"ContainsSenselArray", a1, MEMORY[0x1E69E6370], &v13);

  v11 = v7 | 0x10;
  if ((v13 & 1) == 0)
  {
    v11 = v7;
  }

  if (v13 == 2)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  *a2 = v12;
  return result;
}

void sub_19D15B2AC()
{
  v1 = *v0;
  if (*v0)
  {
    v7 = 1;
    v3 = @"ContainsRGB";
    sub_19D160B48(&v7, v3, MEMORY[0x1E69E6370]);
    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = 1;
  v4 = @"ContainsYCbCr";
  sub_19D160B48(&v8, v4, MEMORY[0x1E69E6370]);
  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v9 = 1;
  v5 = @"ContainsGrayscale";
  sub_19D160B48(&v9, v5, MEMORY[0x1E69E6370]);
  if ((v1 & 8) == 0)
  {
LABEL_5:
    if ((v1 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_11:
  v10 = 1;
  v6 = @"ContainsAlpha";
  sub_19D160B48(&v10, v6, MEMORY[0x1E69E6370]);
  if ((v1 & 0x10) == 0)
  {
    return;
  }

LABEL_6:
  v11 = 1;
  v2 = @"ContainsSenselArray";
  sub_19D160B48(&v11, v2, MEMORY[0x1E69E6370]);
}

void sub_19D15B408(uint64_t a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for CFString(0);
  sub_19D160A80(@"ComponentRange", a1, v4, &v12);

  v5 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  sub_19D15EEC0(&qword_1EB00F0D8, type metadata accessor for CFString);
  v6 = v5;
  v7 = sub_19D1712F0();

  if ((v7 & 1) == 0)
  {
    v9 = v6;
    v10 = sub_19D1712F0();

    if (v10)
    {

      v8 = 1;
      goto LABEL_9;
    }

    v11 = sub_19D1712F0();

    if (v11)
    {
      v8 = 2;
      goto LABEL_9;
    }

LABEL_8:
    v8 = 3;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:
  *a2 = v8;
}

uint64_t sub_19D15B5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CVPixelFormatCompressionType(0);
  v5 = v4;
  v6 = sub_19D15EEC0(&qword_1EB00F100, type metadata accessor for CVPixelFormatCompressionType);
  sub_19D1611A0(@"CompressionType", a1, v5, v6, &height);
  if (BYTE4(height) == 1)
  {
    goto LABEL_5;
  }

  v7 = height;
  v8 = sub_19D15EF08();
  sub_19D1611A0(@"TiledAddressFormat", a1, &type metadata for CVPixelFormatDescription.Compression.TiledAddressFormat, v8, &height);
  v9 = height;
  if (height == 6)
  {
    goto LABEL_5;
  }

  sub_19D160A80(@"TileWidth", a1, MEMORY[0x1E69E6530], &height);
  if (v30 == 1)
  {
    goto LABEL_5;
  }

  v10 = height;
  sub_19D160A80(@"TileHeight", a1, MEMORY[0x1E69E6530], &height);
  if (v30 == 1)
  {
    goto LABEL_5;
  }

  CVImageSize.init(width:height:)(v10, height);
  v14 = height;
  v15 = v30;
  sub_19D160A80(@"CompressionMetadataPatternSignallingUncompressed", a1, MEMORY[0x1E6969080], &height);
  v16 = v30;
  if (v30 >> 60 == 15)
  {
    v17 = 0;
    v18 = 0;
    v16 = 0xF000000000000000;
    goto LABEL_13;
  }

  v17 = height;
  sub_19D160A80(@"CompressionMetadataPatternSignallingConstant", a1, MEMORY[0x1E69E7508], &height);
  if (BYTE1(height) != 1)
  {
    v18 = height;
LABEL_13:
    result = sub_19D15DF8C(0, 0xF000000000000000);
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        sub_19D160A80(@"MultiSlice", a1, MEMORY[0x1E69E6370], &height);

        v19 = 0;
        v20 = height & 1 | 0x4000000000000000;
        goto LABEL_25;
      }

      if (v7 != 4)
      {
        goto LABEL_28;
      }

      v21 = sub_19D15EF5C();
      sub_19D1611A0(@"CompressionFootprint", a1, &type metadata for CVPixelFormatDescription.Compression.Algorithm.Footprint, v21, &height);
      v22 = height;
      if (height != 4)
      {
        sub_19D160A80(@"MultiSlice", a1, MEMORY[0x1E69E6370], &height);

        v19 = 0;
        v20 = height & 1 | (v22 << 8) | 0x8000000000000000;
        goto LABEL_25;
      }
    }

    else
    {
      if (v7 != 1)
      {
        if (v7 == 2)
        {

          v19 = 0;
          v20 = 0xC000000000000000;
LABEL_25:
          *&v26 = v20;
          *(&v26 + 1) = v19;
          LOBYTE(v27) = v9;
          *(&v27 + 1) = *v38;
          DWORD1(v27) = *&v38[3];
          *(&v27 + 1) = v14;
          *v28 = v15;
          *&v28[8] = v17;
          *&v28[16] = v16;
          v28[24] = v18;
          v24 = v27;
          *a2 = v26;
          *(a2 + 16) = v24;
          *(a2 + 32) = *v28;
          *(a2 + 41) = *&v28[9];
          height = v20;
          v30 = v19;
          v31 = v9;
          *&v32[3] = *&v38[3];
          *v32 = *v38;
          v33 = v14;
          v34 = v15;
          v35 = v17;
          v36 = v16;
          v37 = v18;
          sub_19D15EFB0(&v26, &v25);
          return sub_19D15EFE8(&height);
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v23 = sub_19D15D078();
      sub_19D1611A0(@"EquivalentUncompressedPixelFormat", a1, &type metadata for CVPixelFormatType, v23, &height);
      if (BYTE4(height) != 1)
      {
        v20 = height;
        sub_19D160A80(@"BytesPerTileHeader", a1, MEMORY[0x1E69E6530], &height);

        if (v30 != 1)
        {
          v19 = height;
          goto LABEL_25;
        }

LABEL_23:
        v11 = v17;
        v12 = v16;
        goto LABEL_6;
      }
    }

    goto LABEL_23;
  }

  sub_19D15DF8C(v17, v16);
LABEL_5:

  v11 = 0;
  v12 = 0xF000000000000000;
LABEL_6:
  result = sub_19D15DF8C(v11, v12);
  *a2 = 0xFFFFFFFF00000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_19D15BA60()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = v0[3];
  v27 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = *(v0 + 56);
  v7 = *v0 >> 62;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      LODWORD(v28) = 4;
      BYTE4(v28) = 0;
      type metadata accessor for CVPixelFormatCompressionType(0);
      v13 = v12;
      sub_19D15EEC0(&qword_1EB00F100, type metadata accessor for CVPixelFormatCompressionType);
      sub_19D161488(&v28, @"CompressionType", v13);
      LOBYTE(v28) = v1 & 1;
      v14 = @"MultiSlice";
      sub_19D160B48(&v28, v14, MEMORY[0x1E69E6370]);
      LOBYTE(v28) = BYTE1(v1);
      sub_19D15EF5C();
      v15 = @"CompressionFootprint";
      v16 = &type metadata for CVPixelFormatDescription.Compression.Algorithm.Footprint;
    }

    else
    {
      LODWORD(v28) = 2;
      BYTE4(v28) = 0;
      type metadata accessor for CVPixelFormatCompressionType(0);
      v20 = v19;
      sub_19D15EEC0(&qword_1EB00F100, type metadata accessor for CVPixelFormatCompressionType);
      v15 = @"CompressionType";
      v16 = v20;
    }

    sub_19D161488(&v28, v15, v16);
  }

  else
  {
    if (v7)
    {
      LODWORD(v28) = 3;
      BYTE4(v28) = 0;
      type metadata accessor for CVPixelFormatCompressionType(0);
      v18 = v17;
      sub_19D15EEC0(&qword_1EB00F100, type metadata accessor for CVPixelFormatCompressionType);
      sub_19D161488(&v28, @"CompressionType", v18);
      LOBYTE(v28) = v1 & 1;
      v10 = @"MultiSlice";
      v11 = MEMORY[0x1E69E6370];
    }

    else
    {
      v26 = v0[1];
      LODWORD(v28) = 1;
      BYTE4(v28) = 0;
      type metadata accessor for CVPixelFormatCompressionType(0);
      v9 = v8;
      sub_19D15EEC0(&qword_1EB00F100, type metadata accessor for CVPixelFormatCompressionType);
      sub_19D161488(&v28, @"CompressionType", v9);
      LODWORD(v28) = v1;
      BYTE4(v28) = 0;
      sub_19D15D078();
      sub_19D161488(&v28, @"EquivalentUncompressedPixelFormat", &type metadata for CVPixelFormatType);
      v28 = v26;
      LOBYTE(v29) = 0;
      v10 = @"BytesPerTileHeader";
      v11 = MEMORY[0x1E69E6530];
    }

    sub_19D160B48(&v28, v10, v11);
  }

  LOBYTE(v28) = v2;
  sub_19D15EF08();
  sub_19D161488(&v28, @"TiledAddressFormat", &type metadata for CVPixelFormatDescription.Compression.TiledAddressFormat);
  v28 = v3;
  LOBYTE(v29) = 0;
  v21 = @"TileWidth";
  v22 = MEMORY[0x1E69E6530];
  sub_19D160B48(&v28, v21, MEMORY[0x1E69E6530]);
  v28 = v27;
  LOBYTE(v29) = 0;
  result = sub_19D160B48(&v28, @"TileHeight", v22);
  if (v4 >> 60 != 15)
  {
    v28 = v5;
    v29 = v4;
    sub_19D15DF78(v5, v4);
    sub_19D15DF78(v5, v4);
    v24 = @"CompressionMetadataPatternSignallingUncompressed";
    sub_19D160B48(&v28, v24, MEMORY[0x1E6969080]);
    LOWORD(v28) = v6;
    v25 = @"CompressionMetadataPatternSignallingConstant";
    sub_19D160B48(&v28, v25, MEMORY[0x1E69E7508]);
    return sub_19D15DF8C(v5, v4);
  }

  return result;
}

void sub_19D15BF44(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_19D160A80(@"BitsPerBlock", a1, MEMORY[0x1E69E6530], v45);
  if (BYTE8(v45[0]) == 1)
  {

    sub_19D15DF8C(0, 0xF000000000000000);
    *v54 = 0xFFFFFFFF00000000;
    memset(&v54[8], 0, 49);
    sub_19D1602A4(v54, &qword_1EB00F0F8, &qword_19D17CB80);
    sub_19D15F018(&v63);
    v4 = *v72;
    a2[8] = v71;
    a2[9] = v4;
    *(a2 + 153) = *&v72[9];
    v5 = v68;
    a2[4] = v67;
    a2[5] = v5;
    v6 = v70;
    a2[6] = v69;
    a2[7] = v6;
    v7 = v64;
    *a2 = v63;
    a2[1] = v7;
    v8 = v66;
    a2[2] = v65;
    a2[3] = v8;
  }

  else
  {
    *&v37 = *&v45[0];
    v9 = MEMORY[0x1E69E6530];
    sub_19D160A80(@"BlockWidth", a1, MEMORY[0x1E69E6530], &v63);
    if (BYTE8(v63))
    {
      v10 = 1;
    }

    else
    {
      v10 = v63;
    }

    sub_19D160A80(@"BlockHeight", a1, v9, &v63);
    if (BYTE8(v63))
    {
      v11 = 1;
    }

    else
    {
      v11 = v63;
    }

    CVImageSize.init(width:height:)(v10, v11);
    v12 = v63;
    sub_19D160A80(@"BitsPerComponent", a1, v9, &v63);
    *(&v37 + 1) = v63;
    v77 = BYTE8(v63);
    sub_19D160A80(@"BlockHorizontalAlignment", a1, v9, &v63);
    v13 = v63;
    if (BYTE8(v63))
    {
      v13 = 1;
    }

    v35 = v13;
    sub_19D160A80(@"BlockVerticalAlignment", a1, v9, &v63);
    v14 = v63;
    if (BYTE8(v63))
    {
      v14 = 1;
    }

    v34 = v14;
    sub_19D160A80(@"HorizontalSubsampling", a1, v9, &v63);
    v15 = v63;
    if (BYTE8(v63))
    {
      v15 = 1;
    }

    v36 = v15;
    sub_19D160A80(@"VerticalSubsampling", a1, v9, &v61);
    v16 = v61;
    if (v62)
    {
      v16 = 1;
    }

    v38 = v16;
    sub_19D160A80(@"BlackBlock", a1, MEMORY[0x1E6969080], &v63);
    v33 = v63;
    sub_19D15DF8C(0, 0xF000000000000000);
    type metadata accessor for CGBitmapInfo(0);
    v18 = v17;
    v19 = sub_19D15EEC0(&qword_1EB00F118, type metadata accessor for CGBitmapInfo);
    sub_19D1611A0(@"CGBitmapInfo", a1, v18, v19, &v63);
    v20 = v63;
    v32 = v63;
    v75 = BYTE4(v63);
    sub_19D15B5DC(a1, &v63);
    v21 = v63;
    v22 = v64;
    v23 = v65;
    v24 = v66;
    v25 = BYTE8(v66);
    v40 = 0xFFFFFFFF00000000;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    sub_19D1602A4(&v40, &qword_1EB00F0F8, &qword_19D17CB80);
    v45[0] = v12;
    v45[1] = v37;
    v31 = v77;
    LOBYTE(v46) = v77;
    *(&v46 + 1) = *v76;
    DWORD1(v46) = *&v76[3];
    *(&v46 + 1) = v35;
    *&v47 = v34;
    *(&v47 + 1) = v36;
    *&v48 = v38;
    *(&v48 + 1) = v33;
    v49 = *(&v33 + 1);
    *&v50 = 0;
    DWORD2(v50) = v20;
    LOBYTE(v20) = v75;
    BYTE12(v50) = v75;
    *(&v50 + 13) = v73;
    HIBYTE(v50) = v74;
    v51 = v21;
    v52 = v22;
    *v53 = v23;
    *&v53[16] = v24;
    v53[24] = v25;
    *v54 = v12;
    *&v54[16] = v37;
    *(v60 + 9) = *&v53[9];
    v59 = v22;
    v60[0] = v23;
    v57 = v50;
    v58 = v21;
    v55 = v48;
    v56 = *(&v33 + 1);
    *&v54[32] = v46;
    *&v54[48] = v47;
    CVOpenGLESContext::operator delete(v54);
    v26 = v60[0];
    a2[8] = v59;
    a2[9] = v26;
    *(a2 + 153) = *(v60 + 9);
    v27 = v56;
    a2[4] = v55;
    a2[5] = v27;
    v28 = v58;
    a2[6] = v57;
    a2[7] = v28;
    v29 = *&v54[16];
    *a2 = *v54;
    a2[1] = v29;
    v30 = *&v54[48];
    a2[2] = *&v54[32];
    a2[3] = v30;
    v63 = v12;
    v64 = v37;
    LOBYTE(v65) = v31;
    *(&v65 + 1) = *v76;
    DWORD1(v65) = *&v76[3];
    *(&v65 + 1) = v35;
    *&v66 = v34;
    *(&v66 + 1) = v36;
    *&v67 = v38;
    *(&v67 + 1) = v33;
    v68 = *(&v33 + 1);
    *&v69 = 0;
    DWORD2(v69) = v32;
    BYTE12(v69) = v20;
    *(&v69 + 13) = v73;
    HIBYTE(v69) = v74;
    v70 = v21;
    v71 = v22;
    *v72 = v23;
    *&v72[16] = v24;
    v72[24] = v25;
    sub_19D15F054(v45, v39);
    sub_19D15F08C(&v63);
  }
}

uint64_t sub_19D15C4C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v24 = v0[6];
  v25 = v0[7];
  v26 = v0[8];
  v7 = v0[10];
  v21 = v0[9];
  v23 = v0[12];
  v22 = *(v0 + 26);
  v27 = *(v0 + 108);
  v28 = v0[11];
  v29 = v0[14];
  v8 = *(v0 + 15);
  v9 = *(v0 + 17);
  v10 = *(v0 + 19);
  v41 = *(v0 + 168);
  v39 = v9;
  v40 = v10;
  v38 = v8;
  *&v36[0] = v3;
  BYTE8(v36[0]) = 0;
  v11 = @"BitsPerBlock";
  v12 = MEMORY[0x1E69E6530];
  sub_19D160B48(v36, v11, MEMORY[0x1E69E6530]);
  *&v36[0] = v1;
  BYTE8(v36[0]) = 0;
  sub_19D160B48(v36, @"BlockWidth", v12);
  *&v36[0] = v2;
  BYTE8(v36[0]) = 0;
  sub_19D160B48(v36, @"BlockHeight", v12);
  if ((v5 & 1) == 0)
  {
    *&v36[0] = v4;
    BYTE8(v36[0]) = 0;
    v13 = @"BitsPerComponent";
    sub_19D160B48(v36, v13, MEMORY[0x1E69E6530]);
  }

  *&v36[0] = v6;
  BYTE8(v36[0]) = 0;
  sub_19D160B48(v36, @"BlockHorizontalAlignment", v12);
  *&v36[0] = v24;
  BYTE8(v36[0]) = 0;
  sub_19D160B48(v36, @"BlockVerticalAlignment", v12);
  *&v36[0] = v25;
  BYTE8(v36[0]) = 0;
  sub_19D160B48(v36, @"HorizontalSubsampling", v12);
  *&v36[0] = v26;
  BYTE8(v36[0]) = 0;
  result = sub_19D160B48(v36, @"VerticalSubsampling", v12);
  if (v7 >> 60 != 15)
  {
    *&v36[0] = v21;
    *(&v36[0] + 1) = v7;
    sub_19D15DF78(v21, v7);
    v15 = @"BlackBlock";
    result = sub_19D160B48(v36, v15, MEMORY[0x1E6969080]);
  }

  if ((v27 & 1) == 0)
  {
    LODWORD(v36[0]) = v22;
    BYTE4(v36[0]) = 0;
    v16 = @"CGBitmapInfo";
    result = sub_19D160B48(v36, v16, MEMORY[0x1E69E7668]);
  }

  if (v28)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v28;
    *(v17 + 24) = v23;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_19D15F0BC;
    *(v18 + 24) = v17;
    *&v36[0] = sub_19D15F110;
    *(&v36[0] + 1) = v18;
    sub_19D15EE1C(v28);
    sub_19D15EE1C(v28);
    v19 = @"FillExtendedPixelsBlock";

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F120, &qword_19D17CB88);
    v20 = sub_19D171620();
    sub_19D160888(v20, v19);
    sub_19D15EE2C(v28);
  }

  if (v29 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    *v30 = v29;
    *&v30[8] = v38;
    *&v30[24] = v39;
    *&v30[40] = v40;
    v30[56] = v41;
    v31 = v29;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    sub_19D15EFB0(&v31, v36);
    sub_19D15BA60();
    v36[0] = *v30;
    v36[1] = *&v30[16];
    v37[0] = *&v30[32];
    *(v37 + 9) = *&v30[41];
    return sub_19D15EFE8(v36);
  }

  return result;
}

void sub_19D15C8E8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F0C8, &qword_19D17CB70);
  sub_19D15D0CC();
  sub_19D160A80(@"Planes", a1, v4, &v42);
  v5 = v42;
  if (v42)
  {

    if (v5 >> 62)
    {
LABEL_25:
      v6 = sub_19D1715A0();
      v40 = a2;
      if (v6)
      {
LABEL_4:
        a2 = 0;
        v7 = MEMORY[0x1E69E7CC0];
        do
        {
          v41 = v7;
          v8 = a2;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x19EAF69A0](v8, v5);
              a2 = (v8 + 1);
              if (__OFADD__(v8, 1))
              {
                goto LABEL_23;
              }
            }

            else
            {
              if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_24;
              }

              v9 = *(v5 + 8 * v8 + 32);
              a2 = (v8 + 1);
              if (__OFADD__(v8, 1))
              {
LABEL_23:
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }
            }

            v10 = v9;
            v11 = sub_19D160530();
            sub_19D15BF44(v11, &v62);

            v80 = v70;
            v81[0] = v71[0];
            *(v81 + 9) = *(v71 + 9);
            v76 = v66;
            v77 = v67;
            v78 = v68;
            v79 = v69;
            v72 = v62;
            v73 = v63;
            v74 = v64;
            v75 = v65;
            if (sub_19D15D190(&v72) != 1)
            {
              break;
            }

            v60 = v70;
            v61[0] = v71[0];
            *(v61 + 9) = *(v71 + 9);
            v56 = v66;
            v57 = v67;
            v58 = v68;
            v59 = v69;
            v52 = v62;
            v53 = v63;
            v54 = v64;
            v55 = v65;
            sub_19D1602A4(&v52, &qword_1EB00F0E0, &qword_19D17CB78);
            ++v8;
            if (a2 == v6)
            {
              v7 = v41;
              goto LABEL_27;
            }
          }

          v60 = v70;
          v61[0] = v71[0];
          *(v61 + 9) = *(v71 + 9);
          v56 = v66;
          v57 = v67;
          v58 = v68;
          v59 = v69;
          v52 = v62;
          v53 = v63;
          v54 = v64;
          v55 = v65;
          v12 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_19D15D82C(0, *(v41 + 2) + 1, 1, v41);
          }

          v14 = *(v12 + 2);
          v13 = *(v12 + 3);
          v15 = v12;
          if (v14 >= v13 >> 1)
          {
            v15 = sub_19D15D82C((v13 > 1), v14 + 1, 1, v12);
          }

          v46 = v56;
          v47 = v57;
          v44 = v54;
          v45 = v55;
          *(v51 + 9) = *(v61 + 9);
          v50 = v60;
          v51[0] = v61[0];
          v48 = v58;
          v49 = v59;
          v42 = v52;
          v43 = v53;
          *(v15 + 2) = v14 + 1;
          v7 = v15;
          v16 = &v15[176 * v14];
          v17 = v42;
          v18 = v44;
          *(v16 + 3) = v43;
          *(v16 + 4) = v18;
          *(v16 + 2) = v17;
          v19 = v45;
          v20 = v46;
          v21 = v48;
          *(v16 + 7) = v47;
          *(v16 + 8) = v21;
          *(v16 + 5) = v19;
          *(v16 + 6) = v20;
          v22 = v49;
          v23 = v50;
          v24 = v51[0];
          *(v16 + 185) = *(v51 + 9);
          *(v16 + 10) = v23;
          *(v16 + 11) = v24;
          *(v16 + 9) = v22;
        }

        while (a2 != v6);
        goto LABEL_27;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v40 = a2;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_27:

    if (*(v7 + 2))
    {
      *&v62 = v7;
      sub_19D15D950(&v62);
      v80 = v70;
      v81[0] = v71[0];
      *(v81 + 9) = *(v71 + 9);
      v76 = v66;
      v77 = v67;
      v78 = v68;
      v79 = v69;
      v72 = v62;
      v73 = v63;
      v74 = v64;
      v75 = v65;
      CVOpenGLESContext::operator delete(&v72);
      v31 = v81[0];
      v40[8] = v80;
      v40[9] = v31;
      *(v40 + 153) = *(v81 + 9);
      v32 = v77;
      v40[4] = v76;
      v40[5] = v32;
      v33 = v79;
      v40[6] = v78;
      v40[7] = v33;
      v34 = v73;
      *v40 = v72;
      v40[1] = v34;
      v35 = v75;
      v40[2] = v74;
      v40[3] = v35;
      return;
    }

    a2 = v40;
    goto LABEL_30;
  }

  sub_19D15BF44(a1, &v72);
  if (sub_19D15D190(&v72) == 1)
  {
LABEL_30:
    sub_19D15F13C(&v72);
    v36 = v81[0];
    a2[8] = v80;
    a2[9] = v36;
    *(a2 + 153) = *(v81 + 9);
    v37 = v77;
    a2[4] = v76;
    a2[5] = v37;
    v38 = v79;
    a2[6] = v78;
    a2[7] = v38;
    v39 = v73;
    *a2 = v72;
    a2[1] = v39;
    v30 = v74;
    v29 = v75;
    goto LABEL_31;
  }

  v60 = v80;
  v61[0] = v81[0];
  *(v61 + 9) = *(v81 + 9);
  v56 = v76;
  v57 = v77;
  v58 = v78;
  v59 = v79;
  v52 = v72;
  v53 = v73;
  v54 = v74;
  v55 = v75;
  sub_19D15D1B4(&v52);
  v70 = v60;
  v71[0] = v61[0];
  *(v71 + 9) = *(v61 + 9);
  v66 = v56;
  v67 = v57;
  v68 = v58;
  v69 = v59;
  v62 = v52;
  v63 = v53;
  v64 = v54;
  v65 = v55;
  CVOpenGLESContext::operator delete(&v62);
  v25 = v71[0];
  a2[8] = v70;
  a2[9] = v25;
  *(a2 + 153) = *(v71 + 9);
  v26 = v67;
  a2[4] = v66;
  a2[5] = v26;
  v27 = v69;
  a2[6] = v68;
  a2[7] = v27;
  v28 = v63;
  *a2 = v62;
  a2[1] = v28;
  v30 = v64;
  v29 = v65;
LABEL_31:
  a2[2] = v30;
  a2[3] = v29;
}

void sub_19D15CDA0()
{
  v1 = v0[9];
  v44[8] = v0[8];
  v45[0] = v1;
  *(v45 + 9) = *(v0 + 153);
  v2 = v0[5];
  v44[4] = v0[4];
  v44[5] = v2;
  v3 = v0[7];
  v44[6] = v0[6];
  v44[7] = v3;
  v4 = v0[1];
  v44[0] = *v0;
  v44[1] = v4;
  v5 = v0[3];
  v44[2] = v0[2];
  v44[3] = v5;
  v6 = sub_19D15F174(v44);
  v7 = sub_19D135A48(v44);
  if (v6 == 1)
  {
    v8 = *v7;
    v9 = *(*v7 + 16);
    if (v9)
    {
      v10 = MEMORY[0x1E69E7CC0];
      v43 = MEMORY[0x1E69E7CC0];
      v11 = @"Planes";
      sub_19D15DA18(0, v9, 0);
      v12 = v43;
      v13 = (v8 + 32);
      do
      {
        v14 = *v13;
        v15 = v13[2];
        v34 = v13[1];
        v35 = v15;
        v33 = v14;
        v16 = v13[3];
        v17 = v13[4];
        v18 = v13[6];
        v38 = v13[5];
        v39 = v18;
        v36 = v16;
        v37 = v17;
        v19 = v13[7];
        v20 = v13[8];
        v21 = v13[9];
        *(v42 + 9) = *(v13 + 153);
        v41 = v20;
        v42[0] = v21;
        v40 = v19;
        sub_19D15F054(&v33, v30);
        v32 = sub_19D16047C(v10);
        v30[8] = v41;
        v31[0] = v42[0];
        *(v31 + 9) = *(v42 + 9);
        v30[4] = v37;
        v30[5] = v38;
        v30[6] = v39;
        v30[7] = v40;
        v30[0] = v33;
        v30[1] = v34;
        v30[2] = v35;
        v30[3] = v36;
        sub_19D15C4C8();
        sub_19D15F08C(&v33);
        v22 = v32;
        v43 = v12;
        v24 = *(v12 + 16);
        v23 = *(v12 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_19D15DA18((v23 > 1), v24 + 1, 1);
          v12 = v43;
        }

        *(v12 + 16) = v24 + 1;
        *(v12 + 8 * v24 + 32) = v22;
        v13 += 11;
        --v9;
      }

      while (v9);
    }

    else
    {
      v25 = @"Planes";
      v12 = MEMORY[0x1E69E7CC0];
    }

    v26 = sub_19D15F180();
    sub_19D162050(v12, @"Planes", &type metadata for TypedCFDictionary, v26, &off_1F1088FB8, v27, v28, v29);
  }

  else
  {
    v40 = v7[7];
    v41 = v7[8];
    v42[0] = v7[9];
    *(v42 + 9) = *(v7 + 153);
    v36 = v7[3];
    v37 = v7[4];
    v38 = v7[5];
    v39 = v7[6];
    v33 = *v7;
    v34 = v7[1];
    v35 = v7[2];
    sub_19D15C4C8();
  }
}

unint64_t sub_19D15D078()
{
  result = qword_1EB00F0C0;
  if (!qword_1EB00F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F0C0);
  }

  return result;
}

unint64_t sub_19D15D0CC()
{
  result = qword_1EB00F0D0;
  if (!qword_1EB00F0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB00F0C8, &qword_19D17CB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F0D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19D15D190(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19D15D1B4(uint64_t result)
{
  v1 = *(result + 104) & 0x1FFFFFFFFLL;
  *(result + 32) &= 1uLL;
  *(result + 104) = v1;
  return result;
}

uint64_t sub_19D15D1D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_19D1712F0();
}

uint64_t sub_19D15D23C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_19D171310();
}

uint64_t sub_19D15D288()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_19D171300();
}

uint64_t sub_19D15D2E0()
{
  sub_19D171680();
  v1 = *v0;
  swift_getWitnessTable();
  sub_19D171300();
  return sub_19D1716C0();
}

uint64_t sub_19D15D348@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_19D1712B0();
    if (v10)
    {
      v11 = sub_19D1712D0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_19D1712C0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_19D1712B0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_19D1712D0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_19D1712C0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_19D15D578(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_19D15DB44(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_19D15DF24(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_19D15D348(v14, a3, a4, &v13);
  v10 = v4;
  sub_19D15DF24(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

char *sub_19D15D708(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F1F0, &qword_19D17DD18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 232);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[232 * v8])
    {
      memmove(v12, v13, 232 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19D15D82C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F1E8, &qword_19D17DD10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_19D15D950(uint64_t result)
{
  v1 = *(result + 104) & 0x1FFFFFFFFLL | 0x8000000000000000;
  *(result + 32) &= 1uLL;
  *(result + 104) = v1;
  return result;
}

double sub_19D15D970(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_19D15D998(uint64_t a1)
{
  if ((*(a1 + 32) >> 1) > 0x80000000)
  {
    return -(*(a1 + 32) >> 1);
  }

  else
  {
    return 0;
  }
}

char *sub_19D15DA18(char *a1, int64_t a2, char a3)
{
  result = sub_19D15DA38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19D15DA38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F1D0, &qword_19D17DCF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_19D15DB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_19D1712B0();
  v11 = result;
  if (result)
  {
    result = sub_19D1712D0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_19D1712C0();
  sub_19D15D348(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_19D15DBFC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_19D15DED0(a3, a4);
          return sub_19D15D578(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s9CoreVideo24CVPixelFormatDescriptionV11CompressionV9AlgorithmO2eeoiySbAG_AGtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1 >> 62;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v3 >> 62 == 1)
      {
        v8 = v3 ^ v2 ^ 1;
        return v8 & 1;
      }
    }

    else if (!(v3 >> 62))
    {
      v6 = a1[1];
      v15 = *a2;
      sub_19D15D078();
      sub_19D1713B0();
      sub_19D1713B0();
      v8 = v14 == v13 && v6 == v4;
      return v8 & 1;
    }

    goto LABEL_24;
  }

  if (v5 != 2)
  {
    if (v3 >> 62 == 3 && v3 == 0xC000000000000000 && v4 == 0)
    {
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_24;
  }

  if (v3 >> 62 != 2)
  {
LABEL_24:
    v8 = 0;
    return v8 & 1;
  }

  v9 = v3 ^ v2;
  v8 = ((v2 ^ v3) & 0xFF00) == 0;
  if (v9)
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_19D15DE7C()
{
  result = qword_1EB00F0E8;
  if (!qword_1EB00F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F0E8);
  }

  return result;
}

uint64_t sub_19D15DED0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_19D15DF24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_19D15DF78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19D15DED0(a1, a2);
  }

  return a1;
}

uint64_t sub_19D15DF8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19D15DF24(a1, a2);
  }

  return a1;
}

uint64_t _s9CoreVideo24CVPixelFormatDescriptionV2eeoiySbAC_ACtFZ_0(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v31 = *(a1 + 32);
  v6 = *(a1 + 38);
  v7 = *(a1 + 46);
  v65 = *(a1 + 42);
  v66[0] = v7;
  *(v66 + 9) = *(a1 + 193);
  v8 = *(a1 + 22);
  v9 = *(a1 + 30);
  v61 = *(a1 + 26);
  v62 = v9;
  v63 = *(a1 + 34);
  v64 = v6;
  v10 = *(a1 + 14);
  v57 = *(a1 + 10);
  v58 = v10;
  v59 = *(a1 + 18);
  v60 = v8;
  v28 = *(a1 + 27);
  v30 = *(a1 + 224);
  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v15 = *(a2 + 32);
  v16 = *(a2 + 38);
  v17 = *(a2 + 46);
  v75 = *(a2 + 42);
  v76[0] = v17;
  *(v76 + 9) = *(a2 + 193);
  v18 = *(a2 + 22);
  v19 = *(a2 + 30);
  v71 = *(a2 + 26);
  v72 = v19;
  v20 = *(a2 + 34);
  v74 = v16;
  v73 = v20;
  v21 = *(a2 + 14);
  v67 = *(a2 + 10);
  v68 = v21;
  v22 = *(a2 + 18);
  v70 = v18;
  v69 = v22;
  v27 = *(a2 + 27);
  v29 = *(a2 + 224);
  LODWORD(v55[0]) = v2;
  LODWORD(v53[0]) = v11;
  sub_19D15D078();
  sub_19D1713B0();
  sub_19D1713B0();
  if (v43 != v33)
  {
    return 0;
  }

  if (v3 == v12 && v4 == v13)
  {
    if (v5 != v14)
    {
      return 0;
    }
  }

  else
  {
    v23 = sub_19D171610();
    result = 0;
    if ((v23 & 1) == 0 || v5 != v14)
    {
      return result;
    }
  }

  if (v31 == 3)
  {
    if (v15 != 3)
    {
      return 0;
    }

LABEL_13:
    v51 = v65;
    v52[0] = v66[0];
    *(v52 + 9) = *(v66 + 9);
    v47 = v61;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v43 = v57;
    v44 = v58;
    v45 = v59;
    v46 = v60;
    v41 = v75;
    v42[0] = v76[0];
    *(v42 + 9) = *(v76 + 9);
    v37 = v71;
    v38 = v72;
    v39 = v73;
    v40 = v74;
    v33 = v67;
    v34 = v68;
    v35 = v69;
    v36 = v70;
    sub_19D15D010(&v57, v32);
    sub_19D15D010(&v67, v32);
    v25 = _s9CoreVideo24CVPixelFormatDescriptionV18PlaneConfigurationO2eeoiySbAE_AEtFZ_0(&v43, &v33);
    v53[8] = v41;
    v54[0] = v42[0];
    *(v54 + 9) = *(v42 + 9);
    v53[4] = v37;
    v53[5] = v38;
    v53[6] = v39;
    v53[7] = v40;
    v53[0] = v33;
    v53[1] = v34;
    v53[2] = v35;
    v53[3] = v36;
    sub_19D15D048(v53);
    v55[8] = v51;
    v56[0] = v52[0];
    *(v56 + 9) = *(v52 + 9);
    v55[4] = v47;
    v55[5] = v48;
    v55[6] = v49;
    v55[7] = v50;
    v55[0] = v43;
    v55[1] = v44;
    v55[2] = v45;
    v55[3] = v46;
    sub_19D15D048(v55);
    if (v25)
    {
      if (v30)
      {
        if (!v29)
        {
          return 0;
        }
      }

      else
      {
        v26 = v29;
        if (v28 != v27)
        {
          v26 = 1;
        }

        if (v26)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  result = 0;
  if (v15 != 3 && v31 == v15)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t _s9CoreVideo24CVPixelFormatDescriptionV18PlaneConfigurationO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v67 = a1[8];
  v68[0] = v3;
  *(v68 + 9) = *(a1 + 153);
  v4 = a1[3];
  v5 = a1[5];
  v63 = a1[4];
  v64 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v65 = a1[6];
  v66 = v7;
  v8 = a1[1];
  v60[0] = *a1;
  v60[1] = v8;
  v9 = a1[3];
  v10 = *a1;
  v11 = a1[1];
  v61 = a1[2];
  v62 = v9;
  v12 = a2[7];
  v13 = a2[9];
  v77 = a2[8];
  v78[0] = v13;
  *(v78 + 9) = *(a2 + 153);
  v14 = a2[3];
  v15 = a2[5];
  v73 = a2[4];
  v74 = v15;
  v16 = a2[5];
  v17 = a2[7];
  v75 = a2[6];
  v76 = v17;
  v18 = a2[1];
  v69 = *a2;
  v70 = v18;
  v19 = a2[3];
  v21 = *a2;
  v20 = a2[1];
  v71 = a2[2];
  v72 = v19;
  v22 = a1[7];
  v23 = a1[9];
  v79[8] = a1[8];
  v80[0] = v23;
  *(v80 + 9) = *(a1 + 153);
  v24 = a1[3];
  v25 = a1[5];
  v79[4] = a1[4];
  v79[5] = v25;
  v26 = a1[6];
  v79[7] = v22;
  v79[6] = v26;
  v27 = a1[1];
  v79[0] = *a1;
  v79[1] = v27;
  v28 = a1[2];
  v79[3] = v24;
  v79[2] = v28;
  *(v81 + 9) = *(a2 + 153);
  v29 = a2[9];
  v80[10] = v77;
  v81[0] = v29;
  v80[6] = v73;
  v80[7] = v16;
  v80[9] = v12;
  v80[8] = v75;
  v80[2] = v21;
  v80[3] = v20;
  v80[5] = v14;
  v80[4] = v71;
  v30 = a1[9];
  v82[8] = v67;
  v83[0] = v30;
  *(v83 + 9) = *(a1 + 153);
  v82[4] = v63;
  v82[5] = v6;
  v82[6] = v65;
  v82[7] = v2;
  v82[0] = v10;
  v82[1] = v11;
  v82[2] = v61;
  v82[3] = v4;
  if (sub_19D15F174(v82) != 1)
  {
    v36 = sub_19D135A48(v82);
    v58 = v77;
    v59[0] = v78[0];
    *(v59 + 9) = *(v78 + 9);
    v54 = v73;
    v55 = v74;
    v56 = v75;
    v57 = v76;
    v50 = v69;
    v51 = v70;
    v52 = v71;
    v53 = v72;
    v37 = sub_19D15F174(&v50);
    v38 = sub_19D135A48(&v50);
    if (v37 != 1)
    {
      v48[7] = v36[7];
      v48[8] = v36[8];
      v49[0] = v36[9];
      *(v49 + 9) = *(v36 + 153);
      v48[3] = v36[3];
      v48[4] = v36[4];
      v48[5] = v36[5];
      v48[6] = v36[6];
      v48[0] = *v36;
      v48[1] = v36[1];
      v48[2] = v36[2];
      v39 = v38[9];
      v46[8] = v38[8];
      v47[0] = v39;
      *(v47 + 9) = *(v38 + 153);
      v40 = v38[5];
      v46[4] = v38[4];
      v46[5] = v40;
      v41 = v38[7];
      v46[6] = v38[6];
      v46[7] = v41;
      v42 = v38[1];
      v46[0] = *v38;
      v46[1] = v42;
      v43 = v38[3];
      v46[2] = v38[2];
      v46[3] = v43;
      sub_19D15D010(&v69, v45);
      sub_19D15D010(v60, v45);
      sub_19D15D010(v60, v45);
      sub_19D15D010(&v69, v45);
      v35 = _s9CoreVideo24CVPixelFormatDescriptionV11PixelLayoutV2eeoiySbAE_AEtFZ_0(v48, v46);
      sub_19D1602A4(v79, &qword_1EB00F1D8, &qword_19D17DD00);
      sub_19D15D048(&v69);
      sub_19D15D048(v60);
      return v35 & 1;
    }

    goto LABEL_5;
  }

  v31 = *sub_19D135A48(v82);
  v50 = v69;
  v51 = v70;
  v54 = v73;
  v55 = v74;
  v52 = v71;
  v53 = v72;
  *(v59 + 9) = *(v78 + 9);
  v58 = v77;
  v59[0] = v78[0];
  v56 = v75;
  v57 = v76;
  v32 = sub_19D15F174(&v50);
  v33 = sub_19D135A48(&v50);
  if (v32 != 1)
  {
LABEL_5:
    sub_19D15D010(v60, &v50);
    sub_19D15D010(&v69, &v50);
    sub_19D1602A4(v79, &qword_1EB00F1D8, &qword_19D17DD00);
    v35 = 0;
    return v35 & 1;
  }

  v34 = *v33;
  sub_19D15D010(v60, v48);
  sub_19D15D010(&v69, v48);
  v35 = sub_19D15AB9C(v31, v34);
  sub_19D1602A4(v79, &qword_1EB00F1D8, &qword_19D17DD00);
  return v35 & 1;
}

BOOL _s9CoreVideo24CVPixelFormatDescriptionV11PixelLayoutV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v27 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v34 = *(a1 + 56);
  v35 = *(a1 + 48);
  v33 = *(a1 + 64);
  v30 = *(a1 + 72);
  v31 = *(a1 + 80);
  v24 = *(a1 + 88);
  v23 = *(a1 + 104);
  v26 = *(a1 + 108);
  v5 = *(a1 + 128);
  *v58 = *(a1 + 112);
  *&v58[16] = v5;
  *&v58[32] = *(a1 + 144);
  *&v58[41] = *(a1 + 153);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 56);
  v32 = *(a2 + 64);
  v28 = *(a2 + 72);
  v29 = *(a2 + 80);
  v22 = *(a2 + 88);
  v21 = *(a2 + 104);
  v25 = *(a2 + 108);
  v12 = *(a2 + 128);
  *v59 = *(a2 + 112);
  *&v59[16] = v12;
  *&v59[32] = *(a2 + 144);
  *&v59[41] = *(a2 + 153);
  *v44 = *a1;
  v41 = *a2;
  sub_19D1550A4();
  v13 = 0;
  if ((sub_19D171350() & 1) == 0 || v2 != v6)
  {
    return v13;
  }

  v13 = 0;
  if ((v3 & 1) == 0)
  {
    if ((v8 & 1) != 0 || v27 != v7 || v4 != v10)
    {
      return v13;
    }

LABEL_12:
    if (v35 != v9 || v34 != v11 || v33 != v32)
    {
      return v13;
    }

    if (v31 >> 60 == 15)
    {
      v15 = v29;
      if (v29 >> 60 == 15)
      {
        sub_19D15DF78(v30, v31);
        sub_19D15DF78(v28, v29);
        sub_19D15DF8C(v30, v31);
LABEL_23:
        if (v26)
        {
          if (!v25)
          {
            return 0;
          }
        }

        else
        {
          v18 = v25;
          if (v23 != v21)
          {
            v18 = 1;
          }

          if (v18)
          {
            return 0;
          }
        }

        if (v22)
        {
          if (!v24)
          {
            return 0;
          }

LABEL_33:
          v19 = *v58;
          v54 = *&v58[8];
          v55 = *&v58[24];
          v56 = *&v58[40];
          v57 = v58[56];
          v20 = *v59;
          v50 = *&v59[8];
          v51 = *&v59[24];
          v53 = v59[56];
          v52 = *&v59[40];
          if (*v58 <= 0xFFFFFFFEFFFFFFFFLL)
          {
            *v44 = *v58;
            *&v44[8] = *&v58[8];
            *&v44[24] = *&v58[24];
            *&v44[40] = *&v58[40];
            v44[56] = v58[56];
            v41 = *v44;
            v42 = *&v44[16];
            v43[0] = *&v44[32];
            *(v43 + 9) = *&v44[41];
            if (*v59 <= 0xFFFFFFFEFFFFFFFFLL)
            {
              *&v40[8] = *&v59[8];
              *&v40[24] = *&v59[24];
              *&v40[40] = *&v59[40];
              v40[56] = v59[56];
              *v40 = *v59;
              sub_19D15EE3C(v58, v38);
              sub_19D15EE3C(v59, v38);
              sub_19D15EE3C(v44, v38);
              v13 = _s9CoreVideo24CVPixelFormatDescriptionV11CompressionV2eeoiySbAE_AEtFZ_0(&v41, v40);
              v36[0] = *v40;
              v36[1] = *&v40[16];
              v37[0] = *&v40[32];
              *(v37 + 9) = *&v40[41];
              sub_19D15EFE8(v36);
              v38[0] = v41;
              v38[1] = v42;
              v39[0] = v43[0];
              *(v39 + 9) = *(v43 + 9);
              sub_19D15EFE8(v38);
              *v40 = v19;
              *&v40[8] = v54;
              *&v40[24] = v55;
              *&v40[40] = v56;
              v40[56] = v57;
              sub_19D1602A4(v40, &qword_1EB00F0F8, &qword_19D17CB80);
              return v13;
            }

            *v40 = *v44;
            *&v40[16] = *&v44[16];
            *&v40[32] = *&v44[32];
            *&v40[41] = *&v44[41];
            sub_19D15EE3C(v58, v38);
            sub_19D15EE3C(v59, v38);
            sub_19D15EE3C(v44, v38);
            sub_19D15EFE8(v40);
          }

          else
          {
            if (*v59 > 0xFFFFFFFEFFFFFFFFLL)
            {
              *v44 = *v58;
              *&v44[8] = *&v58[8];
              *&v44[24] = *&v58[24];
              *&v44[40] = *&v58[40];
              v44[56] = v58[56];
              sub_19D15EE3C(v58, &v41);
              sub_19D15EE3C(v59, &v41);
              sub_19D1602A4(v44, &qword_1EB00F0F8, &qword_19D17CB80);
              return 1;
            }

            sub_19D15EE3C(v58, v44);
            sub_19D15EE3C(v59, v44);
          }

          *&v44[8] = v54;
          *&v44[24] = v55;
          *&v44[40] = v56;
          v46 = v50;
          *v44 = v19;
          v44[56] = v57;
          v45 = v20;
          v47 = v51;
          v48 = v52;
          v49 = v53;
          sub_19D1602A4(v44, &qword_1EB00F1E0, &qword_19D17DD08);
          return 0;
        }

        if (!v24)
        {
          goto LABEL_33;
        }

        return 0;
      }
    }

    else
    {
      v15 = v29;
      if (v29 >> 60 != 15)
      {
        sub_19D15DF78(v30, v31);
        sub_19D15DF78(v28, v29);
        sub_19D15DF78(v30, v31);
        sub_19D15DF78(v28, v29);
        v17 = sub_19D15DBFC(v30, v31, v28, v29);
        sub_19D15DF8C(v28, v29);
        sub_19D15DF8C(v28, v29);
        sub_19D15DF8C(v30, v31);
        sub_19D15DF8C(v30, v31);
        if ((v17 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_23;
      }
    }

    sub_19D15DF78(v30, v31);
    sub_19D15DF78(v28, v15);
    sub_19D15DF8C(v30, v31);
    sub_19D15DF8C(v28, v15);
    return 0;
  }

  if (v4 == v10)
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    goto LABEL_12;
  }

  return v13;
}

BOOL _s9CoreVideo24CVPixelFormatDescriptionV11CompressionV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 56);
  v7 = *(a2 + 16);
  v9 = *(a2 + 3);
  v8 = *(a2 + 4);
  v10 = *(a2 + 6);
  v15 = *(a2 + 5);
  v16 = *(a1 + 6);
  v11 = *(a2 + 56);
  v12 = *a1;
  v17 = *a2;
  v18 = v12;
  if ((_s9CoreVideo24CVPixelFormatDescriptionV11CompressionV9AlgorithmO2eeoiySbAG_AGtFZ_0(&v18, &v17) & 1) == 0)
  {
    return 0;
  }

  if (!sub_19D1359F0(v2, v7))
  {
    return 0;
  }

  *&v18 = v3;
  *(&v18 + 1) = v4;
  *&v17 = v9;
  *(&v17 + 1) = v8;
  sub_19D1550A4();
  if ((sub_19D171350() & 1) == 0)
  {
    return 0;
  }

  sub_19D15DF78(v5, v16);
  sub_19D15DF78(v15, v10);
  if (v16 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_19D15DF8C(v5, v16);
      return 1;
    }

    goto LABEL_9;
  }

  sub_19D15DF78(v5, v16);
  if (v10 >> 60 == 15)
  {
    sub_19D15DF24(v5, v16);
LABEL_9:
    sub_19D15DF8C(v5, v16);
    sub_19D15DF8C(v15, v10);
    return 0;
  }

  v14 = sub_19D15DBFC(v5, v16, v15, v10);
  sub_19D15DF8C(v15, v10);
  sub_19D15DF24(v5, v16);
  sub_19D15DF8C(v5, v16);
  return (v14 & 1) != 0 && v6 == v11;
}

unint64_t sub_19D15EDC8()
{
  result = qword_1EB00F0F0;
  if (!qword_1EB00F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F0F0);
  }

  return result;
}

uint64_t sub_19D15EE1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19D15EE2C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19D15EE3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F0F8, &qword_19D17CB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19D15EEC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19D15EF08()
{
  result = qword_1EB00F108;
  if (!qword_1EB00F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F108);
  }

  return result;
}

unint64_t sub_19D15EF5C()
{
  result = qword_1EB00F110;
  if (!qword_1EB00F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F110);
  }

  return result;
}

double sub_19D15F018(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 153) = 0u;
  return result;
}

void sub_19D15F0BC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  CVMutablePixelBuffer.init(unsafeBuffer:)(a1, &v5);
  v2(&v5);
  v4 = v5;
}

uint64_t sub_19D15F110(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

double sub_19D15F13C(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x1FFFFFFFELL;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

unint64_t sub_19D15F180()
{
  result = qword_1EB00F128;
  if (!qword_1EB00F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F128);
  }

  return result;
}

unint64_t sub_19D15F1D8()
{
  result = qword_1EB00F130;
  if (!qword_1EB00F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F130);
  }

  return result;
}

unint64_t sub_19D15F230()
{
  result = qword_1EB00F138;
  if (!qword_1EB00F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F138);
  }

  return result;
}

unint64_t sub_19D15F288()
{
  result = qword_1EB00F140;
  if (!qword_1EB00F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F140);
  }

  return result;
}

unint64_t sub_19D15F2E0()
{
  result = qword_1EB00F148;
  if (!qword_1EB00F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F148);
  }

  return result;
}

unint64_t sub_19D15F338()
{
  result = qword_1EB00F150;
  if (!qword_1EB00F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F150);
  }

  return result;
}

unint64_t sub_19D15F390()
{
  result = qword_1EB00F158;
  if (!qword_1EB00F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F158);
  }

  return result;
}

unint64_t sub_19D15F3E8()
{
  result = qword_1EB00F160;
  if (!qword_1EB00F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F160);
  }

  return result;
}

unint64_t sub_19D15F440()
{
  result = qword_1EB00F168;
  if (!qword_1EB00F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F168);
  }

  return result;
}

unint64_t sub_19D15F498()
{
  result = qword_1EB00F170;
  if (!qword_1EB00F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F170);
  }

  return result;
}

unint64_t sub_19D15F4F0()
{
  result = qword_1EB00F178;
  if (!qword_1EB00F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F178);
  }

  return result;
}

unint64_t sub_19D15F548()
{
  result = qword_1EB00F180;
  if (!qword_1EB00F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F180);
  }

  return result;
}

unint64_t sub_19D15F5A0()
{
  result = qword_1EB00F188;
  if (!qword_1EB00F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F188);
  }

  return result;
}

unint64_t sub_19D15F5F8()
{
  result = qword_1EB00F190;
  if (!qword_1EB00F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F190);
  }

  return result;
}

unint64_t sub_19D15F650()
{
  result = qword_1EB00F198;
  if (!qword_1EB00F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F198);
  }

  return result;
}

unint64_t sub_19D15F6A8()
{
  result = qword_1EB00F1A0;
  if (!qword_1EB00F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F1A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_9CoreVideo20CVMutablePixelBufferVIeghl_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9CoreVideo24CVPixelFormatDescriptionV11CompressionVSg(uint64_t a1)
{
  HIDWORD(v2) = *(a1 + 4);
  LODWORD(v2) = HIDWORD(v2);
  v1 = v2 >> 30;
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy225_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_19D15F7A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 225))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19D15F7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 225) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 225) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CVPixelFormatDescription.Components(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CVPixelFormatDescription.Components(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CVPixelFormatDescription.ComponentRange(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CVPixelFormatDescription.ComponentRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_19D15FAA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19D15FAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = (v3 >> 2) << 32;
      *(result + 8) = 0;
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CVPixelFormatDescription.Compression.Algorithm(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CVPixelFormatDescription.Compression.Algorithm(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = (v3 >> 2) << 32;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19D15FBEC(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return v1;
  }
}

unint64_t *sub_19D15FC14(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3) | 0xC000000000000000;
    result[1] = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CVPixelFormatDescription.Compression.Algorithm.Footprint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CVPixelFormatDescription.Compression.Algorithm.Footprint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CVPixelFormatDescription.Compression.TiledAddressFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CVPixelFormatDescription.Compression.TiledAddressFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_19D15FF04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 17))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_19D15FF58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_19D15FFF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 169))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
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

uint64_t sub_19D160050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t sub_19D1600E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
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

double sub_19D160130(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 168) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 169) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0;
      return result;
    }

    *(a1 + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19D1601CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 104) & 0x1FFFFFFFFLL | (a2 << 63);
  *(result + 32) &= 1uLL;
  *(result + 104) = v2;
  return result;
}

uint64_t sub_19D1602A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_19D1603C8(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_19D1603F4()
{
  type metadata accessor for CFString(0);
  sub_19D163684(&qword_1EB00F1C8, type metadata accessor for CFString);

  return sub_19D171320();
}

uint64_t sub_19D16047C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F1F8, &qword_19D17DD30);
    v1 = sub_19D1715D0();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_19D1632F4(v2, 1, &v4);

  return v4;
}

uint64_t sub_19D160530()
{
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for CFString(0);
  sub_19D163684(&qword_1EB00F1C8, type metadata accessor for CFString);
  result = sub_19D171330();
  __break(1u);
  return result;
}

uint64_t sub_19D160600(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) == 0) == (*(a2 + 16) != 0))
  {
    return 0;
  }

  type metadata accessor for CFDictionary(0);
  type metadata accessor for CFString(0);
  sub_19D163684(&qword_1EB00F1C8, type metadata accessor for CFString);
  v2 = sub_19D171320();
  v3 = sub_19D171320();
  sub_19D163684(&qword_1EB00F200, type metadata accessor for CFDictionary);
  v4 = sub_19D1712F0();

  return v4 & 1;
}

void sub_19D160770(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_19D135C7C(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_19D164318(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_19D164018(a1);
    sub_19D164080(a2, v7);

    sub_19D164018(v7);
  }
}

uint64_t sub_19D160804(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_19D1636CC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_19D163780(*(a2 + 56) + 32 * v3, v7);
  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = sub_19D171600();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

void sub_19D160888(uint64_t ObjectType, void *a2)
{
  v2 = ObjectType;
  if (ObjectType)
  {
    v3 = a2;
    ObjectType = swift_getObjectType();
    a2 = v3;
  }

  else
  {
    v4[1] = 0;
    v4[2] = 0;
  }

  v4[0] = v2;
  v4[3] = ObjectType;
  sub_19D160770(v4, a2);
}

void (*sub_19D1608E4(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 40) = a2;
  *(v5 + 48) = v2;
  v7 = *v2;
  if (*(v7 + 16) && (v8 = sub_19D1636CC(a2), (v9 & 1) != 0))
  {
    sub_19D163780(*(v7 + 56) + 32 * v8, v6);
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    v10 = sub_19D171600();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    v10 = 0;
  }

  v6[4] = v10;
  return sub_19D1609B0;
}

void sub_19D1609B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*a1 + 32);
      ObjectType = swift_getObjectType();
    }

    else
    {
      ObjectType = 0;
      v15 = 0;
      v16 = 0;
    }

    v8 = v2[5];
    v9 = v2[6];
    v14 = v3;
    v17 = ObjectType;
    v10 = v8;
    swift_unknownObjectRetain();
    sub_19D160770(&v14, v10);
    v11 = v2[4];
    swift_unknownObjectRelease();
  }

  else
  {
    if (v3)
    {
      v6 = *(*a1 + 32);
      v7 = swift_getObjectType();
    }

    else
    {
      v7 = 0;
      v15 = 0;
      v16 = 0;
    }

    v12 = v2[5];
    v13 = v2[6];
    v14 = v3;
    v17 = v7;
    sub_19D160770(&v14, v12);
  }

  free(v2);
}

uint64_t sub_19D160A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 16) && (v7 = sub_19D1636CC(a1), (v8 & 1) != 0))
  {
    sub_19D163780(*(a2 + 56) + 32 * v7, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F208, &qword_19D17DD38);
  v9 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v9 ^ 1u, 1, a3);
}

uint64_t sub_19D160B48(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_19D171460();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9, v10, v11, v12, v13, v14, v15);
  v17 = &v21 - v16;
  (*(v7 + 16))(&v21 - v16, a1, v6);
  v18 = *(a3 - 8);
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    (*(v7 + 8))(v17, v6);
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v22 + 1) = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
    (*(v18 + 32))(boxed_opaque_existential_0, v17, a3);
  }

  sub_19D160770(&v21, a2);
  return (*(v7 + 8))(a1, v6);
}

void (*sub_19D160CE8(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xB0uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[13] = a3;
  v8[14] = v3;
  v8[12] = a2;
  v10 = sub_19D171460();
  *(v9 + 120) = v10;
  v11 = *(v10 - 8);
  *(v9 + 128) = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    *(v9 + 136) = swift_coroFrameAlloc();
    *(v9 + 144) = swift_coroFrameAlloc();
    *(v9 + 152) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v9 + 136) = malloc(*(v11 + 64));
    *(v9 + 144) = malloc(v12);
    *(v9 + 152) = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v9 + 160) = v13;
  v15 = *v3;
  if (*(v15 + 16) && (v16 = sub_19D1636CC(a2), (v17 & 1) != 0))
  {
    sub_19D163780(*(v15 + 56) + 32 * v16, v9);
  }

  else
  {
    *v9 = 0u;
    *(v9 + 16) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F208, &qword_19D17DD38);
  v18 = swift_dynamicCast();
  v19 = *(a3 - 8);
  *(v9 + 168) = v19;
  (*(v19 + 56))(v14, v18 ^ 1u, 1, a3);
  return sub_19D160ED4;
}

void sub_19D160ED4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 160);
  v5 = *(*a1 + 168);
  if (a2)
  {
    v7 = *(v3 + 136);
    v6 = *(v3 + 144);
    v8 = *(v3 + 120);
    v9 = *(v3 + 104);
    v10 = *(*(v3 + 128) + 16);
    v10(v6, v4, v8);
    v10(v7, v6, v8);
    v11 = v5;
    v12 = (*(v5 + 48))(v7, 1, v9);
    v13 = *(v3 + 136);
    if (v12 == 1)
    {
      (*(*(v3 + 128) + 8))(*(v3 + 136), *(v3 + 120));
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
    }

    else
    {
      v19 = *(v3 + 104);
      *(v3 + 56) = v19;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 32));
      (*(v11 + 32))(boxed_opaque_existential_0, v13, v19);
    }

    v22 = *(v3 + 152);
    v21 = *(v3 + 160);
    v24 = *(v3 + 136);
    v23 = *(v3 + 144);
    v25 = *(v3 + 120);
    v26 = *(v3 + 128);
    v27 = *(v3 + 112);
    sub_19D160770(v3 + 32, *(v3 + 96));
    v28 = *(v26 + 8);
    v28(v23, v25);
    v28(v21, v25);
  }

  else
  {
    v14 = *(v3 + 152);
    v15 = *(v3 + 104);
    (*(*(v3 + 128) + 16))(v14, v4, *(v3 + 120));
    v16 = v5;
    v17 = (*(v5 + 48))(v14, 1, v15);
    v18 = *(v3 + 152);
    if (v17 == 1)
    {
      (*(*(v3 + 128) + 8))(*(v3 + 152), *(v3 + 120));
      *(v3 + 64) = 0u;
      *(v3 + 80) = 0u;
    }

    else
    {
      v29 = *(v3 + 104);
      *(v3 + 88) = v29;
      v30 = __swift_allocate_boxed_opaque_existential_0((v3 + 64));
      (*(v16 + 32))(v30, v18, v29);
    }

    v22 = *(v3 + 152);
    v21 = *(v3 + 160);
    v24 = *(v3 + 136);
    v23 = *(v3 + 144);
    v31 = *(v3 + 120);
    v32 = *(v3 + 128);
    v33 = *(v3 + 112);
    sub_19D160770(v3 + 64, *(v3 + 96));
    (*(v32 + 8))(v21, v31);
  }

  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v3);
}

uint64_t sub_19D1611A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a5;
  v47 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_19D171460();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v19 = MEMORY[0x1EEE9AC00](v9, v12, v13, v14, v15, v16, v17, v18);
  v21 = &v47 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 64);
  v31 = MEMORY[0x1EEE9AC00](v19, v24, v25, v26, v27, v28, v29, v30);
  v33 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v34, v35, v36, v37, v38, v39, v40);
  v42 = &v47 - v41;
  if (*(a2 + 16) && (v43 = sub_19D1636CC(a1), (v44 & 1) != 0))
  {
    sub_19D163780(*(a2 + 56) + 32 * v43, v49);
  }

  else
  {
    memset(v49, 0, sizeof(v49));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F208, &qword_19D17DD38);
  v45 = swift_dynamicCast();
  (*(v22 + 56))(v21, v45 ^ 1u, 1, AssociatedTypeWitness);
  if ((*(v22 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v21, v9);
    return (*(*(a3 - 8) + 56))(v48, 1, 1, a3);
  }

  else
  {
    (*(v22 + 32))(v42, v21, AssociatedTypeWitness);
    (*(v22 + 16))(v33, v42, AssociatedTypeWitness);
    sub_19D1713C0();
    return (*(v22 + 8))(v42, AssociatedTypeWitness);
  }
}

uint64_t sub_19D161488(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_19D171460();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9, v10, v11, v12, v13, v14, v15);
  v17 = &v20 - v16;
  (*(v7 + 16))(&v20 - v16, a1, v6);
  v18 = *(a3 - 8);
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    (*(v7 + 8))(v17, v6);
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v21 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0(&v20);
    sub_19D1713B0();
    (*(v18 + 8))(v17, a3);
  }

  sub_19D160770(&v20, a2);
  return (*(v7 + 8))(a1, v6);
}

void (*sub_19D161670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xD8uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[14] = a4;
  v10[15] = v4;
  v10[12] = a2;
  v10[13] = a3;
  v35 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v11 + 128) = AssociatedTypeWitness;
  v13 = sub_19D171460();
  v33 = *(v13 - 8);
  v34 = v13;
  if (v9)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v33 + 64));
  }

  v15 = v14;
  *(v11 + 136) = v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  if (v9)
  {
    v32 = swift_coroFrameAlloc();
    *(v11 + 144) = v32;
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v32 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    *(v11 + 144) = v32;
    v18 = malloc(v17);
  }

  v31 = v18;
  *(v11 + 152) = v18;
  v36 = a3;
  v19 = sub_19D171460();
  *(v11 + 160) = v19;
  v20 = *(v19 - 8);
  v21 = v20;
  *(v11 + 168) = v20;
  v22 = *(v20 + 64);
  if (v9)
  {
    *(v11 + 176) = swift_coroFrameAlloc();
    *(v11 + 184) = swift_coroFrameAlloc();
    *(v11 + 192) = swift_coroFrameAlloc();
    v23 = swift_coroFrameAlloc();
    *(v11 + 200) = v23;
    v24 = swift_coroFrameAlloc();
  }

  else
  {
    *(v11 + 176) = malloc(*(v20 + 64));
    *(v11 + 184) = malloc(v22);
    *(v11 + 192) = malloc(v22);
    v23 = malloc(v22);
    *(v11 + 200) = v23;
    v24 = malloc(v22);
  }

  v25 = v24;
  *(v11 + 208) = v24;
  v26 = *v4;
  if (*(v26 + 16) && (v27 = sub_19D1636CC(v35), (v28 & 1) != 0))
  {
    sub_19D163780(*(v26 + 56) + 32 * v27, v11);
  }

  else
  {
    *v11 = 0u;
    *(v11 + 16) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F208, &qword_19D17DD38);
  v29 = swift_dynamicCast();
  (*(v16 + 56))(v15, v29 ^ 1u, 1, AssociatedTypeWitness);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v33 + 8))(v15, v34);
    (*(*(v36 - 8) + 56))(v23, 1, 1);
  }

  else
  {
    (*(v16 + 32))(v31, v15, AssociatedTypeWitness);
    (*(v16 + 16))(v32, v31, AssociatedTypeWitness);
    sub_19D1713C0();
    (*(v16 + 8))(v31, AssociatedTypeWitness);
  }

  (*(v21 + 32))(v25, v23, v19);
  return sub_19D161AC8;
}

void sub_19D161AC8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 208);
  if (a2)
  {
    v6 = *(v3 + 176);
    v5 = *(v3 + 184);
    v7 = *(v3 + 160);
    v8 = *(v3 + 104);
    v9 = *(*(v3 + 168) + 16);
    v9(v5, v4, v7);
    v9(v6, v5, v7);
    v10 = *(v8 - 8);
    v11 = (*(v10 + 48))(v6, 1, v8);
    v12 = *(v3 + 176);
    if (v11 == 1)
    {
      (*(*(v3 + 168) + 8))(*(v3 + 176), *(v3 + 160));
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
    }

    else
    {
      v19 = *(v3 + 104);
      v18 = *(v3 + 112);
      *(v3 + 56) = *(v3 + 128);
      __swift_allocate_boxed_opaque_existential_0((v3 + 32));
      sub_19D1713B0();
      (*(v10 + 8))(v12, v19);
    }

    v20 = *(v3 + 208);
    v21 = *(v3 + 184);
    v35 = *(v3 + 192);
    v36 = *(v3 + 200);
    v22 = *(v3 + 168);
    v23 = *(v3 + 176);
    v25 = *(v3 + 152);
    v24 = *(v3 + 160);
    v27 = *(v3 + 136);
    v26 = *(v3 + 144);
    v28 = *(v3 + 120);
    sub_19D160770(v3 + 32, *(v3 + 96));
    v29 = *(v22 + 8);
    v29(v21, v24);
    v29(v20, v24);
  }

  else
  {
    v13 = *(v3 + 192);
    v14 = *(v3 + 104);
    (*(*(v3 + 168) + 16))(v13, v4, *(v3 + 160));
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v13, 1, v14);
    v17 = *(v3 + 192);
    if (v16 == 1)
    {
      (*(*(v3 + 168) + 8))(*(v3 + 192), *(v3 + 160));
      *(v3 + 64) = 0u;
      *(v3 + 80) = 0u;
    }

    else
    {
      v31 = *(v3 + 104);
      v30 = *(v3 + 112);
      *(v3 + 88) = *(v3 + 128);
      __swift_allocate_boxed_opaque_existential_0((v3 + 64));
      sub_19D1713B0();
      (*(v15 + 8))(v17, v31);
    }

    v20 = *(v3 + 208);
    v21 = *(v3 + 184);
    v35 = *(v3 + 192);
    v36 = *(v3 + 200);
    v32 = *(v3 + 168);
    v23 = *(v3 + 176);
    v25 = *(v3 + 152);
    v33 = *(v3 + 160);
    v27 = *(v3 + 136);
    v26 = *(v3 + 144);
    v34 = *(v3 + 120);
    sub_19D160770(v3 + 64, *(v3 + 96));
    (*(v32 + 8))(v20, v33);
  }

  free(v20);
  free(v36);
  free(v35);
  free(v21);
  free(v23);
  free(v25);
  free(v26);
  free(v27);

  free(v3);
}

uint64_t sub_19D161DDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_19D1636CC(a1), (v4 & 1) != 0))
  {
    sub_19D163780(*(a2 + 56) + 32 * v3, v15);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F208, &qword_19D17DD38);
  swift_getAssociatedTypeWitness();
  sub_19D171400();
  v5 = swift_dynamicCast();
  if ((v5 & 1) == 0 || !v16)
  {
    return 0;
  }

  *&v15[0] = v16;
  MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10, v11, v12);
  swift_getWitnessTable();
  v13 = sub_19D1713A0();

  return v13;
}

uint64_t sub_19D161F58(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v4, AssociatedTypeWitness, v5, v6, v7, v8, v9);
  (*(v11 + 16))(&v13 - v10, a1);
  return sub_19D1713C0();
}

void sub_19D162050(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v28[0] = a1;
    MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    KeyPath = swift_getKeyPath();
    v27[2] = v11;
    v27[3] = v13;
    v27[4] = MEMORY[0x1EEE9AC00](KeyPath, v15, v16, v17, v18, v19, v20, v21);
    v22 = sub_19D171400();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    WitnessTable = swift_getWitnessTable();
    v26 = sub_19D162230(sub_19D163900, v27, v22, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);

    a1 = sub_19D171400();
    a2 = v9;
  }

  else
  {
    v26 = 0;
    v28[1] = 0;
    v28[2] = 0;
  }

  v28[0] = v26;
  v28[3] = a1;
  sub_19D160770(v28, a2);
}

uint64_t sub_19D162200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + a3 - 24);
  v3 = *(a2 + a3 - 16);
  return sub_19D1713B0();
}

uint64_t sub_19D162230(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a8;
  v66 = a1;
  v67 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v68 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v16 = *(v70 + 64);
  v24 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17, v18, v19, v20, v21, v22, v23);
  v26 = &v55 - v25;
  v27 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v28, v29, v30, v31, v32, v33, v34);
  v64 = &v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_getAssociatedTypeWitness();
  v58 = *(v36 - 8);
  v59 = v36;
  v37 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v36, v38, v39, v40, v41, v42, v43, v44);
  v46 = &v55 - v45;
  v47 = sub_19D171430();
  if (!v47)
  {
    return sub_19D1713F0();
  }

  v69 = v47;
  v73 = sub_19D171560();
  v60 = sub_19D171570();
  sub_19D171510();
  result = sub_19D171420();
  if ((v69 & 0x8000000000000000) == 0)
  {
    v55 = v11;
    v56 = a5;
    v49 = 0;
    v61 = (v70 + 16);
    v62 = (v70 + 8);
    v63 = v8;
    while (!__OFADD__(v49, 1))
    {
      v70 = v49 + 1;
      v50 = sub_19D171450();
      v51 = v26;
      v52 = v26;
      v53 = AssociatedTypeWitness;
      (*v61)(v51);
      v50(v72, 0);
      v54 = v71;
      v66(v52, v68);
      if (v54)
      {
        (*v62)(v52, v53);
        (*(v58 + 8))(v46, v59);

        return (*(v55 + 32))(v57, v68, v56);
      }

      v71 = 0;
      (*v62)(v52, v53);
      sub_19D171550();
      result = sub_19D171440();
      ++v49;
      v26 = v52;
      if (v70 == v69)
      {
        (*(v58 + 8))(v46, v59);
        return v73;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_19D162650(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x70uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[9] = a5;
  v11[10] = v5;
  v11[7] = a3;
  v11[8] = a4;
  v11[6] = a2;
  v13 = *v5;
  if (*(v13 + 16) && (v14 = sub_19D1636CC(a2), (v15 & 1) != 0))
  {
    sub_19D163780(*(v13 + 56) + 32 * v14, v12);
  }

  else
  {
    *v12 = 0u;
    *(v12 + 16) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F208, &qword_19D17DD38);
  *(v12 + 88) = swift_getAssociatedTypeWitness();
  *(v12 + 96) = sub_19D171400();
  v16 = swift_dynamicCast();
  if ((v16 & 1) != 0 && (v24 = *(v12 + 40)) != 0)
  {
    *v12 = v24;
    MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21, v22, v23);
    swift_getWitnessTable();
    v25 = sub_19D1713A0();
  }

  else
  {
    v25 = 0;
  }

  *(v12 + 104) = 0;
  *(v12 + 32) = v25;
  return sub_19D162840;
}

void sub_19D162840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(*a1 + 32);
  if (a2)
  {
    if (v9)
    {
      v10 = v8[13];
      v11 = v8[11];
      v13 = v8[8];
      v12 = v8[9];
      v14 = v8[7];
      *v8 = v9;
      MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
      KeyPath = swift_getKeyPath();
      v52 = v13;
      v53 = v12;
      v54 = MEMORY[0x1EEE9AC00](KeyPath, v16, v17, v18, v19, v20, v21, v22);
      v23 = sub_19D171400();

      WitnessTable = swift_getWitnessTable();
      v26 = sub_19D162230(sub_19D164548, v51, v23, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);

      v27 = v8[12];
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v56 = 0;
      v57 = 0;
    }

    v46 = v8[10];
    v47 = v8[6];
    v55 = v26;
    v58 = v27;
    sub_19D160770(&v55, v47);
    v48 = v8[4];
  }

  else
  {
    if (v9)
    {
      v28 = v8[13];
      v29 = v8[11];
      v31 = v8[8];
      v30 = v8[9];
      v32 = v8[7];
      *v8 = v9;
      MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
      v33 = swift_getKeyPath();
      v52 = v31;
      v53 = v30;
      v54 = MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38, v39, v40);
      v41 = sub_19D171400();
      v42 = swift_getWitnessTable();
      v44 = sub_19D162230(sub_19D164548, v51, v41, v29, MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);

      v45 = v8[12];
    }

    else
    {
      v44 = 0;
      v45 = 0;
      v56 = 0;
      v57 = 0;
    }

    v49 = v8[10];
    v50 = v8[6];
    v55 = v44;
    v58 = v45;
    sub_19D160770(&v55, v50);
  }

  free(v8);
}

uint64_t sub_19D162B20(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_19D1636CC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_19D163780(*(a2 + 56) + 32 * v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F210, &qword_19D17DD70);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_19D162BBC(uint64_t a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F210, &qword_19D17DD70);
    a2 = v3;
  }

  else
  {
    v4[1] = 0;
    v4[2] = 0;
  }

  v4[0] = v2;
  v4[3] = a1;
  sub_19D160770(v4, a2);
}

void (*sub_19D162C28(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 48) = a2;
  *(v5 + 56) = v2;
  v7 = *v2;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_19D1636CC(a2);
    if (v10)
    {
      sub_19D163780(*(v7 + 56) + 32 * v9, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F210, &qword_19D17DD70);
      v11 = swift_dynamicCast();
      v8 = *(v6 + 40);
      if (!v11)
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  *(v6 + 32) = v8;
  return sub_19D162D10;
}

void sub_19D162D10(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F210, &qword_19D17DD70);
    }

    else
    {
      v4 = 0;
      v13 = 0;
      v14 = 0;
    }

    v6 = v2[6];
    v7 = v2[7];
    v12 = v3;
    v15 = v4;
    v8 = v6;

    sub_19D160770(&v12, v8);
    v9 = v2[4];
  }

  else
  {
    if (v3)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F210, &qword_19D17DD70);
    }

    else
    {
      v5 = 0;
      v13 = 0;
      v14 = 0;
    }

    v10 = v2[6];
    v11 = v2[7];
    v12 = v3;
    v15 = v5;
    sub_19D160770(&v12, v10);
  }

  free(v2);
}

void sub_19D162DF8(void **a1)
{
  v1 = *a1;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for CFString(0);
  sub_19D163684(&qword_1EB00F1C8, type metadata accessor for CFString);
  v1;
  sub_19D171330();
  __break(1u);
}

uint64_t sub_19D162EE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CFString(0);
  sub_19D163684(&qword_1EB00F1C8, type metadata accessor for CFString);
  result = sub_19D171320();
  *a1 = result;
  return result;
}

uint64_t sub_19D162F70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F1F8, &qword_19D17DD30);
    v3 = sub_19D1715D0();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;

  sub_19D1632F4(v4, 1, &v6);

  *a2 = v6;
  return result;
}

uint64_t sub_19D16302C(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16) == 0) == (*(*a2 + 16) != 0))
  {
    return 0;
  }

  type metadata accessor for CFDictionary(0);
  type metadata accessor for CFString(0);
  sub_19D163684(&qword_1EB00F1C8, type metadata accessor for CFString);
  v2 = sub_19D171320();
  v3 = sub_19D171320();
  sub_19D163684(&qword_1EB00F200, type metadata accessor for CFDictionary);
  v4 = sub_19D1712F0();

  return v4 & 1;
}

uint64_t sub_19D163168(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_19D1712F0();
}

uint64_t sub_19D1631D4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_19D171310();
}

uint64_t sub_19D163220()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_19D171300();
}

uint64_t sub_19D163290()
{
  sub_19D171680();
  v1 = *v0;
  swift_getWitnessTable();
  sub_19D171300();
  return sub_19D1716C0();
}

void sub_19D1632F4(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  sub_19D1644C0(a1 + 32, &v37);
  v7 = v37;
  v39 = v37;
  sub_19D135C7C(v38, v36);
  v8 = *a3;
  v9 = sub_19D1636CC(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v15) = v10;
  if (v8[3] < v14)
  {
    sub_19D163C2C(v14, a2 & 1);
    v16 = *a3;
    v9 = sub_19D1636CC(v7);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for CFString(0);
    v9 = sub_19D171630();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v9;
  sub_19D163AAC();
  v9 = v20;
  if (v15)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F250, &unk_19D17E250);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v36);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v21[6] + 8 * v9) = v7;
  sub_19D135C7C(v36, (v21[7] + 32 * v9));
  v22 = v21[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v13)
  {
    v21[2] = v23;
    if (v4 != 1)
    {
      v15 = a1 + 72;
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        sub_19D1644C0(v15, &v37);
        v7 = v37;
        v39 = v37;
        sub_19D135C7C(v38, v36);
        v25 = *a3;
        v26 = sub_19D1636CC(v7);
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v13 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v13)
        {
          goto LABEL_22;
        }

        a2 = v27;
        if (v25[3] < v30)
        {
          sub_19D163C2C(v30, 1);
          v31 = *a3;
          v26 = sub_19D1636CC(v7);
          if ((a2 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v33 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v33[6] + 8 * v26) = v7;
        sub_19D135C7C(v36, (v33[7] + 32 * v26));
        v34 = v33[2];
        v13 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v13)
        {
          goto LABEL_23;
        }

        ++v24;
        v33[2] = v35;
        v15 += 40;
        if (v4 == v24)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_19D1714D0();
  MEMORY[0x19EAF6850](0xD00000000000001BLL, 0x800000019D17AF70);
  type metadata accessor for CFString(0);
  sub_19D171580();
  MEMORY[0x19EAF6850](39, 0xE100000000000000);
  sub_19D171590();
  __break(1u);
}

uint64_t sub_19D163684(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19D1636CC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_19D171680();
  type metadata accessor for CFString(0);
  sub_19D163684(&qword_1EB00F0D8, type metadata accessor for CFString);
  sub_19D171300();
  v4 = sub_19D1716C0();

  return sub_19D163F0C(a1, v4);
}

uint64_t sub_19D163780(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_19D1638D0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  return sub_19D161F58(a1);
}

id sub_19D163AAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F1F8, &qword_19D17DD30);
  v2 = *v0;
  v3 = sub_19D1715B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_19D163780(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_19D135C7C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_19D163C2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F1F8, &qword_19D17DD30);
  result = sub_19D1715C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_19D135C7C(v22, v34);
      }

      else
      {
        sub_19D163780(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_19D171680();
      type metadata accessor for CFString(0);
      sub_19D163684(&qword_1EB00F0D8, type metadata accessor for CFString);
      sub_19D171300();
      result = sub_19D1716C0();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_19D135C7C(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_19D163F0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_19D163684(&qword_1EB00F0D8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_19D1712F0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_19D164018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F208, &qword_19D17DD38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_19D164080@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_19D1636CC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19D163AAC();
      v11 = v13;
    }

    sub_19D135C7C((*(v11 + 56) + 32 * v8), a2);
    sub_19D164120(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_19D164120(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19D1714C0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_19D171680();
      type metadata accessor for CFString(0);
      sub_19D163684(&qword_1EB00F0D8, type metadata accessor for CFString);
      v12 = v11;
      sub_19D171300();
      v13 = sub_19D1716C0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

_OWORD *sub_19D164318(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_19D1636CC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_19D163AAC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_19D163C2C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_19D1636CC(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_19D171630();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_19D135C7C(a1, v20);
  }

  else
  {
    sub_19D164458(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_19D164458(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_19D135C7C(a3, (a4[7] + 32 * a1));
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

uint64_t sub_19D1644C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F248, &qword_19D17E248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CVMutablePixelBuffer.init(unsafeBuffer:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;
  type metadata accessor for CVBuffer(0);
  result = sub_19D157A14(&v5, v3, &v6);
  *a2 = v6;
  return result;
}

uint64_t CVMutablePixelBuffer.init(_:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x15CuLL);
  type metadata accessor for CVBuffer(0);
  v5 = v4;
  sub_19D157724(sub_19D1646A0, v4, &v10, &v11);
  if (v2)
  {
    v6 = v10;
    sub_19D156240(__dst);
    sub_19D156294();
    result = swift_allocError();
    *v8 = v6;
  }

  else
  {
    sub_19D156240(__dst);
    v9 = v11;
    result = sub_19D157A14(&v9, v5, &v12);
    *a2 = v12;
  }

  return result;
}

uint64_t sub_19D1646A0(CVPixelBufferRef *a1)
{
  v3 = *(v1 + 16);
  v4 = v3[1];
  v5 = v3[2];
  v6 = *v3;
  memcpy(v10, v3, sizeof(v10));
  v7 = CVPixelBufferCreationAttributes.dictionaryRepresentation.getter();
  v8 = CVPixelBufferCreate(0, v4, v5, v6, v7, a1);

  return v8;
}

void CVMutablePixelBuffer.init(unsafeBacking:matching:)(void *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, a2, 0x15CuLL);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F258, &qword_19D17E260);
  sub_19D157724(sub_19D164830, v6, &v10, &v11);
  if (v3)
  {
    v7 = v10;
    sub_19D156240(__dst);
    sub_19D156294();
    swift_allocError();
    *v8 = v7;
  }

  else
  {
    sub_19D156240(__dst);
    type metadata accessor for CVBuffer(0);
    sub_19D157A14(&v11, v9, &v13);

    *a3 = v13;
  }
}

uint64_t sub_19D164830(CVPixelBufferRef *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3;
  memcpy(v9, v4, sizeof(v9));
  v6 = CVPixelBufferCreationAttributes.dictionaryRepresentation.getter();
  v7 = CVPixelBufferCreateWithIOSurface(0, v5, v6, a1);

  return v7;
}

uint64_t _s9CoreVideo20CVMutablePixelBufferV32accessUnsafeMutableRawPlaneBytesyxxSayAA07CVPixeleJ10PropertiesV10properties_Sw5bytestGKYTXEKlF(void (*a1)(uint64_t))
{
  CVPixelBufferLockBaseAddress(*v1, 0);
  v8 = *v1;
  v3 = _s9CoreVideo26CVPixelBufferRepresentablePAARi_zrlE15planePropertiesSayAA0cd5PlaneG0VGvg(&type metadata for CVMutablePixelBuffer, &protocol witness table for CVMutablePixelBuffer);
  v7 = v1;
  v4 = sub_19D1649C8(sub_19D164B40, &v6, v3);

  a1(v4);

  return CVPixelBufferUnlockBaseAddress(*v1, 1uLL);
}

uint64_t sub_19D1649C8(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_19D164C84(0, v4, 0);
  v8 = 0;
  v5 = v26;
  for (i = (a3 + 48); ; i += 3)
  {
    v10 = *i;
    v20 = v8;
    v21 = *(i - 1);
    v22 = v10;
    a1(&v23, &v20);
    if (v3)
    {
      break;
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v26 = v5;
    v15 = *(v5 + 16);
    v14 = *(v5 + 24);
    if (v15 >= v14 >> 1)
    {
      v18 = v24;
      v19 = v23;
      sub_19D164C84((v14 > 1), v15 + 1, 1);
      v12 = v18;
      v11 = v19;
      v5 = v26;
    }

    ++v8;
    *(v5 + 16) = v15 + 1;
    v16 = v5 + 40 * v15;
    *(v16 + 32) = v11;
    *(v16 + 48) = v12;
    *(v16 + 64) = v13;
    if (v4 == v8)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

char *sub_19D164B40@<X0>(size_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  *a2 = a1[1];
  a2[1] = v6;
  a2[2] = v7;
  result = CVPixelBufferGetBaseAddressOfPlane(*v4, v5);
  if ((v7 * v6) >> 64 == (v7 * v6) >> 63)
  {
    v9 = &result[v7 * v6];
    if (!result)
    {
      v9 = 0;
    }

    a2[3] = result;
    a2[4] = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void **assignWithTake for CVMutablePixelBuffer(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CVMutablePixelBuffer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for CVMutablePixelBuffer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_19D164C84(char *a1, int64_t a2, char a3)
{
  result = sub_19D164CA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19D164CA4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F260, &unk_19D17E2F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

__n128 CVPixelBufferCreationAttributes.size.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 CVPixelBufferCreationAttributes.size.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

unint64_t CVPixelBufferCreationAttributes.backing.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_19D135AE4(v2);
}

unint64_t CVPixelBufferCreationAttributes.backing.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_19D135AF4(*(v1 + 24));
  *(v1 + 24) = v2;
  return result;
}

uint64_t CVPixelBufferCreationAttributes.planeAlignment.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t CVPixelBufferCreationAttributes.planeAlignment.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t CVPixelBufferCreationAttributes.bytesPerRowAlignment.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t CVPixelBufferCreationAttributes.bytesPerRowAlignment.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

double sub_19D164FE8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

__n128 CVPixelBufferCreationAttributes.extendedPixels.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 CVPixelBufferCreationAttributes.extendedPixels.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 104) = *(a1 + 32);
  return result;
}

uint64_t sub_19D165060(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

__n128 sub_19D1650AC@<Q0>(uint64_t a1@<X8>)
{
  sub_19D15D970(v9);
  v2 = v9[13];
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v2;
  *(a1 + 224) = v10;
  v3 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v3;
  v4 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v4;
  v5 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v5;
  v6 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v6;
  v7 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v7;
  result = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = result;
  return result;
}

__n128 CVPixelBufferCreationAttributes.formatDescription.setter(uint64_t a1)
{
  v3 = *(v1 + 232);
  v4 = *(v1 + 248);
  v5 = *(v1 + 168);
  v6 = *(v1 + 200);
  v21[4] = *(v1 + 184);
  v21[5] = v6;
  v21[6] = *(v1 + 216);
  v21[7] = v3;
  v7 = *(v1 + 136);
  v21[0] = *(v1 + 120);
  v21[1] = v7;
  v21[2] = *(v1 + 152);
  v21[3] = v5;
  v8 = *(v1 + 296);
  v9 = *(v1 + 328);
  v21[12] = *(v1 + 312);
  v21[13] = v9;
  v10 = *(v1 + 264);
  v11 = *(v1 + 280);
  v21[8] = v4;
  v21[9] = v10;
  v22 = *(v1 + 344);
  v21[10] = v11;
  v21[11] = v8;
  sub_19D1602A4(v21, &qword_1EB00F278, &qword_19D17E318);
  v12 = *(a1 + 192);
  v13 = *(a1 + 208);
  v14 = *(a1 + 160);
  *(v1 + 296) = *(a1 + 176);
  *(v1 + 312) = v12;
  *(v1 + 328) = v13;
  v15 = *(a1 + 96);
  *(v1 + 232) = *(a1 + 112);
  v16 = *(a1 + 144);
  *(v1 + 248) = *(a1 + 128);
  *(v1 + 264) = v16;
  *(v1 + 280) = v14;
  v17 = *(a1 + 32);
  *(v1 + 168) = *(a1 + 48);
  v18 = *(a1 + 80);
  *(v1 + 184) = *(a1 + 64);
  *(v1 + 200) = v18;
  *(v1 + 216) = v15;
  result = *a1;
  v20 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v20;
  *(v1 + 344) = *(a1 + 224);
  *(v1 + 152) = v17;
  return result;
}

void *CVPixelBufferCreationAttributes.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  *&__src[0] = v3;
  CVPixelBufferAttributes.subscript.getter(KeyPath, __dst);

  if (BYTE4(__dst[0]) == 1 || (v5 = __dst[0], v6 = swift_getKeyPath(), v70 = v3, CVPixelBufferAttributes.subscript.getter(v6, v68), , v69 == 1))
  {

    sub_19D135B04(__src);
    return memcpy(a2, __src, 0x15CuLL);
  }

  else
  {
    v27 = a2;
    v31 = v68[0];
    v32 = v68[1];
    v8 = swift_getKeyPath();
    v9 = sub_19D16CB04(v8, &unk_19D17E360, &qword_1EB00F348, qword_19D17EB18);
    v10 = MEMORY[0x1E69E6530];
    sub_19D160A80(v9, v3, MEMORY[0x1E69E6530], __src);

    v30 = *&__src[0];
    v29 = BYTE8(__src[0]);
    v11 = swift_getKeyPath();
    v12 = sub_19D16CB04(v11, &unk_19D17E360, &qword_1EB00F348, qword_19D17EB18);
    sub_19D160A80(v12, v3, v10, __src);

    v28 = *&__src[0];
    v13 = BYTE8(__src[0]);
    v14 = swift_getKeyPath();
    __dst[0] = v3;
    CVPixelBufferAttributes.subscript.getter(v14, v94);

    v15 = MEMORY[0x1E69E7CC0];
    *&__src[0] = MEMORY[0x1E69E7CC0];
    sub_19D15F3E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F268, &qword_19D17E310);
    sub_19D16B90C();
    sub_19D1714B0();
    *(&__src[1] + 1) = 1;
    v33[0] = v15;
    sub_19D1714B0();
    *&__src[7] = sub_19D16047C(v15);
    sub_19D15D970(&v53);
    *(&__src[18] + 8) = v64;
    *(&__src[19] + 8) = v65;
    *(&__src[20] + 8) = v66;
    *(&__src[16] + 8) = v62;
    *(&__src[17] + 8) = v63;
    *(&__src[14] + 8) = v60;
    *(&__src[15] + 8) = v61;
    *(&__src[10] + 8) = v56;
    *(&__src[11] + 8) = v57;
    *(&__src[12] + 8) = v58;
    *(&__src[13] + 8) = v59;
    *(&__src[7] + 8) = v53;
    *(&__src[8] + 8) = v54;
    *(&__src[9] + 8) = v55;
    LODWORD(__src[0]) = v5;
    *(&__src[0] + 1) = v31;
    *(&__src[3] + 1) = v30;
    LOBYTE(__src[4]) = v29;
    LOBYTE(__src[3]) = v13;
    *(&__src[4] + 8) = v94[0];
    *(&__src[5] + 8) = v94[1];
    BYTE8(__src[6]) = v95;
    *(&__src[2] + 1) = v28;
    *&__src[2] = *&v34[0];
    v92 = __src[0];
    v91 = __src[6];
    v89 = __src[4];
    v90 = __src[5];
    v87 = __src[2];
    v88 = __src[3];
    v73 = v54;
    v72 = v53;
    v77 = v58;
    v76 = v57;
    v74 = v55;
    v75 = v56;
    v81 = v62;
    v80 = v61;
    BYTE8(__src[21]) = v67;
    *(&__src[21] + 9) = 0;
    BYTE11(__src[21]) = 0;
    *&__src[1] = v32;
    v93 = v32;
    v16 = *(&__src[1] + 1);
    v78 = v59;
    v79 = v60;
    v86 = v67;
    v85 = v66;
    v84 = v65;
    v82 = v63;
    v83 = v64;

    v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F280, &qword_19D17E3E0);
    *&__src[0] = v17;
    __dst[0] = swift_getKeyPath();
    LOBYTE(v12) = sub_19D171350();

    if (v12)
    {
      v18 = sub_19D15F180();
      sub_19D1611A0(@"PixelFormatDescription", v3, &type metadata for TypedCFDictionary, v18, __src);
      if (*&__src[0])
      {
        sub_19D159398(*&__src[0], &v38);
      }

      else
      {

        v50 = v65;
        v51 = v66;
        v52 = v67;
        v46 = v61;
        v47 = v62;
        v49 = v64;
        v48 = v63;
        v42 = v57;
        v43 = v58;
        v45 = v60;
        v44 = v59;
        v38 = v53;
        v39 = v54;
        v41 = v56;
        v40 = v55;
      }

      v36[12] = v84;
      v36[13] = v85;
      v37 = v86;
      v36[8] = v80;
      v36[9] = v81;
      v36[11] = v83;
      v36[10] = v82;
      v36[4] = v76;
      v36[5] = v77;
      v36[7] = v79;
      v36[6] = v78;
      v36[0] = v72;
      v36[1] = v73;
      v36[3] = v75;
      v36[2] = v74;
      sub_19D1602A4(v36, &qword_1EB00F278, &qword_19D17E318);
      swift_getKeyPath();
      v19 = sub_19D16C754();
      v20 = MEMORY[0x1E69E6370];
      sub_19D160A80(v19, v3, MEMORY[0x1E69E6370], __src);

      v21 = __src[0] & 1;
      swift_getKeyPath();
      v22 = sub_19D16C754();
      sub_19D160A80(v22, v3, v20, __src);

      v23 = __src[0] & 1;
      swift_getKeyPath();
      v24 = sub_19D16C754();
      sub_19D160A80(v24, v3, v20, __src);

      v25 = __src[0] & 1;
      swift_getKeyPath();
      *&__src[0] = v3;
      CVPixelBufferAttributes.subscript.getter(__dst);

      v26 = __dst[0];
      sub_19D135AF4(v16);
      v34[0] = v92;
      v34[4] = v89;
      v34[5] = v90;
      v34[6] = v91;
      v34[2] = v87;
      v34[3] = v88;
      *(&v34[18] + 8) = v49;
      *(&v34[19] + 8) = v50;
      *(&v34[20] + 8) = v51;
      *(&v34[16] + 8) = v47;
      *(&v34[17] + 8) = v48;
      *(&v34[14] + 8) = v45;
      *(&v34[15] + 8) = v46;
      *(&v34[10] + 8) = v41;
      *(&v34[11] + 8) = v42;
      *(&v34[12] + 8) = v43;
      *(&v34[13] + 8) = v44;
      *(&v34[7] + 8) = v38;
      *(&v34[8] + 8) = v39;
      *&v34[1] = v93;
      *(&v34[1] + 1) = v26;
      *&v34[7] = v3;
      BYTE8(v34[21]) = v52;
      *(&v34[9] + 8) = v40;
      BYTE9(v34[21]) = v21;
      BYTE10(v34[21]) = v23;
      BYTE11(v34[21]) = v25;
      memcpy(__dst, v34, 0x15CuLL);
      CVOpenGLESContext::operator delete(__dst);
      memcpy(v27, __dst, 0x15CuLL);
      __src[0] = v92;
      __src[4] = v89;
      __src[5] = v90;
      __src[6] = v91;
      __src[3] = v88;
      __src[2] = v87;
      *(&__src[18] + 8) = v49;
      *(&__src[19] + 8) = v50;
      *(&__src[20] + 8) = v51;
      *(&__src[16] + 8) = v47;
      *(&__src[17] + 8) = v48;
      *(&__src[14] + 8) = v45;
      *(&__src[15] + 8) = v46;
      *(&__src[10] + 8) = v41;
      *(&__src[11] + 8) = v42;
      *(&__src[12] + 8) = v43;
      *(&__src[13] + 8) = v44;
      *(&__src[7] + 8) = v38;
      *(&__src[8] + 8) = v39;
      *&__src[1] = v93;
      *(&__src[1] + 1) = v26;
      *&__src[7] = v3;
      BYTE8(__src[21]) = v52;
      *(&__src[9] + 8) = v40;
      BYTE9(__src[21]) = v21;
      BYTE10(__src[21]) = v23;
      BYTE11(__src[21]) = v25;
      sub_19D16C878(v34, v33);
      return sub_19D156240(__src);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t CVPixelBufferAttributes.subscript.getter@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X8>)
{
  return sub_19D1684AC(a1, &qword_1EB00F2A0, &qword_19D17E478, a2);
}

{
  return sub_19D168670(a1, &qword_1EB00F2A8, &qword_19D17E480, a2);
}

uint64_t CVPixelBufferAttributes.subscript.getter(uint64_t a1)
{
  return sub_19D1685F8(a1, &unk_19D17E360, &qword_1EB00F348, qword_19D17EB18);
}

{
  return sub_19D1689BC(a1, sub_19D16C754);
}

uint64_t CVPixelBufferAttributes.init(_:)@<X0>(void *__src@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, 0x15CuLL);
  *a2 = __dst[14];
  KeyPath = swift_getKeyPath();
  v34 = *&__dst[1];
  LOBYTE(v35) = 0;

  sub_19D16CD70(&v34, KeyPath, &qword_1EB00F2A0, &qword_19D17E478);

  v4 = swift_getKeyPath();
  v5 = __dst[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F288, &qword_19D17E468);
  *&v34 = v4;
  v33[0] = swift_getKeyPath();
  v6 = sub_19D171350();

  if (v6)
  {
    LODWORD(v34) = v5;
    BYTE4(v34) = 0;
    v8 = @"PixelFormatType";
    sub_19D160B48(&v34, v8, MEMORY[0x1E69E7668]);

    v9 = swift_getKeyPath();
    *&v34 = __dst[3];
    sub_19D135AE4(__dst[3]);
    sub_19D16CE8C(&v34, v9, &qword_1EB00F2B8, &qword_19D17E488);

    v10 = swift_getKeyPath();
    v11 = __dst[7];
    v12 = __dst[8];
    v13 = *a2;

    v14 = sub_19D16CB04(v10, &unk_19D17E360, &qword_1EB00F348, qword_19D17EB18);

    *&v34 = v11;
    BYTE8(v34) = v12;
    v15 = MEMORY[0x1E69E6530];
    sub_19D160B48(&v34, v14, MEMORY[0x1E69E6530]);

    v16 = swift_getKeyPath();
    v17 = __dst[5];
    v18 = __dst[6];
    v19 = *a2;

    v20 = sub_19D16CB04(v16, &unk_19D17E360, &qword_1EB00F348, qword_19D17EB18);

    *&v34 = v17;
    BYTE8(v34) = v18;
    sub_19D160B48(&v34, v20, v15);

    v21 = swift_getKeyPath();
    v49[0] = *&__dst[9];
    v49[1] = *&__dst[11];
    v50 = __dst[13];
    sub_19D16CF60(v49, v21, &qword_1EB00F2A8, &qword_19D17E480);

    v22 = swift_getKeyPath();
    *&v34 = __dst[4];
    sub_19D16D0F0(&v34, v22, &qword_1EB00F2D0, &qword_19D17E4C0);

    v23 = swift_getKeyPath();
    v46 = *&__dst[39];
    v47 = *&__dst[41];
    v48 = __dst[43];
    v42 = *&__dst[31];
    v43 = *&__dst[33];
    v44 = *&__dst[35];
    v45 = *&__dst[37];
    v38 = *&__dst[23];
    v39 = *&__dst[25];
    v40 = *&__dst[27];
    v41 = *&__dst[29];
    v34 = *&__dst[15];
    v35 = *&__dst[17];
    v36 = *&__dst[19];
    v37 = *&__dst[21];
    sub_19D16D8E8(&__dst[15], v33, &qword_1EB00F278, &qword_19D17E318);
    sub_19D16D2AC(&v34, v23, &qword_1EB00F280, &qword_19D17E3E0);

    swift_getKeyPath();
    LOBYTE(v20) = BYTE1(__dst[43]);
    v24 = *a2;

    v25 = sub_19D16C754();

    LOBYTE(v34) = v20;
    v26 = MEMORY[0x1E69E6370];
    sub_19D160B48(&v34, v25, MEMORY[0x1E69E6370]);

    swift_getKeyPath();
    v27 = BYTE2(__dst[43]);
    v28 = *a2;

    v29 = sub_19D16C754();

    LOBYTE(v34) = v27;
    sub_19D160B48(&v34, v29, v26);

    swift_getKeyPath();
    v30 = BYTE3(__dst[43]);
    v31 = *a2;

    v32 = sub_19D16C754();

    LOBYTE(v34) = v30;
    sub_19D160B48(&v34, v32, v26);
    sub_19D156240(__dst);
  }

  else
  {
    __break(1u);
  }

  return result;
}

CoreVideo::CVPixelBufferAttributes __swiftcall CVPixelBufferAttributes.init(dictionaryRepresentation:)(CFDictionaryRef dictionaryRepresentation)
{
  v2 = v1;
  result.storage.storage._rawValue = sub_19D160530();
  v2->storage.storage._rawValue = result.storage.storage._rawValue;
  return result;
}

unint64_t sub_19D166254(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F1F8, &qword_19D17DD30);
    v2 = sub_19D1715D0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for CFString(0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v28 = v8 >> 6;

    v29 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v34 >= v28)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v34);
      ++v29;
      if (v7)
      {
        while (1)
        {
          v35 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v36 = v35 | (v34 << 6);
          v37 = (*(a1 + 48) + 16 * v36);
          v39 = *v37;
          v38 = v37[1];
          sub_19D163780(*(a1 + 56) + 32 * v36, v47);
          *&v46 = v39;
          *(&v46 + 1) = v38;
          v52 = v46;
          v53 = v47[0];
          v54 = v47[1];

          v40 = sub_19D171360();

          sub_19D135C7C(&v53, &v45);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F2C0, &qword_19D17E4B0);
          swift_dynamicCast();
          sub_19D135C7C((v49 + 8), (&v50 + 8));
          sub_19D135C7C((&v50 + 8), v48);
          sub_19D135C7C(v48, &v50);
          result = sub_19D1636CC(v40);
          if (v41)
          {
            v30 = *(v2 + 48);
            v31 = *(v30 + 8 * result);
            *(v30 + 8 * result) = v40;
            v32 = result;

            v33 = (*(v2 + 56) + 32 * v32);
            __swift_destroy_boxed_opaque_existential_0(v33);
            result = sub_19D135C7C(&v50, v33);
            v29 = v34;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_41;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v40;
            result = sub_19D135C7C(&v50, (*(v2 + 56) + 32 * result));
            v42 = *(v2 + 16);
            v43 = __OFADD__(v42, 1);
            v44 = v42 + 1;
            if (v43)
            {
              goto LABEL_42;
            }

            *(v2 + 16) = v44;
            v29 = v34;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v34 = v29;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = __clz(__rbit64(v7)) | (v12 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_19D163780(*(a1 + 56) + 32 * v15, &v53);
      *&v52 = v18;
      *(&v52 + 1) = v17;
      v50 = v52;
      v51[0] = v53;
      v51[1] = v54;

      v19 = sub_19D171360();

      sub_19D135C7C(v51, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F2C0, &qword_19D17E4B0);
      swift_dynamicCast();
      sub_19D135C7C((v49 + 8), (&v46 + 8));
      sub_19D135C7C((&v46 + 8), v49);
      v20 = *(v2 + 40);
      sub_19D171680();
      sub_19D16D834(&qword_1EB00F0D8, type metadata accessor for CFString);
      sub_19D171300();
      result = sub_19D1716C0();
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v10 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v13) = v19;
      result = sub_19D135C7C(v49, (*(v2 + 56) + 32 * v13));
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t CVPixelBufferAttributes.subscript.setter(uint64_t *a1, uint64_t a2)
{
  sub_19D16CD70(a1, a2, &qword_1EB00F2A0, &qword_19D17E478);
}

{
  sub_19D16CF60(a1, a2, &qword_1EB00F2A8, &qword_19D17E480);
}

{
  sub_19D16D0F0(a1, a2, &qword_1EB00F2D0, &qword_19D17E4C0);
}

uint64_t CVPixelBufferAttributes.subscript.setter(int *a1, uint64_t a2)
{
  sub_19D16D47C(a1, a2, &qword_1EB00F288, &qword_19D17E468);
}

uint64_t CVPixelBufferAttributes.subscript.setter(unint64_t *a1, uint64_t a2)
{
  sub_19D16CE8C(a1, a2, &qword_1EB00F2B8, &qword_19D17E488);
}

uint64_t CVPixelBufferAttributes.subscript.setter(__int128 *a1, uint64_t a2)
{
  sub_19D16D2AC(a1, a2, &qword_1EB00F280, &qword_19D17E3E0);
}

CoreVideo::CVPixelBufferAttributes_optional __swiftcall CVPixelBufferAttributes.init(merging:)(Swift::OpaquePointer merging)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  sub_19D1699DC(merging._rawValue, v1);
  result.value.storage.storage._rawValue = v3;
  result.is_nil = v4;
  return result;
}

uint64_t (*CVPixelBufferAttributes.pixelFormatTypes.modify(void *a1))()
{
  a1[1] = v1;
  v3 = *v1;
  *a1 = CVPixelBufferAttributes.pixelFormatTypes.getter();
  return sub_19D166D74;
}

uint64_t (*CVPixelBufferAttributes.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v4 = *v2;
  CVPixelBufferAttributes.subscript.getter(a2, (a1 + 2));
  return sub_19D166E0C;
}

void (*CVPixelBufferAttributes.subscript.modify(uint64_t *a1, Swift::Int a2))(uint64_t **a1, uint64_t a2)
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
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  v7 = *v2;
  CVPixelBufferAttributes.subscript.getter(a2, v5);
  return sub_19D166EF0;
}

unint64_t (*CVPixelBufferAttributes.subscript.modify(uint64_t *a1, uint64_t a2))(unint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v4 = *v2;
  CVPixelBufferAttributes.subscript.getter(a1);
  return sub_19D166FB4;
}

unint64_t sub_19D166FB4(unint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v6 = *a1;

    sub_19D135AE4(v4);
    sub_19D16CE8C(&v6, v2, &qword_1EB00F2B8, &qword_19D17E488);

    return sub_19D135AF4(v4);
  }

  else
  {
    v6 = *a1;

    sub_19D16CE8C(&v6, v2, &qword_1EB00F2B8, &qword_19D17E488);
  }
}

BOOL sub_19D1670E8(void *a1, uint64_t a2)
{
  v7 = *v2;
  sub_19D15F3E8();
  sub_19D171480();
  sub_19D15F440();
  v4 = sub_19D171350();
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v5 = a2;
    sub_19D171490();
  }

  *a1 = v5;
  return (v4 & 1) == 0;
}

uint64_t (*CVPixelBufferAttributes.subscript.modify(void *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v4 = *v2;
  CVPixelBufferAttributes.subscript.getter(a2, a1);
  return sub_19D167210;
}

void (*CVPixelBufferAttributes.subscript.modify(uint64_t *a1, Swift::Int a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x88uLL);
  }

  *a1 = v5;
  *(v5 + 120) = a2;
  *(v5 + 128) = v2;
  v7 = *v2;
  CVPixelBufferAttributes.subscript.getter(a2, v5 + 80);
  return sub_19D1672F4;
}

void (*CVPixelBufferAttributes.subscript.modify(uint64_t *a1, uint64_t a2))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x3B0uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 936) = v2;
  *(v5 + 928) = a2;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F280, &qword_19D17E3E0);
  *(v6 + 232) = a2;
  v8 = (v6 + 232);
  *(v6 + 464) = swift_getKeyPath();
  v9 = sub_19D171350();

  if (v9)
  {
    v11 = sub_19D15F180();
    sub_19D1611A0(@"PixelFormatDescription", v7, &type metadata for TypedCFDictionary, v11, v6 + 232);
    if (*v8)
    {
      sub_19D159398(*v8, v6);
    }

    else
    {
      sub_19D15D970(v6);
    }

    return sub_19D167478;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*CVPixelBufferAttributes.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  v7 = *v2;
  v8 = sub_19D16CB04(a2, &unk_19D17E360, &qword_1EB00F348, qword_19D17EB18);
  sub_19D160A80(v8, v7, MEMORY[0x1E69E6530], v6 + 16);

  v9 = *(v6 + 24);
  *v6 = *(v6 + 16);
  *(v6 + 8) = v9;
  return sub_19D1675B4;
}

uint64_t (*CVPixelBufferAttributes.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = *v2;
  v5 = sub_19D16C754();
  sub_19D160A80(v5, v4, MEMORY[0x1E69E6370], a1 + 17);

  *(a1 + 16) = *(a1 + 17);
  return sub_19D16768C;
}

uint64_t _s9CoreVideo31CVPixelBufferCreationAttributesV17formatDescriptionAA0c6FormatH0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v24 = *(v1 + 344);
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v4 = *(v1 + 168);
  v5 = *(v1 + 200);
  v21[4] = *(v1 + 184);
  v21[5] = v5;
  v21[6] = *(v1 + 216);
  v21[7] = v2;
  v6 = *(v1 + 136);
  v21[0] = *(v1 + 120);
  v21[1] = v6;
  v21[2] = *(v1 + 152);
  v21[3] = v4;
  v7 = *(v1 + 296);
  v8 = *(v1 + 328);
  v22 = *(v1 + 312);
  v23 = v8;
  v10 = *(v1 + 264);
  v9 = *(v1 + 280);
  v21[8] = v3;
  v21[9] = v10;
  v11 = *(v1 + 264);
  v12 = *(v1 + 280);
  v13 = *(v1 + 296);
  v21[10] = v9;
  v21[11] = v13;
  v14 = *(v1 + 328);
  *(a1 + 192) = v22;
  *(a1 + 208) = v14;
  *(a1 + 224) = *(v1 + 344);
  v15 = *(v1 + 232);
  *(a1 + 128) = *(v1 + 248);
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 176) = v7;
  v16 = *(v1 + 168);
  v17 = *(v1 + 200);
  *(a1 + 64) = *(v1 + 184);
  *(a1 + 80) = v17;
  *(a1 + 96) = *(v1 + 216);
  *(a1 + 112) = v15;
  v18 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v18;
  *(a1 + 32) = *(v1 + 152);
  *(a1 + 48) = v16;
  return sub_19D16D8E8(v21, v20, &qword_1EB00F278, &qword_19D17E318);
}

__n128 _s9CoreVideo31CVPixelBufferCreationAttributesV15pixelFormatType4size13compatibility20bytesPerRowAlignment05planeO014extendedPixelsAcA0chI0V_AA11CVImageSizeVAA0cH11DescriptionV13CompatibilityVSiSgArA0cD7PaddingVSgtcfC_0@<Q0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a1;
  v14 = *a2;
  v15 = a2[1];
  v27 = *a3;
  *(a9 + 24) = 1;
  v16 = MEMORY[0x1E69E7CC0];
  *&v30[0] = MEMORY[0x1E69E7CC0];
  sub_19D15F3E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F268, &qword_19D17E310);
  sub_19D16B90C();
  sub_19D1714B0();
  *(a9 + 112) = sub_19D16047C(v16);
  sub_19D15D970(v30);
  v17 = v30[12];
  v18 = v30[13];
  v19 = v30[10];
  *(a9 + 296) = v30[11];
  *(a9 + 312) = v17;
  *(a9 + 328) = v18;
  v20 = v30[6];
  *(a9 + 232) = v30[7];
  v21 = v30[9];
  *(a9 + 248) = v30[8];
  *(a9 + 264) = v21;
  *(a9 + 280) = v19;
  v22 = v30[2];
  *(a9 + 168) = v30[3];
  v23 = v30[5];
  *(a9 + 184) = v30[4];
  *(a9 + 200) = v23;
  *(a9 + 216) = v20;
  v24 = v30[1];
  *(a9 + 120) = v30[0];
  *(a9 + 136) = v24;
  *(a9 + 152) = v22;
  result = *a8;
  v26 = *(a8 + 16);
  *(a9 + 72) = *a8;
  *(a9 + 344) = v31;
  *(a9 + 345) = 0;
  *(a9 + 347) = 0;
  *a9 = v13;
  *(a9 + 8) = v14;
  *(a9 + 16) = v15;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5 & 1;
  *(a9 + 48) = a7 & 1;
  *(a9 + 88) = v26;
  *(a9 + 104) = *(a8 + 32);
  *(a9 + 32) = v27;
  *(a9 + 40) = a6;
  return result;
}

void *CVBufferRef.CreationAttributes.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  *&__src[0] = v3;
  CVBufferRef.Attributes.subscript.getter(KeyPath, __dst);

  if (BYTE4(__dst[0]) == 1 || (v5 = __dst[0], v6 = swift_getKeyPath(), v70 = v3, CVBufferRef.Attributes.subscript.getter(v6, v68), , v69 == 1))
  {

    sub_19D135B04(__src);
    return memcpy(a2, __src, 0x15CuLL);
  }

  else
  {
    v27 = a2;
    v31 = v68[0];
    v32 = v68[1];
    v8 = swift_getKeyPath();
    v9 = sub_19D16CB04(v8, &unk_19D17E508, &qword_1EB00F328, &qword_19D17EAF0);
    v10 = MEMORY[0x1E69E6530];
    sub_19D160A80(v9, v3, MEMORY[0x1E69E6530], __src);

    v30 = *&__src[0];
    v29 = BYTE8(__src[0]);
    v11 = swift_getKeyPath();
    v12 = sub_19D16CB04(v11, &unk_19D17E508, &qword_1EB00F328, &qword_19D17EAF0);
    sub_19D160A80(v12, v3, v10, __src);

    v28 = *&__src[0];
    v13 = BYTE8(__src[0]);
    v14 = swift_getKeyPath();
    __dst[0] = v3;
    CVBufferRef.Attributes.subscript.getter(v14, v94);

    v15 = MEMORY[0x1E69E7CC0];
    *&__src[0] = MEMORY[0x1E69E7CC0];
    sub_19D15F3E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F268, &qword_19D17E310);
    sub_19D16B90C();
    sub_19D1714B0();
    *(&__src[1] + 1) = 1;
    v33[0] = v15;
    sub_19D1714B0();
    *&__src[7] = sub_19D16047C(v15);
    sub_19D15D970(&v53);
    *(&__src[18] + 8) = v64;
    *(&__src[19] + 8) = v65;
    *(&__src[20] + 8) = v66;
    *(&__src[16] + 8) = v62;
    *(&__src[17] + 8) = v63;
    *(&__src[14] + 8) = v60;
    *(&__src[15] + 8) = v61;
    *(&__src[10] + 8) = v56;
    *(&__src[11] + 8) = v57;
    *(&__src[12] + 8) = v58;
    *(&__src[13] + 8) = v59;
    *(&__src[7] + 8) = v53;
    *(&__src[8] + 8) = v54;
    *(&__src[9] + 8) = v55;
    LODWORD(__src[0]) = v5;
    *(&__src[0] + 1) = v31;
    *(&__src[3] + 1) = v30;
    LOBYTE(__src[4]) = v29;
    LOBYTE(__src[3]) = v13;
    *(&__src[4] + 8) = v94[0];
    *(&__src[5] + 8) = v94[1];
    BYTE8(__src[6]) = v95;
    *(&__src[2] + 1) = v28;
    *&__src[2] = *&v34[0];
    v92 = __src[0];
    v91 = __src[6];
    v89 = __src[4];
    v90 = __src[5];
    v87 = __src[2];
    v88 = __src[3];
    v73 = v54;
    v72 = v53;
    v77 = v58;
    v76 = v57;
    v74 = v55;
    v75 = v56;
    v81 = v62;
    v80 = v61;
    BYTE8(__src[21]) = v67;
    *(&__src[21] + 9) = 0;
    BYTE11(__src[21]) = 0;
    *&__src[1] = v32;
    v93 = v32;
    v16 = *(&__src[1] + 1);
    v78 = v59;
    v79 = v60;
    v86 = v67;
    v85 = v66;
    v84 = v65;
    v82 = v63;
    v83 = v64;

    v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F2E0, &qword_19D17E588);
    *&__src[0] = v17;
    __dst[0] = swift_getKeyPath();
    LOBYTE(v12) = sub_19D171350();

    if (v12)
    {
      v18 = sub_19D15F180();
      sub_19D1611A0(@"PixelFormatDescription", v3, &type metadata for TypedCFDictionary, v18, __src);
      if (*&__src[0])
      {
        sub_19D159398(*&__src[0], &v38);
      }

      else
      {

        v50 = v65;
        v51 = v66;
        v52 = v67;
        v46 = v61;
        v47 = v62;
        v49 = v64;
        v48 = v63;
        v42 = v57;
        v43 = v58;
        v45 = v60;
        v44 = v59;
        v38 = v53;
        v39 = v54;
        v41 = v56;
        v40 = v55;
      }

      v36[12] = v84;
      v36[13] = v85;
      v37 = v86;
      v36[8] = v80;
      v36[9] = v81;
      v36[11] = v83;
      v36[10] = v82;
      v36[4] = v76;
      v36[5] = v77;
      v36[7] = v79;
      v36[6] = v78;
      v36[0] = v72;
      v36[1] = v73;
      v36[3] = v75;
      v36[2] = v74;
      sub_19D1602A4(v36, &qword_1EB00F278, &qword_19D17E318);
      swift_getKeyPath();
      v19 = sub_19D16CBE4();
      v20 = MEMORY[0x1E69E6370];
      sub_19D160A80(v19, v3, MEMORY[0x1E69E6370], __src);

      v21 = __src[0] & 1;
      swift_getKeyPath();
      v22 = sub_19D16CBE4();
      sub_19D160A80(v22, v3, v20, __src);

      v23 = __src[0] & 1;
      swift_getKeyPath();
      v24 = sub_19D16CBE4();
      sub_19D160A80(v24, v3, v20, __src);

      v25 = __src[0] & 1;
      swift_getKeyPath();
      *&__src[0] = v3;
      CVBufferRef.Attributes.subscript.getter(__dst);

      v26 = __dst[0];
      sub_19D135AF4(v16);
      v34[0] = v92;
      v34[4] = v89;
      v34[5] = v90;
      v34[6] = v91;
      v34[2] = v87;
      v34[3] = v88;
      *(&v34[18] + 8) = v49;
      *(&v34[19] + 8) = v50;
      *(&v34[20] + 8) = v51;
      *(&v34[16] + 8) = v47;
      *(&v34[17] + 8) = v48;
      *(&v34[14] + 8) = v45;
      *(&v34[15] + 8) = v46;
      *(&v34[10] + 8) = v41;
      *(&v34[11] + 8) = v42;
      *(&v34[12] + 8) = v43;
      *(&v34[13] + 8) = v44;
      *(&v34[7] + 8) = v38;
      *(&v34[8] + 8) = v39;
      *&v34[1] = v93;
      *(&v34[1] + 1) = v26;
      *&v34[7] = v3;
      BYTE8(v34[21]) = v52;
      *(&v34[9] + 8) = v40;
      BYTE9(v34[21]) = v21;
      BYTE10(v34[21]) = v23;
      BYTE11(v34[21]) = v25;
      memcpy(__dst, v34, 0x15CuLL);
      CVOpenGLESContext::operator delete(__dst);
      memcpy(v27, __dst, 0x15CuLL);
      __src[0] = v92;
      __src[4] = v89;
      __src[5] = v90;
      __src[6] = v91;
      __src[3] = v88;
      __src[2] = v87;
      *(&__src[18] + 8) = v49;
      *(&__src[19] + 8) = v50;
      *(&__src[20] + 8) = v51;
      *(&__src[16] + 8) = v47;
      *(&__src[17] + 8) = v48;
      *(&__src[14] + 8) = v45;
      *(&__src[15] + 8) = v46;
      *(&__src[10] + 8) = v41;
      *(&__src[11] + 8) = v42;
      *(&__src[12] + 8) = v43;
      *(&__src[13] + 8) = v44;
      *(&__src[7] + 8) = v38;
      *(&__src[8] + 8) = v39;
      *&__src[1] = v93;
      *(&__src[1] + 1) = v26;
      *&__src[7] = v3;
      BYTE8(__src[21]) = v52;
      *(&__src[9] + 8) = v40;
      BYTE9(__src[21]) = v21;
      BYTE10(__src[21]) = v23;
      BYTE11(__src[21]) = v25;
      sub_19D16CD08(v34, v33);
      return sub_19D16CD40(__src);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_19D168344@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = a1;
  swift_getKeyPath();
  v8 = sub_19D171350();

  if (v8)
  {
    sub_19D160A80(@"PixelFormatType", v7, MEMORY[0x1E69E7668], &v13);
    if ((v13 & 0x100000000) == 0)
    {
      v12 = v13;
      goto LABEL_7;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F290, &qword_19D17E470);
    sub_19D16C8B0();
    sub_19D160A80(@"PixelFormatType", v7, v10, &v13);
    result = v13;
    if (v13)
    {
      if (*(v13 + 16))
      {
        v11 = *(v13 + 32);

        v12 = v11;
LABEL_7:
        result = CVPixelFormatType.init(rawValue:)(v12, &v13);
        *a4 = v13;
        *(a4 + 4) = 0;
        return result;
      }
    }

    *a4 = 0;
    *(a4 + 4) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CVBufferRef.Attributes.subscript.getter@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X8>)
{
  return sub_19D1684AC(a1, &qword_1EB00F2F0, &qword_19D17E618, a2);
}

{
  return sub_19D168670(a1, &qword_1EB00F2F8, &qword_19D17E620, a2);
}

uint64_t sub_19D1684AC@<X0>(Swift::Int a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  height[0] = a1;
  KeyPath = swift_getKeyPath();
  v8 = sub_19D171350();

  if (v8)
  {
    result = sub_19D160A80(@"Width", v7, MEMORY[0x1E69E6530], height);
    if ((height[1] & 1) != 0 || (v10 = height[0], result = sub_19D160A80(@"Height", v7, MEMORY[0x1E69E6530], height), LOBYTE(height[1]) == 1))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 1;
    }

    else
    {
      result = CVImageSize.init(width:height:)(v10, height[0]).width;
      *a4 = *height;
      *(a4 + 16) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CVBufferRef.Attributes.subscript.getter(uint64_t a1)
{
  return sub_19D1685F8(a1, &unk_19D17E508, &qword_1EB00F328, &qword_19D17EAF0);
}

{
  return sub_19D1689BC(a1, sub_19D16CBE4);
}

uint64_t sub_19D1685F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *v4;
  v6 = sub_19D16CB04(a1, a2, a3, a4);
  sub_19D160A80(v6, v5, MEMORY[0x1E69E6530], &v8);

  return v8;
}

uint64_t sub_19D168670@<X0>(Swift::Int a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v26.left = a1;
  swift_getKeyPath();
  v8 = sub_19D171350();

  if (v8)
  {
    v10 = MEMORY[0x1E69E6530];
    sub_19D160A80(@"ExtendedPixelsLeft", v7, MEMORY[0x1E69E6530], &v26);
    if (LOBYTE(v26.right))
    {
      left = 0;
    }

    else
    {
      left = v26.left;
    }

    sub_19D160A80(@"ExtendedPixelsRight", v7, v10, &v26);
    if (LOBYTE(v26.right))
    {
      v12 = 0;
    }

    else
    {
      v12 = v26.left;
    }

    sub_19D160A80(@"ExtendedPixelsTop", v7, v10, &v26);
    if (LOBYTE(v26.right))
    {
      v13 = 0;
    }

    else
    {
      v13 = v26.left;
    }

    sub_19D160A80(@"ExtendedPixelsBottom", v7, v10, &v26);
    if (LOBYTE(v26.right))
    {
      v14 = 0;
    }

    else
    {
      v14 = v26.left;
    }

    v27 = CVPixelBufferPadding.init(left:right:top:bottom:)(left, v12, v13, v14);
    v15 = v27.left;
    right = v27.right;
    top = v27.top;
    bottom = v27.bottom;
    v26 = v27;
    v19 = sub_19D16DE64();
    v24 = *v19;
    v25 = v19[1];
    sub_19D16C92C();
    result = sub_19D171350();
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if ((result & 1) == 0)
    {
      v20 = v15;
      v21 = right;
      v22 = top;
      v23 = bottom;
    }

    *a4 = v20;
    *(a4 + 8) = v21;
    *(a4 + 16) = v22;
    *(a4 + 24) = v23;
    *(a4 + 32) = result & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19D168880(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  *&v17[0] = a1;
  KeyPath = swift_getKeyPath();
  v8 = sub_19D171350();

  if (v8)
  {
    v9 = sub_19D15F180();
    sub_19D1611A0(@"PixelFormatDescription", v7, &type metadata for TypedCFDictionary, v9, &KeyPath);
    if (KeyPath)
    {
      sub_19D159398(KeyPath, a4);
    }

    else
    {
      sub_19D15D970(v17);
      v10 = v17[13];
      *(a4 + 192) = v17[12];
      *(a4 + 208) = v10;
      *(a4 + 224) = v18;
      v11 = v17[9];
      *(a4 + 128) = v17[8];
      *(a4 + 144) = v11;
      v12 = v17[11];
      *(a4 + 160) = v17[10];
      *(a4 + 176) = v12;
      v13 = v17[5];
      *(a4 + 64) = v17[4];
      *(a4 + 80) = v13;
      v14 = v17[7];
      *(a4 + 96) = v17[6];
      *(a4 + 112) = v14;
      v15 = v17[1];
      *a4 = v17[0];
      *(a4 + 16) = v15;
      v16 = v17[3];
      *(a4 + 32) = v17[2];
      *(a4 + 48) = v16;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19D1689BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *v2;
  v4 = a2();
  sub_19D160A80(v4, v3, MEMORY[0x1E69E6370], &v6);

  return v6;
}

uint64_t sub_19D168A34@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_getKeyPath();
  v6 = sub_19D171350();

  if (v6)
  {
    result = sub_19D162B20(@"IOSurfaceProperties", v5);
    if (result)
    {
      if (!*(result + 16))
      {

        result = 1;
      }
    }

    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19D168B20(void (*a1)(_BYTE *, void *), void (*a2)(void *__return_ptr, const void *))
{
  memcpy(__dst, v2, 0x15CuLL);
  a1(__dst, v7);
  a2(v7, v2);
  v5 = sub_19D1603F4();

  return v5;
}

uint64_t CVBufferRef.Attributes.init(_:)@<X0>(void *__src@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, 0x15CuLL);
  *a2 = __dst[14];
  KeyPath = swift_getKeyPath();
  v34 = *&__dst[1];
  LOBYTE(v35) = 0;

  sub_19D16CD70(&v34, KeyPath, &qword_1EB00F2F0, &qword_19D17E618);

  v4 = swift_getKeyPath();
  v5 = __dst[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F2E8, &qword_19D17E610);
  *&v34 = v4;
  v33[0] = swift_getKeyPath();
  v6 = sub_19D171350();

  if (v6)
  {
    LODWORD(v34) = v5;
    BYTE4(v34) = 0;
    v8 = @"PixelFormatType";
    sub_19D160B48(&v34, v8, MEMORY[0x1E69E7668]);

    v9 = swift_getKeyPath();
    *&v34 = __dst[3];
    sub_19D135AE4(__dst[3]);
    sub_19D16CE8C(&v34, v9, &qword_1EB00F300, &qword_19D17E628);

    v10 = swift_getKeyPath();
    v11 = __dst[7];
    v12 = __dst[8];
    v13 = *a2;

    v14 = sub_19D16CB04(v10, &unk_19D17E508, &qword_1EB00F328, &qword_19D17EAF0);

    *&v34 = v11;
    BYTE8(v34) = v12;
    v15 = MEMORY[0x1E69E6530];
    sub_19D160B48(&v34, v14, MEMORY[0x1E69E6530]);

    v16 = swift_getKeyPath();
    v17 = __dst[5];
    v18 = __dst[6];
    v19 = *a2;

    v20 = sub_19D16CB04(v16, &unk_19D17E508, &qword_1EB00F328, &qword_19D17EAF0);

    *&v34 = v17;
    BYTE8(v34) = v18;
    sub_19D160B48(&v34, v20, v15);

    v21 = swift_getKeyPath();
    v49[0] = *&__dst[9];
    v49[1] = *&__dst[11];
    v50 = __dst[13];
    sub_19D16CF60(v49, v21, &qword_1EB00F2F8, &qword_19D17E620);

    v22 = swift_getKeyPath();
    *&v34 = __dst[4];
    sub_19D16D0F0(&v34, v22, &qword_1EB00F308, &qword_19D17E650);

    v23 = swift_getKeyPath();
    v46 = *&__dst[39];
    v47 = *&__dst[41];
    v48 = __dst[43];
    v42 = *&__dst[31];
    v43 = *&__dst[33];
    v44 = *&__dst[35];
    v45 = *&__dst[37];
    v38 = *&__dst[23];
    v39 = *&__dst[25];
    v40 = *&__dst[27];
    v41 = *&__dst[29];
    v34 = *&__dst[15];
    v35 = *&__dst[17];
    v36 = *&__dst[19];
    v37 = *&__dst[21];
    sub_19D16D8E8(&__dst[15], v33, &qword_1EB00F278, &qword_19D17E318);
    sub_19D16D2AC(&v34, v23, &qword_1EB00F2E0, &qword_19D17E588);

    swift_getKeyPath();
    LOBYTE(v20) = BYTE1(__dst[43]);
    v24 = *a2;

    v25 = sub_19D16CBE4();

    LOBYTE(v34) = v20;
    v26 = MEMORY[0x1E69E6370];
    sub_19D160B48(&v34, v25, MEMORY[0x1E69E6370]);

    swift_getKeyPath();
    v27 = BYTE2(__dst[43]);
    v28 = *a2;

    v29 = sub_19D16CBE4();

    LOBYTE(v34) = v27;
    sub_19D160B48(&v34, v29, v26);

    swift_getKeyPath();
    v30 = BYTE3(__dst[43]);
    v31 = *a2;

    v32 = sub_19D16CBE4();

    LOBYTE(v34) = v30;
    sub_19D160B48(&v34, v32, v26);
    sub_19D16CD40(__dst);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9CoreVideo23CVPixelBufferAttributesV03rawE0SDySSs8Sendable_pGvg_0()
{
  v1 = *v0;
  sub_19D1603F4();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F2C0, &qword_19D17E4B0);
  result = sub_19D171330();
  __break(1u);
  return result;
}

void _s9CoreVideo23CVPixelBufferAttributesV03rawE0ACSDySSs8Sendable_pG_tcfC_0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_19D166254(a1);

  CVOpenGLESContext::operator delete(v3);
  *a2 = v4;
}

uint64_t CVBufferRef.Attributes.subscript.setter(uint64_t *a1, uint64_t a2)
{
  sub_19D16CD70(a1, a2, &qword_1EB00F2F0, &qword_19D17E618);
}

{
  sub_19D16CF60(a1, a2, &qword_1EB00F2F8, &qword_19D17E620);
}

{
  sub_19D16D0F0(a1, a2, &qword_1EB00F308, &qword_19D17E650);
}

uint64_t CVBufferRef.Attributes.subscript.setter(int *a1, uint64_t a2)
{
  sub_19D16D47C(a1, a2, &qword_1EB00F2E8, &qword_19D17E610);
}

uint64_t CVBufferRef.Attributes.subscript.setter(unint64_t *a1, uint64_t a2)
{
  sub_19D16CE8C(a1, a2, &qword_1EB00F300, &qword_19D17E628);
}

uint64_t sub_19D169328(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v13 = *v6;

  v14 = sub_19D16CB04(a3, a4, a5, a6);

  v16 = a1;
  v17 = a2 & 1;
  sub_19D160B48(&v16, v14, MEMORY[0x1E69E6530]);
}

uint64_t CVBufferRef.Attributes.subscript.setter(__int128 *a1, uint64_t a2)
{
  sub_19D16D2AC(a1, a2, &qword_1EB00F2E0, &qword_19D17E588);
}

uint64_t sub_19D1694F4(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = *v3;

  v8 = a3(a2);

  v10 = a1;
  sub_19D160B48(&v10, v8, MEMORY[0x1E69E6370]);
}

uint64_t sub_19D169584()
{
  sub_19D15F3E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F268, &qword_19D17E310);
  sub_19D16B90C();
  return sub_19D1714B0();
}

void CVBufferRef.Attributes.init(pixelFormatTypes:size:compatibility:bytesPerRowAlignment:planeAlignment:extendedPixels:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>)
{
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *a3;
  v17 = sub_19D16C980(MEMORY[0x1E69E7CC0]);
  v18 = sub_19D166254(v17);

  CVOpenGLESContext::operator delete(v18);
  *a9 = v19;
  if (!a1 || *(a1 + 16))
  {
    v20 = sub_19D15D078();
    v21 = @"PixelFormatType";
    sub_19D162050(a1, v21, &type metadata for CVPixelFormatType, v20, &off_1F1088F80, v22, v23, v24);
    KeyPath = swift_getKeyPath();
    v41 = v13;
    v42 = v14;
    v43 = v15;
    sub_19D16CD70(&v41, KeyPath, &qword_1EB00F2F0, &qword_19D17E618);

    v26 = swift_getKeyPath();
    v41 = v16;
    sub_19D16D0F0(&v41, v26, &qword_1EB00F308, &qword_19D17E650);

    v27 = swift_getKeyPath();
    v28 = *a9;

    v29 = sub_19D16CB04(v27, &unk_19D17E508, &qword_1EB00F328, &qword_19D17EAF0);

    v41 = a4;
    LOBYTE(v42) = a5 & 1;
    v30 = MEMORY[0x1E69E6530];
    sub_19D160B48(&v41, v29, MEMORY[0x1E69E6530]);

    v31 = swift_getKeyPath();
    v32 = *a9;

    v33 = sub_19D16CB04(v31, &unk_19D17E508, &qword_1EB00F328, &qword_19D17EAF0);

    v41 = a6;
    LOBYTE(v42) = a7 & 1;
    sub_19D160B48(&v41, v33, v30);

    v34 = swift_getKeyPath();
    sub_19D16CF60(a8, v34, &qword_1EB00F2F8, &qword_19D17E620);

    v35 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F300, &qword_19D17E628);
    v41 = v35;
    swift_getKeyPath();
    LOBYTE(v32) = sub_19D171350();

    if (v32)
    {
      v36 = @"IOSurfaceProperties";
      v37 = sub_19D16C980(MEMORY[0x1E69E7CC0]);
      sub_19D162BBC(v37, v36);

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void _s9CoreVideo23CVPixelBufferAttributesV16pixelFormatTypesSayAA0cG4TypeVGSgvs_0(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    __break(1u);
  }

  else
  {
    v2 = sub_19D15D078();
    v3 = @"PixelFormatType";

    sub_19D162050(a1, v3, &type metadata for CVPixelFormatType, v2, &off_1F1088F80, v4, v5, v6);
  }
}

void sub_19D1699DC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  resolvedDictionaryOut[1] = *MEMORY[0x1E69E9840];
  resolvedDictionaryOut[0] = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_19D171520();
    v5 = 32;
    do
    {
      v6 = *(a1 + v5);

      sub_19D1603F4();

      sub_19D1714F0();
      v7 = *(v12 + 16);
      sub_19D171530();
      sub_19D171540();
      sub_19D171500();
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  type metadata accessor for CFDictionary(0);
  v8 = sub_19D1713D0();

  CVPixelBufferCreateResolvedAttributesDictionary(0, v8, resolvedDictionaryOut);

  if (resolvedDictionaryOut[0])
  {
    v9 = resolvedDictionaryOut[0];
    v10 = sub_19D160530();
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t _s9CoreVideo23CVPixelBufferAttributesV16pixelFormatTypesSayAA0cG4TypeVGSgvg_0()
{
  v1 = *v0;
  sub_19D160A80(@"PixelFormatType", *v0, MEMORY[0x1E69E7668], &v13);
  if ((v13 & 0x100000000) != 0)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F290, &qword_19D17E470);
    sub_19D16C8B0();
    sub_19D160A80(@"PixelFormatType", v1, v2, &v13);
    v3 = v13;
    if (v13)
    {
      v4 = *(v13 + 16);
      if (v4)
      {
        v13 = MEMORY[0x1E69E7CC0];
        sub_19D16B7E8(0, v4, 0);
        v5 = 32;
        v6 = v13;
        do
        {
          CVPixelFormatType.init(rawValue:)(*(v3 + v5), &v12);
          v7 = v12;
          v13 = v6;
          v9 = *(v6 + 16);
          v8 = *(v6 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_19D16B7E8((v8 > 1), v9 + 1, 1);
            v6 = v13;
          }

          *(v6 + 16) = v9 + 1;
          *(v6 + 4 * v9 + 32) = v7;
          v5 += 4;
          --v4;
        }

        while (v4);
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F2C8, &qword_19D17E4B8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_19D17E300;
    CVPixelFormatType.init(rawValue:)(v10, (v6 + 32));
  }

  return v6;
}

void sub_19D169CF8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && !*(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    v2 = sub_19D15D078();

    v3 = @"PixelFormatType";
    sub_19D162050(v1, v3, &type metadata for CVPixelFormatType, v2, &off_1F1088F80, v4, v5, v6);
  }
}

uint64_t (*CVBufferRef.Attributes.pixelFormatTypes.modify(void *a1))()
{
  a1[1] = v1;
  v3 = *v1;
  *a1 = CVPixelBufferAttributes.pixelFormatTypes.getter();
  return sub_19D16DAD4;
}

void sub_19D169DD0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (!v2 || *(v2 + 16))
    {
      v9 = a1[1];
      v10 = sub_19D15D078();
      v11 = @"PixelFormatType";
      sub_19D162050(v2, v11, &type metadata for CVPixelFormatType, v10, &off_1F1088F80, v12, v13, v14);
      return;
    }

    goto LABEL_11;
  }

  if (v2 && !*(v2 + 16))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v3 = a1[1];
  v4 = sub_19D15D078();

  v5 = @"PixelFormatType";
  sub_19D162050(v2, v5, &type metadata for CVPixelFormatType, v4, &off_1F1088F80, v6, v7, v8);
}

void *sub_19D169ED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *(*a3)(void *__return_ptr, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v9[1] = v5;
  result = a3(v9, v6);
  v8 = BYTE4(v9[0]);
  *a4 = v9[0];
  *(a4 + 4) = v8;
  return result;
}

uint64_t sub_19D169F48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a3;
  v9 = *(a1 + 4);
  v11 = *a1;
  v12 = v9;

  sub_19D16D47C(&v11, v8, a5, a6);
}

uint64_t (*CVBufferRef.Attributes.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v4 = *v2;
  CVBufferRef.Attributes.subscript.getter(a2, (a1 + 2));
  return sub_19D16A034;
}

uint64_t sub_19D16A050(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 20);
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a2)
  {
    v12 = *(a1 + 16);
    v13 = v6;

    v10 = &v12;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = v6;

    v10 = &v14;
  }

  sub_19D16D47C(v10, v8, a3, a4);
}

double sub_19D16A100@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v11 = v5;
  a3(&v9, v6);
  v7 = v10;
  result = *&v9;
  *a4 = v9;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_19D16A170(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a3;
  v9 = *(a1 + 16);
  v11 = *a1;
  v12 = v9;

  sub_19D16CD70(&v11, v8, a5, a6);
}

void (*CVBufferRef.Attributes.subscript.modify(uint64_t *a1, Swift::Int a2))(uint64_t **a1, uint64_t a2)
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
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  v7 = *v2;
  CVBufferRef.Attributes.subscript.getter(a2, v5);
  return sub_19D16A290;
}

void sub_19D16A2AC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = (*a1)[1];
  v8 = *(*a1 + 16);
  v10 = (*a1)[3];
  v9 = (*a1)[4];
  v11[0] = **a1;
  v11[1] = v7;
  v12 = v8;

  sub_19D16CD70(v11, v10, a3, a4);

  free(v6);
}

void *sub_19D16A358@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *(*a3)(void *__return_ptr, uint64_t)@<X3>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v8[1] = v5;
  result = a3(v8, v6);
  *a4 = v8[0];
  return result;
}

uint64_t sub_19D16A3D4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unint64_t), uint64_t *a6, uint64_t *a7)
{
  v10 = *a3;
  v12 = *a1;

  a5(v12);
  sub_19D16CE8C(&v12, v10, a6, a7);
}

unint64_t (*CVBufferRef.Attributes.subscript.modify(uint64_t *a1, uint64_t a2))(unint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v4 = *v2;
  CVBufferRef.Attributes.subscript.getter(a1);
  return sub_19D16A4D4;
}

unint64_t sub_19D16A4D4(unint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v6 = *a1;

    sub_19D135AE4(v4);
    sub_19D16CE8C(&v6, v2, &qword_1EB00F300, &qword_19D17E628);

    return sub_19D135AF4(v4);
  }

  else
  {
    v6 = *a1;

    sub_19D16CE8C(&v6, v2, &qword_1EB00F300, &qword_19D17E628);
  }
}

uint64_t sub_19D16A5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = a1;
  KeyPath = swift_getKeyPath();
  v8 = sub_19D171350();

  if (v8)
  {
    KeyPath = 0;
    sub_19D16CAB0();
    sub_19D1716D0();
    sub_19D160A80(@"MetalCompatibility", v7, MEMORY[0x1E69E6370], &KeyPath);
    if (KeyPath != 2 && (KeyPath & 1) != 0)
    {
      v10 = sub_19D159CA4();
      sub_19D1670E8(&KeyPath, *v10);
    }

    sub_19D160A80(@"CGBitmapContextCompatibility", v7, MEMORY[0x1E69E6370], &KeyPath);
    if (KeyPath != 2 && (KeyPath & 1) != 0)
    {
      v11 = sub_19D159CB0();
      sub_19D1670E8(&KeyPath, *v11);
    }

    result = sub_19D160A80(@"CGImageCompatibility", v7, MEMORY[0x1E69E6370], &KeyPath);
    if (KeyPath != 2 && (KeyPath & 1) != 0)
    {
      v12 = sub_19D159CBC();
      result = sub_19D1670E8(&KeyPath, *v12);
    }

    *a4 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_19D16A790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *(*a3)(void *__return_ptr, uint64_t)@<X3>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v8[1] = v5;
  result = a3(v8, v6);
  *a4 = v8[0];
  return result;
}

uint64_t sub_19D16A7F8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a3;
  v10 = *a1;

  sub_19D16D0F0(&v10, v8, a5, a6);
}

uint64_t (*CVBufferRef.Attributes.subscript.modify(void *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v4 = *v2;
  CVBufferRef.Attributes.subscript.getter(a2, a1);
  return sub_19D16A8DC;
}

uint64_t sub_19D16A8F8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1[1];
  v6 = a1[2];
  v9 = *a1;

  sub_19D16D0F0(&v9, v7, a3, a4);
}

double sub_19D16A984@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, void (*a3)(_OWORD *__return_ptr, void)@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  a3(v8, *a2);
  result = *v8;
  v6 = v8[1];
  *a4 = v8[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v9;
  return result;
}

uint64_t sub_19D16A9F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a3;
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  v12 = *(a1 + 32);

  sub_19D16CF60(v11, v8, a5, a6);
}

void (*CVBufferRef.Attributes.subscript.modify(uint64_t *a1, Swift::Int a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x88uLL);
  }

  *a1 = v5;
  *(v5 + 120) = a2;
  *(v5 + 128) = v2;
  v7 = *v2;
  CVBufferRef.Attributes.subscript.getter(a2, v5 + 80);
  return sub_19D16AB18;
}

void sub_19D16AB34(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v8 = *(*a1 + 120);
  v7 = *(*a1 + 128);
  if (a2)
  {
    v9 = *a1;
  }

  else
  {
    v9 = *a1 + 40;
  }

  v10 = *(v6 + 96);
  *v9 = *(v6 + 80);
  *(v9 + 16) = v10;
  *(v9 + 32) = *(v6 + 112);

  sub_19D16CF60(v9, v8, a3, a4);

  free(v6);
}

__n128 sub_19D16ABEC@<Q0>(uint64_t *a1@<X0>, void *a2@<X1>, void (*a3)(_OWORD *__return_ptr, void)@<X3>, uint64_t a4@<X8>)
{
  v12 = *a1;
  a3(v13, *a2);
  v5 = v13[13];
  *(a4 + 192) = v13[12];
  *(a4 + 208) = v5;
  *(a4 + 224) = v14;
  v6 = v13[9];
  *(a4 + 128) = v13[8];
  *(a4 + 144) = v6;
  v7 = v13[11];
  *(a4 + 160) = v13[10];
  *(a4 + 176) = v7;
  v8 = v13[5];
  *(a4 + 64) = v13[4];
  *(a4 + 80) = v8;
  v9 = v13[7];
  *(a4 + 96) = v13[6];
  *(a4 + 112) = v9;
  v10 = v13[1];
  *a4 = v13[0];
  *(a4 + 16) = v10;
  result = v13[3];
  *(a4 + 32) = v13[2];
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_19D16ACA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *(a1 + 176);
  v9 = *(a1 + 208);
  v39 = *(a1 + 192);
  v40 = v9;
  v10 = *(a1 + 112);
  v11 = *(a1 + 144);
  v35 = *(a1 + 128);
  v36 = v11;
  v12 = *(a1 + 144);
  v13 = *(a1 + 176);
  v37 = *(a1 + 160);
  v38 = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 80);
  v31 = *(a1 + 64);
  v32 = v15;
  v16 = *(a1 + 80);
  v17 = *(a1 + 112);
  v33 = *(a1 + 96);
  v34 = v17;
  v18 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v18;
  v19 = *(a1 + 48);
  v21 = *a1;
  v20 = *(a1 + 16);
  v29 = *(a1 + 32);
  v30 = v19;
  v22 = *(a1 + 208);
  v26[12] = v39;
  v26[13] = v22;
  v26[8] = v35;
  v26[9] = v12;
  v26[10] = v37;
  v26[11] = v8;
  v26[4] = v31;
  v26[5] = v16;
  v26[6] = v33;
  v26[7] = v10;
  v26[0] = v21;
  v26[1] = v20;
  v23 = *a3;
  v41 = *(a1 + 224);
  v27 = *(a1 + 224);
  v26[2] = v29;
  v26[3] = v14;

  sub_19D16D8E8(v28, v25, &qword_1EB00F278, &qword_19D17E318);
  sub_19D16D2AC(v26, v23, a5, a6);
}

void (*CVBufferRef.Attributes.subscript.modify(uint64_t *a1, uint64_t a2))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x3B0uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 936) = v2;
  *(v5 + 928) = a2;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F2E0, &qword_19D17E588);
  *(v6 + 232) = a2;
  v8 = (v6 + 232);
  *(v6 + 464) = swift_getKeyPath();
  v9 = sub_19D171350();

  if (v9)
  {
    v11 = sub_19D15F180();
    sub_19D1611A0(@"PixelFormatDescription", v7, &type metadata for TypedCFDictionary, v11, v6 + 232);
    if (*v8)
    {
      sub_19D159398(*v8, v6);
    }

    else
    {
      sub_19D15D970(v6);
    }

    return sub_19D16AEF0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19D16AF0C(void **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  if (a2)
  {
    v7 = *(v6 + 11);
    v9 = *(v6 + 12);
    v8 = *(v6 + 13);
    *(v6 + 41) = v9;
    *(v6 + 42) = v8;
    v10 = *(v6 + 7);
    v12 = *(v6 + 8);
    v11 = *(v6 + 9);
    *(v6 + 37) = v12;
    *(v6 + 38) = v11;
    v13 = *(v6 + 9);
    v15 = *(v6 + 10);
    v14 = *(v6 + 11);
    *(v6 + 39) = v15;
    *(v6 + 40) = v14;
    v16 = *(v6 + 3);
    v18 = *(v6 + 4);
    v17 = *(v6 + 5);
    *(v6 + 33) = v18;
    *(v6 + 34) = v17;
    v19 = *(v6 + 5);
    v21 = *(v6 + 6);
    v20 = *(v6 + 7);
    *(v6 + 35) = v21;
    *(v6 + 36) = v20;
    v22 = *(v6 + 1);
    *(v6 + 29) = *v6;
    *(v6 + 30) = v22;
    v23 = *(v6 + 3);
    v25 = *v6;
    v24 = *(v6 + 1);
    v26 = *(v6 + 2);
    *(v6 + 31) = v26;
    *(v6 + 32) = v23;
    v27 = *(v6 + 13);
    v58 = v9;
    v59 = v27;
    v54 = v12;
    v55 = v13;
    v56 = v15;
    v57 = v7;
    v50 = v18;
    v51 = v19;
    v52 = v21;
    v53 = v10;
    v46 = v25;
    v47 = v24;
    v28 = *(v6 + 117);
    v29 = *(v6 + 116);
    v6[688] = v6[224];
    v60 = v6[224];
    v48 = v26;
    v49 = v16;

    sub_19D16D8E8((v6 + 464), (v6 + 696), &qword_1EB00F278, &qword_19D17E318);
    sub_19D16D2AC(&v46, v29, a3, a4);

    v30 = *(v6 + 13);
    *(v6 + 424) = *(v6 + 12);
    *(v6 + 440) = v30;
    v6[456] = v6[224];
    v31 = *(v6 + 9);
    *(v6 + 360) = *(v6 + 8);
    *(v6 + 376) = v31;
    v32 = *(v6 + 11);
    *(v6 + 392) = *(v6 + 10);
    *(v6 + 408) = v32;
    v33 = *(v6 + 5);
    *(v6 + 296) = *(v6 + 4);
    *(v6 + 312) = v33;
    v34 = *(v6 + 7);
    *(v6 + 328) = *(v6 + 6);
    *(v6 + 344) = v34;
    v35 = *(v6 + 1);
    *(v6 + 232) = *v6;
    *(v6 + 248) = v35;
    v36 = *(v6 + 3);
    *(v6 + 264) = *(v6 + 2);
    *(v6 + 280) = v36;
    sub_19D1602A4((v6 + 232), &qword_1EB00F278, &qword_19D17E318);
  }

  else
  {
    v37 = *(v6 + 117);
    v38 = *(v6 + 116);
    v39 = *(v6 + 13);
    v58 = *(v6 + 12);
    v59 = v39;
    v60 = v6[224];
    v40 = *(v6 + 9);
    v54 = *(v6 + 8);
    v55 = v40;
    v41 = *(v6 + 11);
    v56 = *(v6 + 10);
    v57 = v41;
    v42 = *(v6 + 5);
    v50 = *(v6 + 4);
    v51 = v42;
    v43 = *(v6 + 7);
    v52 = *(v6 + 6);
    v53 = v43;
    v44 = *(v6 + 1);
    v46 = *v6;
    v47 = v44;
    v45 = *(v6 + 3);
    v48 = *(v6 + 2);
    v49 = v45;

    sub_19D16D2AC(&v46, v38, a3, a4);
  }

  free(v6);
}

void sub_19D16B140(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = sub_19D16CB04(*a2, a3, a4, a5);
  sub_19D160A80(v8, v7, MEMORY[0x1E69E6530], &v10);

  v9 = v11;
  *a6 = v10;
  *(a6 + 8) = v9;
}

uint64_t sub_19D16B1E8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v10 = *a3;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *a2;

  v14 = sub_19D16CB04(v10, a5, a6, a7);

  v16 = v11;
  v17 = v12;
  return sub_19D160B48(&v16, v14, MEMORY[0x1E69E6530]);
}

void (*CVBufferRef.Attributes.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  v7 = *v2;
  v8 = sub_19D16CB04(a2, &unk_19D17E508, &qword_1EB00F328, &qword_19D17EAF0);
  sub_19D160A80(v8, v7, MEMORY[0x1E69E6530], v6 + 16);

  v9 = *(v6 + 24);
  *v6 = *(v6 + 16);
  *(v6 + 8) = v9;
  return sub_19D16B380;
}

void sub_19D16B3A4(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a1;
  v9 = **a1;
  v10 = *(*a1 + 8);
  v11 = (*a1)[4];
  v12 = *(*a1)[5];

  v13 = sub_19D16CB04(v11, a3, a4, a5);

  v8[2] = v9;
  *(v8 + 24) = v10;
  sub_19D160B48((v8 + 2), v13, MEMORY[0x1E69E6530]);

  free(v8);
}

void sub_19D16B484(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X3>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  v6 = a3(*a2);
  sub_19D160A80(v6, v5, MEMORY[0x1E69E6370], &v7);

  *a4 = v7;
}

uint64_t sub_19D16B50C(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a3;
  v7 = *a1;
  v8 = *a2;

  v9 = a5(v6);

  v11 = v7;
  return sub_19D160B48(&v11, v9, MEMORY[0x1E69E6370]);
}

uint64_t (*CVBufferRef.Attributes.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = *v2;
  v5 = sub_19D16CBE4();
  sub_19D160A80(v5, v4, MEMORY[0x1E69E6370], a1 + 17);

  *(a1 + 16) = *(a1 + 17);
  return sub_19D16B61C;
}

uint64_t sub_19D16B634(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a1 + 16);
  v6 = *a1;
  v7 = *a1[1];

  v8 = a3(v6);

  *(a1 + 17) = v5;
  return sub_19D160B48(a1 + 17, v8, MEMORY[0x1E69E6370]);
}

unint64_t sub_19D16B6B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_19D171680();
  sub_19D171380();
  v6 = sub_19D1716C0();

  return sub_19D16B730(a1, a2, v6);
}

unint64_t sub_19D16B730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_19D171610())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_19D16B7E8(char *a1, int64_t a2, char a3)
{
  result = sub_19D16B808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19D16B808(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F2C8, &qword_19D17E4B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_19D16B90C()
{
  result = qword_1EB00F270;
  if (!qword_1EB00F270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB00F268, &qword_19D17E310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F270);
  }

  return result;
}