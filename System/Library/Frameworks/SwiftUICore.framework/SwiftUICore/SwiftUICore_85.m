uint64_t ImagePaint.resolvePaint(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  type metadata accessor for Text.Style?();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageResolutionContext();
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v10 = a1[1];
  v12 = type metadata accessor for Text.Style(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  LODWORD(v52.f64[0]) = *MEMORY[0x1E698D3F8];
  v9[2] = 0;
  v14 = v7[8];
  v13(v9 + v14, 1, 1, v12);
  v15 = v11;
  v16 = v7[9];
  v17 = v9 + v7[10];
  *v17 = 520;
  v17[2] = 2;
  *(v9 + v7[11]) = 3;
  *(v9 + v7[12]) = 1;
  *v9 = v11;
  v9[1] = v10;

  outlined assign with take of Text.Style?(v5, v9 + v14);
  *(v9 + v16) = LODWORD(v52.f64[0]);
  v18 = v49;
  (*(**v49 + 80))(&v72, v9);
  outlined init with copy of GraphicsImage(&v72, &v57);
  outlined destroy of Image.Resolved(&v72);
  v68 = v72;
  v69[0] = *v73;
  *(v69 + 12) = *&v73[12];
  v19 = v74;
  v20 = v75;
  v21 = v76;
  v67 = v77;
  *(v66 + 11) = *(v79 + 11);
  v65 = v78;
  v66[0] = v79[0];
  if ((v77 & 1) == 0)
  {
    if (one-time initialization token for foreground != -1)
    {
      swift_once();
    }

    *&v57 = v15;
    *(&v57 + 1) = v10;
    (*(*static Color.foreground + 120))(v70, &v57);
    v19 = v70[0];
    v20 = v70[1];
    v21 = v71;
    v67 = 0;
  }

  v22 = 0uLL;
  if (*v73 != 0.0)
  {
    v23 = *&v73[8];
    if (v73[24] > 3u)
    {
      v23 = vextq_s8(*&v73[8], *&v73[8], 8uLL);
    }

    v22 = vmulq_n_f64(v23, 1.0 / *v73);
  }

  v48 = v22;
  v25 = *(v18 + 8);
  v26 = *(v18 + 16);
  v27 = *(v18 + 32);
  v51 = *(v18 + 24);
  v24 = v51.f64[0];
  v52 = v25;
  v28 = v26;
  v29 = v27;
  if (!CGRectIsNull(*v25.f64))
  {
    v80.size.width = v51.f64[0];
    v80.origin.x = v52.f64[0];
    v80.origin.y = v26;
    v80.size.height = v27;
    if (!CGRectIsInfinite(v80))
    {
      v81.size.width = v51.f64[0];
      v81.origin.x = v52.f64[0];
      v81.origin.y = v26;
      v81.size.height = v27;
      *&v30 = CGRectGetWidth(v81);
      v47 = v30;
      v31 = v51.f64[0];
      *&v30 = v52.f64[0];
      v32 = v26;
      v33 = v27;
      Height = CGRectGetHeight(*&v30);
      *&v35.f64[0] = v47;
      v35.f64[1] = Height;
      v51 = vmulq_f64(v48, v35);
      v52 = vmulq_f64(v48, v52);
    }
  }

  outlined destroy of ImageResolutionContext(v9, type metadata accessor for ImageResolutionContext);
  *(v55 + 12) = *(v69 + 12);
  v36 = v68;
  v37 = v69[0];
  v54 = v68;
  v55[0] = v69[0];
  *(&v55[1] + 12) = v19;
  *(&v55[2] + 4) = v20;
  HIDWORD(v55[2]) = v21;
  v38 = v67;
  LOBYTE(v56[0]) = v67;
  *(v56 + 1) = v65;
  v39 = v65;
  v40 = v66[0];
  *(&v56[1] + 1) = v66[0];
  *(&v56[1] + 12) = *(v66 + 11);
  v41 = v56[1];
  v42 = v50;
  *(v50 + 64) = v56[0];
  *(v42 + 80) = v41;
  *(v42 + 92) = *(&v56[1] + 12);
  v43 = v55[0];
  *v42 = v54;
  *(v42 + 16) = v43;
  v44 = v55[2];
  *(v42 + 32) = v55[1];
  *(v42 + 48) = v44;
  v45 = v51;
  *(v42 + 112) = v52;
  *(v42 + 128) = v45;
  *(v42 + 144) = *(v18 + 40);
  *&v58[12] = *(v69 + 12);
  v57 = v36;
  *v58 = v37;
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v62 = v38;
  *&v64[11] = *(v66 + 11);
  *v64 = v40;
  v63 = v39;
  outlined init with copy of GraphicsImage(&v54, &v53);
  return outlined destroy of GraphicsImage(&v57);
}

void ImagePaint._Paint.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = v3[14];
  v6 = v3[15];
  v7 = v3[16];
  v8 = v3[17];
  v9 = v3[18];
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (!v2)
  {
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    v16.size.width = 0.0;
    v16.size.height = 0.0;
    v15.origin.x = v5;
    v15.origin.y = v6;
    v15.size.width = v7;
    v15.size.height = v8;
    if (!CGRectEqualToRect(v15, v16))
    {
      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(v5, v6, v7, v8);
    }

    if (v9 != 0.0)
    {
      v10 = fabs(v9);
      if (v10 >= 65536.0)
      {
        v11 = 25;
      }

      else
      {
        v11 = 29;
      }

      ProtobufEncoder.encodeVarint(_:)(v11);
      if (v10 < 65536.0)
      {
        v12 = a1[1];
        v13 = v12 + 4;
        if (!__OFADD__(v12, 4))
        {
          *&v10 = v9;
          if (a1[2] >= v13)
          {
            a1[1] = v13;
            *(*a1 + v12) = LODWORD(v10);
            return;
          }

          goto LABEL_18;
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        *ProtobufEncoder.growBufferSlow(to:)(v13) = LODWORD(v10);
        return;
      }

      v14 = a1[1];
      v13 = v14 + 8;
      if (__OFADD__(v14, 8))
      {
        goto LABEL_17;
      }

      if (a1[2] < v13)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v13) = v9;
      }

      else
      {
        a1[1] = v13;
        *(*a1 + v14) = v9;
      }
    }
  }
}

unint64_t ImagePaint._Paint.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v6 = a1[2];
  if (v5 < v6)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v75 = 512;
    v7 = 1.0;
    v43 = 0u;
    v44 = 0u;
    v68 = 0u;
    v69 = 0u;
    result = a1[3];
    if (result)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = ProtobufDecoder.decodeVarint()();
    if (!v2)
    {
      if (result >= 8)
      {
        while (1)
        {
          v10 = result >> 3;
          if (result >> 3 != 1)
          {
            break;
          }

          if ((result & 7) != 2)
          {
            goto LABEL_71;
          }

          v21 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
          }

          v23 = *(v21 + 2);
          v22 = *(v21 + 3);
          if (v23 >= v22 >> 1)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
          }

          *(v21 + 2) = v23 + 1;
          *&v21[8 * v23 + 32] = v6;
          a1[5] = v21;
          v24 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined destroy of ImageResolutionContext(&v68, type metadata accessor for GraphicsImage?);
          }

          if (v24 < 0)
          {
            goto LABEL_80;
          }

          v25 = a1[1] + v24;
          if (v6 < v25)
          {
            goto LABEL_71;
          }

          a1[2] = v25;
          GraphicsImage.init(from:)(a1, &v46);
          v26 = a1[5];
          if (!*(v26 + 2))
          {
            goto LABEL_82;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v27 = *(v26 + 2);
            if (!v27)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
            v27 = *(v26 + 2);
            if (!v27)
            {
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }
          }

          v28 = v27 - 1;
          v6 = *&v26[8 * v28 + 32];
          *(v26 + 2) = v28;
          result = outlined destroy of ImageResolutionContext(&v68, type metadata accessor for GraphicsImage?);
          a1[5] = v26;
          a1[2] = v6;
          v65 = v50;
          v66 = v51;
          v67 = v52;
          v61 = v46;
          v62 = v47;
          v63 = v48;
          v64 = v49;
          v29 = v53;
LABEL_62:
          v5 = a1[1];
          if (v5 >= v6)
          {
            v34 = v63;
            v57 = v64;
            v58 = v65;
            v59 = v66;
            v35 = v62;
            v54 = v61;
            a1[3] = 0;
            v60 = v67;
            v55 = v35;
            v56 = v34;
            if ((v29 & 0xFF00) == 0x200)
            {
              goto LABEL_70;
            }

            v36 = v57;
            v37 = v59;
            *(a2 + 4) = v58;
            *(a2 + 5) = v37;
            v38 = v55;
            v39 = v56;
            *a2 = v54;
            *(a2 + 1) = v38;
            *(a2 + 12) = v60;
            *(a2 + 2) = v39;
            *(a2 + 3) = v36;
            *(a2 + 26) = v29;
            *(a2 + 7) = v44;
            *(a2 + 8) = v43;
            *(a2 + 18) = v7;
            return result;
          }

          v72 = v65;
          v73 = v66;
          v74 = v67;
          v68 = v61;
          v69 = v62;
          v70 = v63;
          v71 = v64;
          v75 = v29;
          result = a1[3];
          if (!result)
          {
            goto LABEL_6;
          }

LABEL_3:
          v9 = a1[4];
          if (v5 >= v9)
          {
            if (v9 < v5)
            {
              goto LABEL_71;
            }

            a1[3] = 0;
            goto LABEL_6;
          }
        }

        if (v10 == 2)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_71;
          }

          v13 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
          }

          v15 = *(v13 + 2);
          v14 = *(v13 + 3);
          if (v15 >= v14 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
          }

          *(v13 + 2) = v15 + 1;
          *&v13[8 * v15 + 32] = v6;
          a1[5] = v13;
          v16 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined destroy of ImageResolutionContext(&v68, type metadata accessor for GraphicsImage?);
          }

          if (v16 < 0)
          {
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
            __break(1u);
            do
            {
              __break(1u);
              a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
              v40 = *(a2 + 2);
              if (v40)
              {
                goto LABEL_78;
              }

              __break(1u);
              a2 = a1[5];
            }

            while (!*(a2 + 2));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v40 = *(a2 + 2);
              if (v40)
              {
                goto LABEL_78;
              }

LABEL_89:
              __break(1u);
            }

            a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            v40 = *(a2 + 2);
            if (!v40)
            {
              goto LABEL_89;
            }

LABEL_78:
            v41 = v40 - 1;
            v42 = *&a2[8 * v41 + 32];
            *(a2 + 2) = v41;
            result = outlined destroy of ImageResolutionContext(&v68, type metadata accessor for GraphicsImage?);
            a1[5] = a2;
            a1[2] = v42;
            return result;
          }

          v17 = a1[1] + v16;
          if (v6 < v17)
          {
            goto LABEL_71;
          }

          a1[2] = v17;
          v46 = 0u;
          v47 = 0u;
          closure #1 in EdgeInsets.init(from:)(&v46, a1, &v45);
          v18 = a1[5];
          if (!*(v18 + 16))
          {
            goto LABEL_81;
          }

          v43 = v47;
          v44 = v46;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v19 = *(v18 + 16);
            if (!v19)
            {
              goto LABEL_83;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
            v18 = result;
            v19 = *(result + 16);
            if (!v19)
            {
              goto LABEL_83;
            }
          }

          v20 = v19 - 1;
          v6 = *(v18 + 8 * v20 + 32);
          *(v18 + 16) = v20;
          a1[5] = v18;
          a1[2] = v6;
          goto LABEL_61;
        }

        if (v10 == 3)
        {
          v11 = result & 7;
          if (v11 == 5)
          {
            v32 = a1[1];
            if (v6 < (v32 + 1))
            {
              goto LABEL_71;
            }

            v33 = *v32;
            a1[1] = v32 + 1;
            v7 = v33;
          }

          else
          {
            if (v11 == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return outlined destroy of ImageResolutionContext(&v68, type metadata accessor for GraphicsImage?);
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_84;
              }

              v12 = a1[1];
              if (v6 < v12 + result)
              {
                goto LABEL_71;
              }

              a1[3] = 25;
              a1[4] = v12 + result;
            }

            else
            {
              if (v11 != 1)
              {
                goto LABEL_71;
              }

              v12 = a1[1];
            }

            if (v6 < (v12 + 1))
            {
              goto LABEL_71;
            }

            v7 = *v12;
            a1[1] = v12 + 1;
          }

          goto LABEL_61;
        }

        v30 = result & 7;
        if (v30 > 1)
        {
          if (v30 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return outlined destroy of ImageResolutionContext(&v68, type metadata accessor for GraphicsImage?);
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_85;
            }

            v31 = a1[1] + result;
          }

          else
          {
            if (v30 != 5)
            {
              goto LABEL_71;
            }

            v31 = a1[1] + 4;
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return outlined destroy of ImageResolutionContext(&v68, type metadata accessor for GraphicsImage?);
            }

LABEL_61:
            v65 = v72;
            v66 = v73;
            v67 = v74;
            v61 = v68;
            v62 = v69;
            v63 = v70;
            v64 = v71;
            v29 = v75;
            goto LABEL_62;
          }

          if (v30 != 1)
          {
            goto LABEL_71;
          }

          v31 = a1[1] + 8;
        }

        if (v6 < v31)
        {
          goto LABEL_71;
        }

        a1[1] = v31;
        goto LABEL_61;
      }

LABEL_71:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }

    return outlined destroy of ImageResolutionContext(&v68, type metadata accessor for GraphicsImage?);
  }

LABEL_69:
  a1[3] = 0;
LABEL_70:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

uint64_t specialized static ImagePaint._Paint.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v43 = a1[4];
  v44[0] = v3;
  *(v44 + 12) = *(a1 + 92);
  v4 = a1[1];
  v40[0] = *a1;
  v40[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v41 = a1[2];
  v42 = v5;
  v26 = *(a1 + 15);
  v27 = *(a1 + 14);
  v8 = *(a1 + 16);
  v9 = *(a1 + 17);
  v10 = a2[3];
  v11 = a2[5];
  v48 = a2[4];
  v49[0] = v11;
  *(v49 + 12) = *(a2 + 92);
  v12 = a2[1];
  v45[0] = *a2;
  v45[1] = v12;
  v13 = a2[3];
  v15 = *a2;
  v14 = a2[1];
  v46 = a2[2];
  v47 = v13;
  v16 = a1[5];
  v38 = v43;
  v39[0] = v16;
  *(v39 + 12) = *(a1 + 92);
  v17 = *(a1 + 18);
  v34 = v7;
  v35 = v6;
  v18 = *(a2 + 14);
  v19 = *(a2 + 15);
  v36 = v41;
  v37 = v2;
  v20 = a2[5];
  v32 = v48;
  v33[0] = v20;
  *(v33 + 12) = *(a2 + 92);
  v21 = *(a2 + 16);
  v22 = *(a2 + 17);
  v28 = v15;
  v29 = v14;
  v23 = *(a2 + 18);
  v30 = v46;
  v31 = v10;
  outlined init with copy of GraphicsImage(v40, v52);
  outlined init with copy of GraphicsImage(v45, v52);
  v24 = specialized static GraphicsImage.== infix(_:_:)(&v34, &v28);
  v50[4] = v32;
  v51[0] = v33[0];
  *(v51 + 12) = *(v33 + 12);
  v50[0] = v28;
  v50[1] = v29;
  v50[2] = v30;
  v50[3] = v31;
  outlined destroy of GraphicsImage(v50);
  v52[4] = v38;
  v53[0] = v39[0];
  *(v53 + 12) = *(v39 + 12);
  v52[0] = v34;
  v52[1] = v35;
  v52[2] = v36;
  v52[3] = v37;
  outlined destroy of GraphicsImage(v52);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

  v54.origin.y = v26;
  v54.origin.x = v27;
  v54.size.width = v8;
  v54.size.height = v9;
  v55.origin.x = v18;
  v55.origin.y = v19;
  v55.size.width = v21;
  v55.size.height = v22;
  LODWORD(result) = CGRectEqualToRect(v54, v55);
  if (v17 == v23)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for GraphicsImage?()
{
  if (!lazy cache variable for type metadata for GraphicsImage?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GraphicsImage?);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for ImagePaint._Paint(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint();
  result = lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint()
{
  result = lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint;
  if (!lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint;
  if (!lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint;
  if (!lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint);
  }

  return result;
}

uint64_t initializeWithCopy for ImagePaint(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void *assignWithCopy for ImagePaint(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  return a1;
}

uint64_t assignWithTake for ImagePaint(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

__n128 initializeWithCopy for ImagePaint._Paint(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  if (v3 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v4 = *a2;
    v5 = a1;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    a1 = v5;
    *v5 = v4;
    *(v5 + 8) = v3;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  result = *(a2 + 7);
  v7 = *(a2 + 8);
  *(a1 + 112) = result;
  *(a1 + 128) = v7;
  *(a1 + 144) = a2[18];
  return result;
}

uint64_t assignWithCopy for ImagePaint._Paint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v8 = *a2;
      outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 8) = v4;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of GraphicsImage.Contents(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    v6 = *a1;
    *a1 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    outlined consume of GraphicsImage.Contents(v6, v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 44) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

double assignWithTake for ImagePaint._Paint(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v4 = *(a2 + 8);
    if (v4 == 255)
    {
      v7 = a1;
      outlined destroy of GraphicsImage.Contents(a1);
      a1 = v7;
      *v7 = *a2;
      *(v7 + 8) = *(a2 + 8);
    }

    else
    {
      v5 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v4;
      v6 = a1;
      outlined consume of GraphicsImage.Contents(v5, v3);
      a1 = v6;
    }
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  v8 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  result = *(a2 + 144);
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImagePaint._Paint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 152))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 105);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePaint._Paint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s7SwiftUI16RendererLeafViewPAAE8contains6points4sizeAA11BitVector64VSRySo7CGPointVG_So6CGSizeVtFAA08BackdropE0V_Tt2g5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = 0;
  if (result && a2)
  {
    v6 = 0;
    v7 = 16 * a2;
    v8 = (result + 8);
    do
    {
      v9 = *(v8 - 1);
      v10 = fmin(v9, *v8);
      v11 = v9 < a4;
      if (*v8 >= a5)
      {
        v11 = 0;
      }

      if (v10 < 0.0)
      {
        v11 = 0;
      }

      if (v6 < 0x41)
      {
        if (v6 == 64)
        {
          v12 = 0;
          if (!v11)
          {
LABEL_15:
            v5 &= ~v12;
            goto LABEL_5;
          }
        }

        else
        {
          v12 = 1 << v6;
          if (!v11)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v12 = 0;
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      v5 |= v12;
LABEL_5:
      v8 += 2;
      ++v6;
      v7 -= 16;
    }

    while (v7);
  }

  *a3 = v5;
  return result;
}

uint64_t RendererLeafView.contains(points:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = 0;
  if (result && a2)
  {
    v6 = 0;
    v7 = 16 * a2;
    v8 = (result + 8);
    do
    {
      v9 = *(v8 - 1);
      v10 = fmin(v9, *v8);
      v11 = v9 < a4;
      if (*v8 >= a5)
      {
        v11 = 0;
      }

      if (v10 < 0.0)
      {
        v11 = 0;
      }

      if (v6 < 0x41)
      {
        if (v6 == 64)
        {
          v12 = 0;
          if (!v11)
          {
LABEL_15:
            v5 &= ~v12;
            goto LABEL_5;
          }
        }

        else
        {
          v12 = 1 << v6;
          if (!v11)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v12 = 0;
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      v5 |= v12;
LABEL_5:
      v8 += 2;
      ++v6;
      v7 -= 16;
    }

    while (v7);
  }

  *a3 = v5;
  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028SymbolBackgroundCornerRadiusV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028SymbolBackgroundCornerRadiusV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA026SymbolsGrowToFitBackgroundV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA026SymbolsGrowToFitBackgroundV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA24MaterialActiveAppearanceVAAE0V033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        active = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA24MaterialActiveAppearanceVAAE0V033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = active;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA031AccessibilitySettingsDefinitionV0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA031AccessibilitySettingsDefinitionV0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA19UnredactSymbolImageVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA19UnredactSymbolImageVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV022MaxAllowedDynamicRangeV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV022MaxAllowedDynamicRangeV0VG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA23ContainerBackgroundKindO0V0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA23ContainerBackgroundKindO0V0VG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019PlatformColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019PlatformColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019ExplicitColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019ExplicitColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ReusableInputs)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _ViewInputs.PlatformItemsFeaturesKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _ViewInputs.PlatformItemFeaturesKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021RequestsPlatformItemsV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021RequestsPlatformItemsV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _ViewInputs.RequestsPlatformItemsKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.PlatformSystemKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = updated;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE031PlatformAccessibilityPreferenceV033_44953956318F41C5365C38B8AC5FF331LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE031PlatformAccessibilityPreferenceV033_44953956318F41C5365C38B8AC5FF331LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _ViewInputs.PlatformAccessibilityPreferenceKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028PlatformHiddenRepresentationV033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028PlatformHiddenRepresentationV033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.PlatformHiddenRepresentationKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027HiddenAccessibilityProviderV033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027HiddenAccessibilityProviderV033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.HiddenAccessibilityProviderKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V18_glassEffectHidden33_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V18_glassEffectHidden33_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA31ShouldAttachScrollEdgeEffectTagV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        ShouldAttachScrollEdgeEffectTagV_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA31ShouldAttachScrollEdgeEffectTagV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = ShouldAttachScrollEdgeEffectTagV_Tt0B5;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ShouldAttachScrollEdgeEffectTag)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE037GlassEffectContainerTintConfigurationV033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE037GlassEffectContainerTintConfigurationV033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE032CoreInteractionResponderProviderV033_03AF342AA286115256FF95C286FEA7E3LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE032CoreInteractionResponderProviderV033_03AF342AA286115256FF95C286FEA7E3LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.CoreInteractionResponderProviderKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA8SolariumV022AllowedInCompatibilityV0V_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA8SolariumV022AllowedInCompatibilityV0V_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for Solarium.AllowedInCompatibilityKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027TextSelectionRepresentationV0019_E9056C24F23374CCD1I11D90898CB830LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027TextSelectionRepresentationV0019_E9056C24F23374CCD1I11D90898CB830LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.TextSelectionRepresentationKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24RequestedLeafContentTypeV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24RequestedLeafContentTypeV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for RequestedLeafContentType)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA23TranslationKickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_Tt0B5Tm(void *result, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v6 = result;
        v7 = a2;
        v8 = a6;
        v9 = a5;
        v10 = a4;
        v11 = a3;
        v12 = a3(result[3]);
        a2 = v7;
        a3 = v11;
        a4 = v10;
        a5 = v9;
        a6 = v8;
        v13 = v12;
        result = v6;
        if (v13)
        {
          break;
        }
      }

      v14 = a2;
      v15 = a3;
      v16 = result;
      v17 = result[2];
      v18 = a4;
      v19 = a5;
      v20 = a6;
      _sSay7SwiftUI13ViewResponderCGMaTm_0(0, a4, a5, a6);
      if (v17 == v21)
      {
        return v16;
      }

      result = v16[4];
      a6 = v20;
      a5 = v19;
      a4 = v18;
      a3 = v15;
      a2 = v14;
      if (!result)
      {
        return result;
      }
    }

    return v13;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA23FlexInteractionModifierVGG_Tt0B5Tm(void *result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v4 = result;
        v5 = a2;
        v6 = a4;
        v7 = a3;
        v8 = a3(result[3]);
        a2 = v5;
        a3 = v7;
        a4 = v6;
        v9 = v8;
        result = v4;
        if (v9)
        {
          break;
        }
      }

      v10 = a2;
      v11 = a3;
      v12 = result;
      v13 = result[2];
      v14 = a4;
      if (v13 == a4(0))
      {
        return v12;
      }

      result = v12[4];
      a4 = v14;
      a3 = v11;
      a2 = v10;
      if (!result)
      {
        return result;
      }
    }

    return v9;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA22TextSelectionForbiddenV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA22TextSelectionForbiddenV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for TextSelectionForbidden)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE030GlassContainerSettingsOverrideV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE030GlassContainerSettingsOverrideV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>, &type metadata for Transaction.GlassContainerSettingsOverrideKey, &protocol witness table for Transaction.GlassContainerSettingsOverrideKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE033UseDefaultGlassContainerAnimationV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE033UseDefaultGlassContainerAnimationV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>, &type metadata for Transaction.UseDefaultGlassContainerAnimationKey, &protocol witness table for Transaction.UseDefaultGlassContainerAnimationKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA4TextVAAE17AlignmentStrategyV0wV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA4TextVAAE17AlignmentStrategyV0wV0VG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV040AccessibilitySpeechAnnouncementsPriorityV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV040AccessibilitySpeechAnnouncementsPriorityV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV038AccessibilitySpeechSpellsOutCharactersV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV038AccessibilitySpeechSpellsOutCharactersV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV032AccessibilitySpeechAdjustedPitchV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV032AccessibilitySpeechAdjustedPitchV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028ContainerBackgroundLuminanceV033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028ContainerBackgroundLuminanceV033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemAccentValueV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemAccentValueV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021PresentingContextMenuV033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021PresentingContextMenuV033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028GlassEffectBackdropGroupNameV033_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028GlassEffectBackdropGroupNameV033_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V13_buttonSizing33_B3F6B53DB8F35B3F9F84F34C99C79B2CLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V13_buttonSizing33_B3F6B53DB8F35B3F9F84F34C99C79B2CLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV013ContentShapesV033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV013ContentShapesV033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28GestureContainerFactoryInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28GestureContainerFactoryInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for GestureContainerFactoryInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA30EventBindingBridgeFactoryInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA30EventBindingBridgeFactoryInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for EventBindingBridgeFactoryInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE026DefaultSeparatorShapeStyleV033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE026DefaultSeparatorShapeStyleV033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA010ContinuousV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA010ContinuousV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<ContinuousKey>, &type metadata for ContinuousKey, &protocol witness table for ContinuousKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE017RenderingRootViewV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE017RenderingRootViewV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO14AppearsFocusedVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO14AppearsFocusedVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO11AppearsMainVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO11AppearsMainVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO9IsFocusedVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        IsFocusedVG_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO9IsFocusedVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = IsFocusedVG_Tt0B5;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO6IsMainVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        IsMainVG_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO6IsMainVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = IsMainVG_Tt0B5;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA23SafeAreaPaddingModifierVGG_Tt0B5Tm(void *result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v4 = result;
        v5 = a2;
        v6 = a4;
        v7 = a3;
        v8 = a3(result[3]);
        a2 = v5;
        a3 = v7;
        a4 = v6;
        v9 = v8;
        result = v4;
        if (v9)
        {
          break;
        }
      }

      v10 = a2;
      v11 = a3;
      v12 = result;
      v13 = result[2];
      v14 = a4;
      if (v13 == a4(0))
      {
        return v12;
      }

      result = v12[4];
      a4 = v14;
      a3 = v11;
      a2 = v10;
      if (!result)
      {
        return result;
      }
    }

    return v9;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for LeafLayoutEngine(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 161 > 0x18)
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
    v13 = *(v11 + 16);
    v12 = *(v11 + 32);
    *v10 = *v11;
    *(v10 + 16) = v13;
    *(v10 + 32) = v12;
    v14 = *(v11 + 96);
    v16 = *(v11 + 48);
    v15 = *(v11 + 64);
    *(v10 + 80) = *(v11 + 80);
    *(v10 + 96) = v14;
    *(v10 + 48) = v16;
    *(v10 + 64) = v15;
    v18 = *(v11 + 128);
    v17 = *(v11 + 144);
    v19 = *(v11 + 112);
    *(v10 + 160) = *(v11 + 160);
    *(v10 + 128) = v18;
    *(v10 + 144) = v17;
    *(v10 + 112) = v19;
  }

  return v3;
}

uint64_t assignWithCopy for LeafLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  v11 = *v8;
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  *v7 = v11;
  v12 = *(v8 + 56);
  v13 = *(v8 + 72);
  v14 = *(v8 + 88);
  *(v7 + 104) = *(v8 + 104);
  *(v7 + 88) = v14;
  *(v7 + 72) = v13;
  *(v7 + 56) = v12;
  v15 = *(v8 + 160);
  v17 = *(v8 + 128);
  v16 = *(v8 + 144);
  *(v7 + 112) = *(v8 + 112);
  *(v7 + 128) = v17;
  *(v7 + 144) = v16;
  *(v7 + 160) = v15;
  return a1;
}

uint64_t initializeWithTake for LeafLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  v11 = *(v8 + 96);
  v13 = *(v8 + 48);
  v12 = *(v8 + 64);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 96) = v11;
  *(v7 + 48) = v13;
  *(v7 + 64) = v12;
  v15 = *(v8 + 128);
  v14 = *(v8 + 144);
  v16 = *(v8 + 112);
  *(v7 + 160) = *(v8 + 160);
  *(v7 + 128) = v15;
  *(v7 + 144) = v14;
  *(v7 + 112) = v16;
  return a1;
}

uint64_t assignWithTake for LeafLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  v11 = *v8;
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  *v7 = v11;
  v12 = *(v8 + 56);
  v13 = *(v8 + 72);
  v14 = *(v8 + 88);
  *(v7 + 104) = *(v8 + 104);
  *(v7 + 88) = v14;
  *(v7 + 72) = v13;
  *(v7 + 56) = v12;
  v15 = *(v8 + 160);
  v17 = *(v8 + 128);
  v16 = *(v8 + 144);
  *(v7 + 112) = *(v8 + 112);
  *(v7 + 128) = v17;
  *(v7 + 144) = v16;
  *(v7 + 160) = v15;
  return a1;
}

uint64_t getEnumTagSinglePayload for LeafLayoutEngine(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 161;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
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
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * (((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xF8) - 95));
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for LeafLayoutEngine(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 161;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
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

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
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

      else if (v12)
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
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for PlatformItems.Key);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for PlatformItems.Key;
  }

  __break(1u);
  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for GlassContainer.Item.Key;
  }

  __break(1u);
  return result;
}

uint64_t (*partial apply for closure #1 in closure #1 in Attribute.init<A>(_:)())()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return partial apply for implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:);
}

void _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void ArchivedViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for UncheckedSendable();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v16[-v14];
  if (a2)
  {
    (*(v8 + 16))(v10, a1, a3, v13);
    UncheckedSendable.init(_:)(v10, a3, v15);
    closure #1 in ArchivedViewBodyAccessor.updateBody(of:changed:)(v15, a3, a4);
    (*(v12 + 8))(v15, v11);
  }
}

uint64_t closure #1 in ArchivedViewBodyAccessor.updateBody(of:changed:)(char *a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v66 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = v52 - v10;
  v56 = a3;
  v58 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v52 - v11;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = static Signpost.bodyInvoke;
    v14 = word_1ED539040;
    v15 = HIBYTE(word_1ED539040);
    v16 = byte_1ED539042;
    v17 = static os_signpost_type_t.begin.getter();
    v77 = v13;
    v78 = v14;
    v79 = v15;
    v80 = v16;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v67 = *(&v13 + 1);
    LODWORD(v68) = v17;
    v52[1] = a1;
    v53 = v12;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18DDAB4C0;
    v19 = AGTypeID.description.getter();
    v21 = v20;
    v22 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v23 = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 64) = v23;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v24 = specialized static Tracing.libraryName(defining:)();
    *(v18 + 96) = v22;
    *(v18 + 104) = v23;
    *(v18 + 72) = v24;
    *(v18 + 80) = v25;
    v69 = v18;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v15)
    {
      v76 = v68;
      v74 = _signpostLog;
      v75 = &dword_18D018000;
      *&v77 = v13;
      *(&v77 + 1) = v67;
      v78 = v14;
      v71 = "%{public}@.body [in %{public}@]";
      v72 = 31;
      v73 = 2;
      v70 = v69;
      v26 = v57;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v65 + 8))(v26, v64);
LABEL_34:

      v12 = v53;
      break;
    }

    if (v13 == 20)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    v28 = bswap32(v13) | (4 * WORD1(v13));
    v29 = v68;
    v30 = v65 + 16;
    v59 = *(v65 + 16);
    v31 = v59(v66, v57, v64);
    v32 = 0;
    LOBYTE(v71) = 1;
    v68 = v27;
    v65 = v30;
    v62 = 16 * v27;
    v63 = (v30 - 8);
    v61 = v69 + 32;
    v60 = *(&v13 + 1);
LABEL_11:
    v67 = v52;
    MEMORY[0x1EEE9AC00](v31);
    a1 = v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = a1 + 8;
    v35 = v68;
    v36 = a1 + 8;
    do
    {
      *(v36 - 1) = 0;
      *v36 = 0;
      v36 += 16;
      --v35;
    }

    while (v35);
    v12 = (v61 + 40 * v32);
    v37 = v68;
    while (1)
    {
      v38 = *(v69 + 16);
      if (v32 == v38)
      {
        LOBYTE(v71) = 0;
LABEL_19:
        v41 = v60;
        if (v60 == 20)
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

        if (v41 != 20 && a1[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v42 = v64;
        v43 = *v63;
        v44 = v66;
        (*v63)(v66, v64);
        v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
        v31 = v59(v44, v45, v42);
        if ((v71 & 1) == 0)
        {
          v46 = v64;
          v43(v66, v64);
          v43(v57, v46);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v32 >= v38)
      {
        break;
      }

      ++v32;
      outlined init with copy of AnyTrackedValue(v12, &v77);
      v39 = v81;
      __swift_project_boxed_opaque_existential_1(&v77, v81);
      *(v34 - 1) = CVarArg.kdebugValue(_:)(v28 | v29, v39);
      *v34 = v40 & 1;
      v34 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v77);
      v12 += 40;
      if (!--v37)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v47 = v12;
  (*(v56 + 32))(v58, v56);
  AGGraphSetUpdate();
  v48 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v48);
  v52[-2] = type metadata accessor for ArchivedViewBodyAccessor();
  v52[-1] = swift_getWitnessTable();
  v49 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v47, partial apply for closure #2 in BodyAccessor.setBody(_:), &v52[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v50);
  return (*(v54 + 8))(v47, v49);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance AppearanceAnimationView<A, B>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return static ConditionallyArchivableView._makeView(view:inputs:)(a1, a2, a3, WitnessTable, a4);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance AppearanceAnimationView<A, B>(int *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static ConditionallyArchivableView._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void __swiftcall SExpPrinter.init(tag:singleLine:)(SwiftUI::SExpPrinter *__return_ptr retstr, Swift::String tag, Swift::Bool singleLine)
{
  MEMORY[0x193ABEDD0](tag._countAndFlagsBits);

  v5 = 8224;
  if (singleLine)
  {
    v5 = 0;
  }

  retstr->output._countAndFlagsBits = 40;
  retstr->output._object = 0xE100000000000000;
  if (singleLine)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  retstr->depth = !singleLine;
  retstr->indent._countAndFlagsBits = v5;
  retstr->indent._object = v6;
}

Swift::String __swiftcall SExpPrinter.end()()
{
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
      goto LABEL_6;
    }

    v0[2] = v4;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
  }

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  v6 = *v0;
  v5 = v1[1];

  v7 = v6;
  v8 = v5;
LABEL_6:
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

Swift::Void __swiftcall SExpPrinter.push(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1[2];
  if (!v4)
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);

LABEL_8:
    JUMPOUT(0x193ABEDD0);
  }

  MEMORY[0x193ABEDD0](10, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v1[3], v1[4]);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
  MEMORY[0x193ABEDD0](countAndFlagsBits, object);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v1[2] = v4 + 1;
  MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
}

Swift::Void __swiftcall SExpPrinter.print(_:newline:)(Swift::String _, Swift::Bool newline)
{
  if (newline && v2[2])
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    v3 = v2[3];
    v4 = v2[4];
  }

  else
  {
    v3 = 32;
    v4 = 0xE100000000000000;
  }

  MEMORY[0x193ABEDD0](v3, v4);

  JUMPOUT(0x193ABEDD0);
}

Swift::Void __swiftcall SExpPrinter.pop()()
{
  v1 = v0[2];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v0[3];
    v0[2] = v3;
    v5 = v0[4];
    if ((v5 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v7 = String.index(_:offsetBy:limitedBy:)();
    if (v8)
    {
      goto LABEL_14;
    }

    if (4 * v6 >= v7 >> 14)
    {
      String.removeSubrange(_:)();
LABEL_9:

LABEL_15:
      JUMPOUT(0x193ABEDD0);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  goto LABEL_15;
}

uint64_t SExpPrinter.indent.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

Swift::Void __swiftcall SExpPrinter.newline()()
{
  if (*(v0 + 16))
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);

    JUMPOUT(0x193ABEDD0);
  }
}

uint64_t destroy for SExpPrinter()
{
}

uint64_t initializeWithCopy for SExpPrinter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void *assignWithCopy for SExpPrinter(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for SExpPrinter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t initializeWithCopy for DisplayList.OffsetAnimation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void *assignWithCopy for DisplayList.OffsetAnimation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for DisplayList.OffsetAnimation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.OffsetAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.OffsetAnimation(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t initializeWithCopy for DisplayList.ScaleAnimation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void *assignWithCopy for DisplayList.ScaleAnimation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];

  return a1;
}

uint64_t assignWithTake for DisplayList.ScaleAnimation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.ScaleAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.ScaleAnimation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for DisplayList.RotationAnimation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

void *assignWithCopy for DisplayList.RotationAnimation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];

  return a1;
}

uint64_t assignWithTake for DisplayList.RotationAnimation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

void *assignWithCopy for DisplayList.OpacityAnimation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for DisplayList.OpacityAnimation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

int64_t specialized EffectAnimation.encode(to:)(int64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v13;
  *&v10[8 * v12 + 32] = v9;
  *(a1 + 24) = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_20:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    goto LABEL_8;
  }

  *(a1 + 8) = v9 + 1;
  result = _RotationEffect.encode(to:)(a1, v6, v7, v8);
  if (v2)
  {
    return result;
  }

  v13 = 0;
  ProtobufEncoder.endLengthDelimited()();
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v9 = *(a1 + 8);
  v3 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  v16 = *(v3 + 2);
  v15 = *(v3 + 3);
  if (v16 >= v15 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v3);
  }

  *(v3 + 2) = v16 + 1;
  *&v3[8 * v16 + 32] = v9;
  *(a1 + 24) = v3;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_22:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    v3 = result;
    goto LABEL_13;
  }

  *(a1 + 8) = v9 + 1;
  result = _RotationEffect.encode(to:)(a1, v6, v7, v8);
  if (v13)
  {
    return result;
  }

  v9 = 0;
  ProtobufEncoder.endLengthDelimited()();
  v4 = *(v4 + 6);
  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v13 = *(a1 + 8);
  v3 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v18 = *(v3 + 2);
  v17 = *(v3 + 3);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v3);
    v19 = v9;
    v3 = result;
  }

  else
  {
    v19 = v9;
  }

  *(v3 + 2) = v18 + 1;
  *&v3[8 * v18 + 32] = v13;
  *(a1 + 24) = v3;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v13 + 1;
    result = CodableAnimation.encode(to:)(a1, v4);
    if (!v19)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

{
  v3 = v2;
  v4 = v1;
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v14;
  *&v11[8 * v13 + 32] = v10;
  *(a1 + 24) = v11;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
LABEL_20:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  result = _ScaleEffect.encode(to:)(a1, v6, v7, v8, v9);
  if (v2)
  {
    return result;
  }

  v14 = 0;
  ProtobufEncoder.endLengthDelimited()();
  v6 = v4[4];
  v7 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v10 = *(a1 + 8);
  v3 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  v17 = *(v3 + 2);
  v16 = *(v3 + 3);
  if (v17 >= v16 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v3);
  }

  *(v3 + 2) = v17 + 1;
  *&v3[8 * v17 + 32] = v10;
  *(a1 + 24) = v3;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
LABEL_22:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    v3 = result;
    goto LABEL_13;
  }

  *(a1 + 8) = v10 + 1;
  result = _ScaleEffect.encode(to:)(a1, v6, v7, v8, v9);
  if (v14)
  {
    return result;
  }

  v10 = 0;
  ProtobufEncoder.endLengthDelimited()();
  v4 = *(v4 + 8);
  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v14 = *(a1 + 8);
  v3 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v19 = *(v3 + 2);
  v18 = *(v3 + 3);
  if (v19 >= v18 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v3);
    v20 = v10;
    v3 = result;
  }

  else
  {
    v20 = v10;
  }

  *(v3 + 2) = v19 + 1;
  *&v3[8 * v19 + 32] = v14;
  *(a1 + 24) = v3;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v14 + 1;
    result = CodableAnimation.encode(to:)(a1, v4);
    if (!v20)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

int64_t specialized EffectAnimation.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = v3[1];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  result = specialized ProtobufEncoder.encodeMessage<A>(_:)(v5, v6);
  if (!v2)
  {
    v8 = v3[2];
    v9 = v3[3];
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v8, v9);
    v10 = *(v3 + 4);
    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    v11 = *(a1 + 8);
    v12 = *(a1 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
    }

    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v18 = v13 + 1;
      v16 = v12;
      v17 = *(v12 + 16);
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1, v16);
      v13 = v17;
      v15 = v18;
      v12 = result;
    }

    *(v12 + 16) = v15;
    *(v12 + 8 * v13 + 32) = v11;
    *(a1 + 24) = v12;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      *(a1 + 8) = v11 + 1;
      CodableAnimation.encode(to:)(a1, v10);
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

uint64_t _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPA2A08GeometryC05ValueRpzrlE6effect5value4sizeAA11DisplayListV0C0OAG_So6CGSizeVtFZAL05ScaleD0V_Tt2g5@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  _ScaleEffect.effectValue(size:)(&v17, a6, a7, a2, a3, a4, a5);
  v23 = *&v18[16];
  v24 = v19;
  v25 = v20;
  v21 = v17;
  v22 = *v18;
  if (ProjectionTransform.isInvertible.getter())
  {
    v8 = *v18;
    v9 = *&v18[24];
    v10 = v20;
    result = swift_allocObject();
    if (v8 == 0.0 && (v9 == 0.0 ? (v12 = v10 == 1.0) : (v12 = 0), v12))
    {
      v13 = *&v18[8];
      *(result + 16) = v17;
      *(result + 32) = v13;
      *(result + 48) = v19;
      *(result + 88) = 0;
      v14 = 9;
    }

    else
    {
      v15 = v24;
      *(result + 48) = v23;
      *(result + 64) = v15;
      *(result + 80) = v25;
      v16 = v22;
      *(result + 16) = v21;
      *(result + 32) = v16;
      v14 = 9;
      *(result + 88) = 1;
    }
  }

  else
  {
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    result = 0;
    v14 = 20;
  }

  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 12) = v14;
  return result;
}

uint64_t _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPA2A08GeometryC05ValueRpzrlE6effect5value4sizeAA11DisplayListV0C0OAG_So6CGSizeVtFZAL06OffsetD0V_Tt2g5@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  CGAffineTransformMakeTranslation(&v16, a2, a3);
  a = v16.a;
  b = v16.b;
  c = v16.c;
  d = v16.d;
  tx = v16.tx;
  ty = v16.ty;
  v16.c = 0.0;
  v16.d = c;
  v16.tx = d;
  v16.ty = 0.0;
  *&v17 = tx;
  *(&v17 + 1) = ty;
  *&v18 = 1.0;
  if (ProjectionTransform.isInvertible.getter())
  {
    v10 = v16.c;
    v11 = v16.ty;
    v15 = *&v18;
    result = swift_allocObject();
    if (v10 == 0.0 && v11 == 0.0 && v15 == 1.0)
    {
      v13 = *&v16.d;
      *(result + 16) = *&v16.a;
      *(result + 32) = v13;
      *(result + 48) = v17;
      *(result + 88) = 0;
    }

    else
    {
      *(result + 16) = a;
      *(result + 24) = b;
      *(result + 32) = 0;
      *(result + 40) = c;
      *(result + 48) = d;
      *(result + 56) = 0;
      *(result + 64) = tx;
      *(result + 72) = ty;
      *(result + 80) = 0x3FF0000000000000;
      *(result + 88) = 1;
    }

    *a1 = result;
    *(a1 + 8) = 0;
    v14 = 9;
  }

  else
  {
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    *a1 = 0;
    *(a1 + 8) = 0;
    v14 = 20;
  }

  *(a1 + 12) = v14;
  return result;
}

uint64_t _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPA2A08GeometryC05ValueRpzrlE6effect5value4sizeAA11DisplayListV0C0OAG_So6CGSizeVtFZAL08RotationD0V_Tt2g5@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  CGAffineTransformMakeTranslation(&v29, a3 * a5, a4 * a6);
  CGAffineTransformRotate(&v24, &v29, a2);
  v29 = v24;
  CGAffineTransformTranslate(&v24, &v29, -(a3 * a5), -(a4 * a6));
  a = v24.a;
  b = v24.b;
  c = v24.c;
  d = v24.d;
  tx = v24.tx;
  ty = v24.ty;
  v29.a = v24.a;
  v29.b = v24.b;
  v29.c = 0.0;
  v29.d = v24.c;
  v29.tx = v24.d;
  v29.ty = 0.0;
  v30 = *&v24.tx;
  *&v31 = 1.0;
  if (ProjectionTransform.isInvertible.getter())
  {
    v18 = v29.c;
    v19 = v29.ty;
    v23 = *&v31;
    result = swift_allocObject();
    if (v18 == 0.0 && v19 == 0.0 && v23 == 1.0)
    {
      v21 = *&v29.d;
      *(result + 16) = *&v29.a;
      *(result + 32) = v21;
      *(result + 48) = v30;
      *(result + 88) = 0;
    }

    else
    {
      *(result + 16) = a;
      *(result + 24) = b;
      *(result + 32) = 0;
      *(result + 40) = c;
      *(result + 48) = d;
      *(result + 56) = 0;
      *(result + 64) = tx;
      *(result + 72) = ty;
      *(result + 80) = 0x3FF0000000000000;
      *(result + 88) = 1;
    }

    *a1 = result;
    *(a1 + 8) = 0;
    v22 = 9;
  }

  else
  {
    v24.a = 0.0;
    v24.b = -2.68156159e154;
    _StringGuts.grow(_:)(28);
    v27 = *&v24.a;
    v28 = *&v24.b;
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    v24 = v29;
    v25 = v30;
    v26 = v31;
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(v27, v28);

    *a1 = 0;
    *(a1 + 8) = 0;
    v22 = 20;
  }

  *(a1 + 12) = v22;
  return result;
}

uint64_t EffectAnimator.evaluate(_:at:size:)(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double a5, double a6)
{
  v69 = a2;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v63 = *(v17 - 8);
  v64 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v55 - v22;
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v55 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a3;
  v32 = v31;
  outlined init with copy of AnyTrackedValue(v69, v71);
  type metadata accessor for _DisplayList_AnyEffectAnimation();
  v33 = swift_dynamicCast();
  v34 = *(v32 + 56);
  if (!v33)
  {
    v35 = 1;
    v34(v26, 1, 1, v10);
    (*(v24 + 8))(v26, v23);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 12) = 20;
    return v35;
  }

  v59 = a1;
  v34(v26, 0, 1, v10);
  v58 = v32;
  (*(v32 + 32))(v29, v26, v10);
  v35 = *v68;
  v36 = *(v11 + 64);
  if (!*v68)
  {
    v57 = *(v11 + 64);
    v36(v10, v11);
    v69 = v29;
    v37 = AssociatedConformanceWitness;
    v56 = *(AssociatedConformanceWitness + 24);
    v56(AssociatedTypeWitness, AssociatedConformanceWitness);
    v55 = *(v67 + 8);
    v55(v16, AssociatedTypeWitness);
    (*(v11 + 56))(v10, v11);
    v38 = v60;
    v56(AssociatedTypeWitness, v37);
    v55(v16, AssociatedTypeWitness);
    v39 = v64;
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v40 = *(v63 + 8);
    v40(v38, v39);
    type metadata accessor for AnimatorState();
    v41 = (*(v11 + 88))(v10, v11);
    v71[0] = 0.0;
    v42 = v66;
    v35 = specialized AnimatorState.__allocating_init(animation:interval:at:in:)(v41, v66, v71, 0);
    v43 = v42;
    v29 = v69;
    v40(v43, v39);
    v36 = v57;
    *v68 = v35;
  }

  v44 = v65;
  v36(v10, v11);
  if (v35 == 1)
  {
LABEL_12:
    (*(v11 + 96))(v44, v10, v11, a5, a6);
    (*(v67 + 8))(v44, AssociatedTypeWitness);
    (*(v58 + 8))(v29, v10);
    return v35;
  }

  v69 = v29;
  if (v35)
  {
    v45 = AssociatedConformanceWitness;
    v46 = *(AssociatedConformanceWitness + 24);

    v47 = v61;
    v46(AssociatedTypeWitness, v45);
    v48 = v47;
    v71[0] = v30;
    v70 = 1;
    v49 = AnimatorState.update(_:at:environment:)(v47, v71, 0x100000000uLL);
    v50 = v68;
    if (v49)
    {
      (*(v63 + 8))(v48, v64);
      outlined consume of EffectAnimator<A>.State<A>(v35);
      outlined consume of EffectAnimator<A>.State<A>(v35);
      v35 = 1;
      *v50 = 1;
    }

    else
    {
      v52 = v63;
      v51 = v64;
      v53 = v66;
      (*(v63 + 16))(v66, v48, v64);
      (*(v45 + 32))(v53, AssociatedTypeWitness, v45);
      outlined consume of EffectAnimator<A>.State<A>(v35);
      (*(v52 + 8))(v48, v51);
      v35 = 0;
    }

    v29 = v69;
    goto LABEL_12;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

float protocol witness for static EffectAnimation.effect(value:size:) in conformance DisplayList.OpacityAnimation@<S0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = LODWORD(result);
  *(a2 + 8) = 0;
  *(a2 + 12) = 4;
  return result;
}

void protocol witness for _DisplayList_AnyEffectAnimation.makeAnimator() in conformance DisplayList.OpacityAnimation(void *a1@<X8>)
{
  type metadata accessor for EffectAnimator<DisplayList.OpacityAnimation>();
  a1[3] = v2;
  a1[4] = &protocol witness table for EffectAnimator<A>;
  *a1 = 0;
}

int64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance DisplayList.OpacityAnimation(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  result = specialized ProtobufEncoder.messageField<A>(_:_:)(1, *v3);
  if (!v2)
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(2, v5);
    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    v8 = *(a1 + 8);
    v9 = *(a1 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = v10 + 1;
    if (v10 >= v11 >> 1)
    {
      v15 = v10 + 1;
      v13 = v9;
      v14 = *(v9 + 16);
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10 + 1, 1, v13);
      v10 = v14;
      v12 = v15;
      v9 = result;
    }

    *(v9 + 16) = v12;
    *(v9 + 8 * v10 + 32) = v8;
    *(a1 + 24) = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      *(a1 + 8) = v8 + 1;
      CodableAnimation.encode(to:)(a1, v6);
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

uint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance DisplayList.OpacityAnimation@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized EffectAnimation.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = result;
  }

  return result;
}

__n128 protocol witness for EffectAnimation.to.getter in conformance DisplayList.OffsetAnimation@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

void protocol witness for _DisplayList_AnyEffectAnimation.makeAnimator() in conformance DisplayList.OffsetAnimation(void *a1@<X8>)
{
  type metadata accessor for EffectAnimator<DisplayList.RotationAnimation>(0, &lazy cache variable for type metadata for EffectAnimator<DisplayList.OffsetAnimation>, lazy protocol witness table accessor for type DisplayList.OffsetAnimation and conformance DisplayList.OffsetAnimation);
  a1[3] = v2;
  a1[4] = &protocol witness table for EffectAnimator<A>;
  *a1 = 0;
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance DisplayList.OffsetAnimation@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized EffectAnimation.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

__n128 protocol witness for EffectAnimation.to.getter in conformance DisplayList.ScaleAnimation@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void protocol witness for _DisplayList_AnyEffectAnimation.makeAnimator() in conformance DisplayList.ScaleAnimation(void *a1@<X8>)
{
  type metadata accessor for EffectAnimator<DisplayList.RotationAnimation>(0, &lazy cache variable for type metadata for EffectAnimator<DisplayList.ScaleAnimation>, lazy protocol witness table accessor for type DisplayList.ScaleAnimation and conformance DisplayList.ScaleAnimation);
  a1[3] = v2;
  a1[4] = &protocol witness table for EffectAnimator<A>;
  *a1 = 0;
}

double protocol witness for EffectAnimation.from.getter in conformance DisplayList.RotationAnimation@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double protocol witness for EffectAnimation.to.getter in conformance DisplayList.RotationAnimation@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

void protocol witness for _DisplayList_AnyEffectAnimation.makeAnimator() in conformance DisplayList.RotationAnimation(void *a1@<X8>)
{
  type metadata accessor for EffectAnimator<DisplayList.RotationAnimation>(0, &lazy cache variable for type metadata for EffectAnimator<DisplayList.RotationAnimation>, lazy protocol witness table accessor for type DisplayList.RotationAnimation and conformance DisplayList.RotationAnimation);
  a1[3] = v2;
  a1[4] = &protocol witness table for EffectAnimator<A>;
  *a1 = 0;
}

void type metadata accessor for EffectAnimator<DisplayList.OpacityAnimation>()
{
  if (!lazy cache variable for type metadata for EffectAnimator<DisplayList.OpacityAnimation>)
  {
    v0 = type metadata accessor for EffectAnimator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EffectAnimator<DisplayList.OpacityAnimation>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DisplayList.RotationAnimation and conformance DisplayList.RotationAnimation()
{
  result = lazy protocol witness table cache variable for type DisplayList.RotationAnimation and conformance DisplayList.RotationAnimation;
  if (!lazy protocol witness table cache variable for type DisplayList.RotationAnimation and conformance DisplayList.RotationAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.RotationAnimation and conformance DisplayList.RotationAnimation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.ScaleAnimation and conformance DisplayList.ScaleAnimation()
{
  result = lazy protocol witness table cache variable for type DisplayList.ScaleAnimation and conformance DisplayList.ScaleAnimation;
  if (!lazy protocol witness table cache variable for type DisplayList.ScaleAnimation and conformance DisplayList.ScaleAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ScaleAnimation and conformance DisplayList.ScaleAnimation);
  }

  return result;
}

void type metadata accessor for EffectAnimator<DisplayList.RotationAnimation>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for EffectAnimator();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DisplayList.OffsetAnimation and conformance DisplayList.OffsetAnimation()
{
  result = lazy protocol witness table cache variable for type DisplayList.OffsetAnimation and conformance DisplayList.OffsetAnimation;
  if (!lazy protocol witness table cache variable for type DisplayList.OffsetAnimation and conformance DisplayList.OffsetAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.OffsetAnimation and conformance DisplayList.OffsetAnimation);
  }

  return result;
}

unint64_t destroy for EffectAnimator(unint64_t *a1)
{
  result = *a1;
  if (result >= 2)
  {
  }

  return result;
}

unint64_t *assignWithCopy for EffectAnimator(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 >= 2)
  {
    if (v4 >= 2)
    {
      *a1 = v4;
    }

    else
    {

      *a1 = *a2;
    }
  }

  else
  {
    *a1 = v4;
    if (v4 >= 2)
    {
    }
  }

  return a1;
}

unint64_t *assignWithTake for EffectAnimator(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result >= 2)
  {
    if (v2 >= 2)
    {
      *result = v2;
      v4 = result;

      return v4;
    }

    else
    {
      v3 = result;

      result = v3;
      *v3 = v2;
    }
  }

  else
  {
    *result = v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffectAnimator(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EffectAnimator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for _DisplayList_AnyEffectAnimation()
{
  result = lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation;
  if (!lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
  }

  return result;
}

unint64_t destroy for EffectAnimator.State(unint64_t *a1)
{
  result = *a1;
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

unint64_t *assignWithCopy for EffectAnimator.State(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = v4;
    if (v4 >= 0xFFFFFFFF)
    {
    }
  }

  else if (v4 < 0xFFFFFFFF)
  {

    *a1 = *a2;
  }

  else
  {
    *a1 = v4;
  }

  return a1;
}

unint64_t *assignWithTake for EffectAnimator.State(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v2;
  }

  else if (v2 < 0xFFFFFFFF)
  {
    v4 = result;

    result = v4;
    *v4 = v2;
  }

  else
  {
    *result = v2;
    v3 = result;

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffectAnimator.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EffectAnimator.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t static ContentCaptureProtectionPreferenceKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    result = a2();
  }

  *a1 = result & 1;
  return result;
}

char *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ContentCaptureProtectionPreferenceKey(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t static ContentCaptureProtectionPreferenceWriter._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t *a3@<X8>)
{
  v6 = a1[3];
  v32[2] = a1[2];
  v33 = v6;
  v34 = a1[4];
  v35 = *(a1 + 20);
  v7 = a1[1];
  v32[0] = *a1;
  v32[1] = v7;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v9 = a1[3];
  v28 = a1[2];
  v29 = v9;
  v30 = a1[4];
  v31 = *(a1 + 20);
  v10 = a1[1];
  v26 = *a1;
  v27 = v10;
  v11 = v9;
  *&v18[0] = v9;
  v12 = PreferenceKeys._index(of:)(&type metadata for ContentCaptureProtectionPreferenceKey);
  outlined init with copy of _ViewInputs(v32, &v20);

  v14 = *(v11 + 16);
  if (v12 == v14)
  {
    goto LABEL_5;
  }

  if (v12 < v14)
  {
    if (*(v11 + 16 * v12 + 32) == &type metadata for ContentCaptureProtectionPreferenceKey)
    {
      specialized Array.remove(at:)(v12);
    }

LABEL_5:
    v16[2] = v28;
    v16[3] = v29;
    v16[4] = v30;
    v17 = v31;
    v16[0] = v26;
    v16[1] = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v15 = outlined init with copy of _ViewInputs(v16, v18);
    a2(v15, &v20);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    outlined destroy of _ViewInputs(v18);
    _s7SwiftUI18PreferencesOutputsV20makePreferenceWriter6inputs3key5valueyAA0C6InputsV_xm14AttributeGraph0L0Vy5ValueQzGyXKtAA0F3KeyRzlFAA024ContentCaptureProtectionfO0V_Tt0B503_s7a4UI40pqrf46Writer33_0D6CD02499D969DD550B3CDDD0903EA3LLV9_e32View8modifier6inputs4bodyAA01_P7d6VAA11_mn13VyADG_AA01_P6k20VAjA01_U0V_AOtctFZ09L16U00X0VySbGyXEfu_ALySbGTf1ncn_n(v33, DWORD2(v33), a3, OffsetAttribute2);
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    return outlined destroy of _ViewInputs(&v20);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
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
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<KickModifier> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
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
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<SummarySymbol>, &type metadata for SummarySymbol, &protocol witness table for SummarySymbol, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<SummarySymbol> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<SummarySymbol>, &type metadata for SummarySymbol, &protocol witness table for SummarySymbol);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16ScalePulseEffect33_5B41BB980C958F118A8AF82B3D90BAC0LLV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
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
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ScalePulseEffect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA19GlassContainerCacheC17UnwrappedMaterialV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
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
    v11[0] = v2;
    v11[1] = v8;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11[2] = v4;
    v11[3] = v3;
    v15 = 0;
    v11[4] = v5;
    outlined init with copy of AnimatableAttribute<MaterialEffect.Fill>(v11, v10, &lazy cache variable for type metadata for AnimatableAttribute<GlassContainerCache.UnwrappedMaterial>, lazy protocol witness table accessor for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<GlassContainerCache.UnwrappedMaterial>, lazy protocol witness table accessor for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<GlassContainerCache.UnwrappedMaterial> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<GlassContainerCache.UnwrappedMaterial>, lazy protocol witness table accessor for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<GlassContainerCache.UnwrappedMaterial>, lazy protocol witness table accessor for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial);
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v11, &lazy cache variable for type metadata for AnimatableAttribute<GlassContainerCache.UnwrappedMaterial>, lazy protocol witness table accessor for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
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
    v11[0] = v2;
    v11[1] = v8;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11[2] = v4;
    v11[3] = v3;
    v15 = 0;
    v11[4] = v5;
    outlined init with copy of AnimatableAttribute<MaterialEffect.Fill>(v11, v10, &lazy cache variable for type metadata for AnimatableAttribute<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v11, &lazy cache variable for type metadata for AnimatableAttribute<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
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
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<GlassAppearanceScaleEffect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_Rotation3DEffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
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
    memset(v13, 0, 32);
    v12 = 0u;
    v11 = 0u;
    v13[32] = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_Rotation3DEffect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA6ShaderV08ResolvedJ0V_Tt1B5(_DWORD *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
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
    v11 = 0;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<Shader.ResolvedShader> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17VariableBlurStyleV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
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
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<VariableBlurStyle>, lazy protocol witness table accessor for type VariableBlurStyle and conformance VariableBlurStyle);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<VariableBlurStyle> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<VariableBlurStyle>, lazy protocol witness table accessor for type VariableBlurStyle and conformance VariableBlurStyle);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<VariableBlurStyle>, lazy protocol witness table accessor for type VariableBlurStyle and conformance VariableBlurStyle);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12ViewGeometryV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
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
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ViewGeometry> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZ12CoreGraphics7CGFloatV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<CGFloat> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA11StrokeStyleV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<StrokeStyle> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12MeshGradientV6_PaintV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v14 = 0;
    v15 = 0;
    v10[4] = v5;
    v13 = 0;
    v12 = 0u;
    v11 = 0u;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<MeshGradient._Paint> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14LinearGradientV13AbsolutePaintV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v14 = 0;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<LinearGradient.AbsolutePaint> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14LinearGradientV6_PaintV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v14 = 0;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<LinearGradient._Paint> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14RadialGradientV6_PaintV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<RadialGradient._Paint> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15AngularGradientV6_PaintV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<AngularGradient._Paint> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15_ContrastEffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ContrastEffect>, &type metadata for _ContrastEffect, &protocol witness table for _ContrastEffect, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<_ContrastEffect> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ContrastEffect>, &type metadata for _ContrastEffect, &protocol witness table for _ContrastEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16ResolvedGradientV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ResolvedGradient>, lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ResolvedGradient> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ResolvedGradient>, lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<ResolvedGradient>, lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_GrayscaleEffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<_GrayscaleEffect>, &type metadata for _GrayscaleEffect, &protocol witness table for _GrayscaleEffect, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<_GrayscaleEffect> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_GrayscaleEffect>, &type metadata for _GrayscaleEffect, &protocol witness table for _GrayscaleEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_ShapeStyle_PackV0K0V_Tt1B5(_DWORD *result, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v18 = 0;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Style>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ShapeStyle_Pack.Style> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Style>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Style>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_ShapeStyle_PackV4FillO_Tt1B5(_DWORD *result, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v16 = -1;
    v17 = 0;
    v18 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Fill>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ShapeStyle_Pack.Fill> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Fill>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Fill>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_ShapeStyle_PackV6EffectV4KindO_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(v12, 0, 25);
    v11 = 0u;
    v12[25] = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ShapeStyle_Pack.Effect.Kind> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_ShapeStyle_PackV6EffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[3] = v2;
    v10[4] = v5;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v14 = 256;
    v10[2] = v4;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ShapeStyle_Pack.Effect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_ShapeStyle_PackV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack>, lazy protocol witness table accessor for type _ShapeStyle_Pack and conformance _ShapeStyle_Pack);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ShapeStyle_Pack> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack>, lazy protocol witness table accessor for type _ShapeStyle_Pack and conformance _ShapeStyle_Pack);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeStyle_Pack>, lazy protocol witness table accessor for type _ShapeStyle_Pack and conformance _ShapeStyle_Pack);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_BrightnessEffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<_BrightnessEffect>, &type metadata for _BrightnessEffect, &protocol witness table for _BrightnessEffect, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<_BrightnessEffect> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_BrightnessEffect>, &type metadata for _BrightnessEffect, &protocol witness table for _BrightnessEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_SaturationEffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<_SaturationEffect>, &type metadata for _SaturationEffect, &protocol witness table for _SaturationEffect, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<_SaturationEffect> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_SaturationEffect>, &type metadata for _SaturationEffect, &protocol witness table for _SaturationEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA18EllipticalGradientV6_PaintV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<EllipticalGradient._Paint> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA18_HueRotationEffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<_HueRotationEffect>, &type metadata for _HueRotationEffect, &protocol witness table for _HueRotationEffect, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<_HueRotationEffect> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_HueRotationEffect>, &type metadata for _HueRotationEffect, &protocol witness table for _HueRotationEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA19ConcentricRectangleV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v12[38] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    LODWORD(v3) = *(v3 + 16);
    _s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOi0_(__src);
    memcpy(&v10[4], __src, 0x101uLL);
    v12[0] = __PAIR64__(v3, v6);
    v12[1] = __PAIR64__(v2, v4);
    LODWORD(v12[2]) = v5;
    memcpy(&v12[2] + 4, v10, 0x105uLL);
    v12[36] = 0;
    LODWORD(v12[37]) = 0;
    memcpy(v9, v12, sizeof(v9));
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ConcentricRectangle> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle);
    v8 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v12, &lazy cache variable for type metadata for AnimatableAttribute<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle);
    *v7 = v8;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA19ResolvedShadowStyleV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v13 = 0;
    v12 = 0u;
    v11 = 0u;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ResolvedShadowStyle> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA20RectangleCornerRadiiV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<RectangleCornerRadii> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA20_ColorMultiplyEffectV9_ResolvedV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0uLL;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ColorMultiplyEffect._Resolved>, lazy protocol witness table accessor for type _ColorMultiplyEffect._Resolved and conformance _ColorMultiplyEffect._Resolved);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ColorMultiplyEffect._Resolved> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ColorMultiplyEffect._Resolved>, lazy protocol witness table accessor for type _ColorMultiplyEffect._Resolved and conformance _ColorMultiplyEffect._Resolved);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ColorMultiplyEffect._Resolved>, lazy protocol witness table accessor for type _ColorMultiplyEffect._Resolved and conformance _ColorMultiplyEffect._Resolved);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA21_AlphaThresholdEffectV9_ResolvedV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v12 = 0;
    v11 = 0uLL;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_AlphaThresholdEffect._Resolved> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22ContainerRelativeShapeV6_InsetV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ContainerRelativeShape._Inset> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22UnevenRoundedRectangleV6_InsetV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v13 = 0;
    v12 = 0u;
    v11 = 0u;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<UnevenRoundedRectangle._Inset> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22UnevenRoundedRectangleV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<UnevenRoundedRectangle> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22_ColorMonochromeEffectV9_ResolvedV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0uLL;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ColorMonochromeEffect._Resolved> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA26CornerMaskingConfigurationV0J5StyleV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<CornerMaskingConfiguration.CornerStyle> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA26CornerMaskingConfigurationV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(v13, 0, sizeof(v13));
    v12 = 0u;
    v11 = 0u;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<CornerMaskingConfiguration> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA29PartialContainerRelativeShapeV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v17 = 0;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v18 = 1;
    v19 = 0;
    v20 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<PartialContainerRelativeShape> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA30RoundedRectangularShapeCornersV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v5 = *(a2 + 24);
    v4 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    LODWORD(v3) = *(v3 + 16);
    _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOi0_(v10);
    *&v9[4] = v10[0];
    *&v9[68] = v10[4];
    *&v9[52] = v10[3];
    *&v9[36] = v10[2];
    *&v9[20] = v10[1];
    v9[132] = v11;
    *&v9[116] = v10[7];
    *&v9[100] = v10[6];
    *&v9[84] = v10[5];
    v15 = *&v9[32];
    v14 = *&v9[16];
    v18 = *&v9[80];
    v19 = *&v9[96];
    *v20 = *&v9[112];
    v16 = *&v9[48];
    v12[0] = v6;
    v12[1] = v3;
    v12[2] = v5;
    v12[3] = v2;
    v12[4] = v4;
    *&v20[13] = *&v9[125];
    v17 = *&v9[64];
    v13 = *v9;
    v21 = 0;
    v22 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangularShapeCorners> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners);
    v8 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v12, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners);
    *v7 = v8;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA4EdgeOAAE6CornerO5StyleV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<Edge.Corner.Style> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA5AngleV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<Angle>, &type metadata for Angle, &protocol witness table for Angle, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<Angle> and conformance AnimatableAttribute<A>();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v10, &lazy cache variable for type metadata for AnimatableAttribute<Angle>, &type metadata for Angle, &protocol witness table for Angle);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA5ColorV15ResolvedDuotoneV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0uLL;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<Color.ResolvedDuotone> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA5ColorV8ResolvedV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0uLL;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<Color.Resolved>, lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<Color.Resolved> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<Color.Resolved>, lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<Color.Resolved>, lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA5ColorVAAE11ResolvedHDRV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v12 = 0;
    v11 = 0uLL;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<Color.ResolvedHDR> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA6CircleV6_InsetV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<Circle._Inset> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA7CapsuleV6_InsetV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<Capsule._Inset> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA7EllipseV6_InsetV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<Ellipse._Inset> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA8UnitRectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<UnitRect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<UnitRect>, lazy protocol witness table accessor for type UnitRect and conformance UnitRect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA8ViewSizeV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ViewSize> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9BlurStyleV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<BlurStyle>, lazy protocol witness table accessor for type BlurStyle and conformance BlurStyle);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<BlurStyle> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<BlurStyle>, lazy protocol witness table accessor for type BlurStyle and conformance BlurStyle);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<BlurStyle>, lazy protocol witness table accessor for type BlurStyle and conformance BlurStyle);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9RectangleV6_InsetV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<Rectangle._Inset> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9UnitPointV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<UnitPoint> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZSd_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v11[0] = v6;
    v11[1] = v8;
    v11[2] = v4;
    v11[3] = v2;
    v11[4] = v5;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    v9 = MEMORY[0x1E69E63B0];
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for AnimatableAttribute<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatableAttribute);
    lazy protocol witness table accessor for type AnimatableAttribute<Double> and conformance AnimatableAttribute<A>();
    v10 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<_OpacityEffect>(v11, &lazy cache variable for type metadata for AnimatableAttribute<Double>, v9, &protocol witness table for Double);
    *v7 = v10;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZSo6CGRectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for CGRect(0);
    type metadata accessor for AnimatableAttribute<CGRect>();
    lazy protocol witness table accessor for type AnimatableAttribute<CGPoint> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<CGRect> and conformance AnimatableAttribute<A>, type metadata accessor for AnimatableAttribute<CGRect>);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<CGPoint>(v10, type metadata accessor for AnimatableAttribute<CGRect>);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZSo6CGSizeV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for CGSize(0);
    type metadata accessor for AnimatableAttribute<CGSize>();
    lazy protocol witness table accessor for type AnimatableAttribute<CGPoint> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<CGSize> and conformance AnimatableAttribute<A>, type metadata accessor for AnimatableAttribute<CGSize>);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<CGPoint>(v10, type metadata accessor for AnimatableAttribute<CGSize>);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZSo7CGPointV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for CGPoint(0);
    type metadata accessor for AnimatableAttribute<CGPoint>();
    lazy protocol witness table accessor for type AnimatableAttribute<CGPoint> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<CGPoint> and conformance AnimatableAttribute<A>, type metadata accessor for AnimatableAttribute<CGPoint>);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<CGPoint>(v10, type metadata accessor for AnimatableAttribute<CGPoint>);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

void VisualEffect.colorEffect(_:isEnabled:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32) | 2;
  v13[0] = *a1;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  v14 = v10;
  v11 = v13[0];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v12 = v11;
  VisualEffect.layerEffect(_:maxSampleOffset:isEnabled:)(v13, a2, a3, a4, 0.0, 0.0);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

uint64_t VisualEffect.layerEffect(_:maxSampleOffset:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *&v15 = *a1;
  v9 = v15;
  *(&v15 + 1) = v8;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  *v17 = v12;
  *&v17[8] = a5;
  *&v17[16] = a6;
  v17[24] = a2;
  lazy protocol witness table accessor for type _ShaderFilterEffect and conformance _ShaderFilterEffect();
  VisualEffect.concat<A>(_:)(&v15, a3, &type metadata for _ShaderFilterEffect, a4);
  v18[0] = v15;
  v18[1] = v16;
  v19[0] = *v17;
  *(v19 + 9) = *&v17[9];
  v13 = v9;

  return outlined destroy of _ShaderFilterEffect(v18);
}

void VisualEffect.distortionEffect(_:maxSampleOffset:isEnabled:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32) | 4;
  v17[0] = *a1;
  v17[1] = v11;
  v17[2] = v12;
  v17[3] = v13;
  v18 = v14;
  v15 = v17[0];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = v15;
  VisualEffect.layerEffect(_:maxSampleOffset:isEnabled:)(v17, a2, a3, a4, a5, a6);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

uint64_t static _ShaderFilterEffect._makeVisualEffect(effect:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  v42 = a2[2];
  v43 = v7;
  v44 = a2[4];
  v45 = *(a2 + 20);
  v8 = a2[1];
  v40 = *a2;
  v41 = v8;
  v9 = v8;
  swift_beginAccess();
  v10 = *(v9 + 16);
  type metadata accessor for PropertyList.Tracker();
  v11 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v13;
  v14 = MEMORY[0x1E69E7CC0];
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *(v12 + 56) = 0;
  *(v11 + 16) = v12;
  *&v34 = __PAIR64__(v10, v6);
  *(&v34 + 1) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _ShaderFilterEffect.ResolvedEffect and conformance _ShaderFilterEffect.ResolvedEffect();
  v15 = Attribute.init<A>(body:value:flags:update:)();

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v30 = v42;
  v31 = v43;
  v32 = v44;
  v28 = v40;
  v29 = v41;
  v17 = v42;
  v33 = v45;
  LODWORD(v30) = 0;
  v39 = v45;
  v37 = v43;
  v38 = v44;
  v34 = v40;
  v35 = v41;
  v36 = v30;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v43))
  {
    v20 = v15;
    v21[0] = v34;
    v21[1] = v35;
    v21[2] = v36;
    outlined init with copy of _ViewInputs(&v40, &v22);
    outlined init with copy of _ViewInputs(&v34, &v22);
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA6ShaderV08ResolvedJ0V_Tt1B5(&v20, v21);
    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA6ShaderV08ResolvedN0V_Tt3B5(v20, &v34, a3, a4);
  }

  else
  {
    v24 = v36;
    v25 = v37;
    v26 = v38;
    v27 = v39;
    v22 = v34;
    v23 = v35;
    outlined init with copy of _ViewInputs(&v40, v21);
    v18 = outlined init with copy of _ViewInputs(&v34, v21);
    (a3)(v18, &v22);
  }

  outlined destroy of _ViewInputs(&v34);
  LODWORD(v30) = v17;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a4, &v28);
    AGSubgraphEndTreeElement();
  }

  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<ContentTransitionEffect>, &type metadata for ContentTransitionEffect, &protocol witness table for ContentTransitionEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<ContentTransitionEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA6ShaderV08ResolvedN0V_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<Shader.ResolvedShader>, &type metadata for Shader.ResolvedShader, &protocol witness table for Shader.ResolvedShader, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<Shader.ResolvedShader> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA17VariableBlurStyleV_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<VariableBlurStyle>, &type metadata for VariableBlurStyle, &protocol witness table for VariableBlurStyle, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<VariableBlurStyle> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA0I21ListArchivedAnimation33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV0D0V_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<ViewListArchivedAnimation.Effect>, &type metadata for ViewListArchivedAnimation.Effect, &protocol witness table for ViewListArchivedAnimation.Effect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<ViewListArchivedAnimation.Effect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA016_ColorMonochromeD0V9_ResolvedV_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ColorMonochromeEffect._Resolved>, &type metadata for _ColorMonochromeEffect._Resolved, &protocol witness table for _ColorMonochromeEffect._Resolved, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ColorMonochromeEffect._Resolved> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA015_AlphaThresholdD0V9_ResolvedV_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_AlphaThresholdEffect._Resolved>, &type metadata for _AlphaThresholdEffect._Resolved, &protocol witness table for _AlphaThresholdEffect._Resolved, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_AlphaThresholdEffect._Resolved> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}