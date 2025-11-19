double protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.Stroke@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized SDFStyle.Stroke.init(from:)(a1, v6);
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

int64_t SDFStyle.Gradient.encode(to:)(int64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 48);
    v7 = 45;
    do
    {
      v10 = *(v6 - 4);
      v9 = *(v6 - 3);
      v12 = *(v6 - 2);
      v11 = *(v6 - 1);
      v13 = *v6;
      v14 = v4[1];
      v15 = v4[2];
      if (v14 >= v15)
      {
        result = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_185;
        }

        if (v15 < result)
        {
          v44 = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          v4[1] = result;
          v44 = (*v4 + v14);
        }

        *v44 = 10;
        v16 = v4[1];
      }

      else
      {
        *(*v4 + v14) = 10;
        v16 = (v14 + 1);
        v4[1] = v14 + 1;
      }

      v17 = v4[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      *&v17[8 * v19 + 32] = v16;
      v4[3] = v17;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_172;
      }

      v4[1] = v20;
      if (v10 == 0.0)
      {
        if (v9 == 0.0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v21 = v4[2];
        if (v20 >= v21)
        {
          result = (v16 + 2);
          if (__OFADD__(v20, 1))
          {
            goto LABEL_188;
          }

          if (v21 < result)
          {
            v46 = ProtobufEncoder.growBufferSlow(to:)(result);
          }

          else
          {
            v4[1] = result;
            v46 = &v20[*v4];
          }

          *v46 = 13;
          v22 = v4[1];
          v23 = (v22 + 4);
          if (__OFADD__(v22, 4))
          {
            goto LABEL_175;
          }
        }

        else
        {
          v20[*v4] = 13;
          v22 = v16 + 2;
          v4[1] = v16 + 2;
          v23 = (v16 + 6);
          if (__OFADD__(v16 + 2, 4))
          {
            goto LABEL_175;
          }
        }

        if (v4[2] < v23)
        {
          v24 = ProtobufEncoder.growBufferSlow(to:)(v23);
        }

        else
        {
          v4[1] = v23;
          v24 = &v22[*v4];
        }

        *v24 = v10;
        if (v9 == 0.0)
        {
LABEL_15:
          if (v12 != 0.0)
          {
            goto LABEL_28;
          }

          goto LABEL_16;
        }
      }

      v25 = v4[1];
      v26 = v4[2];
      if (v25 >= v26)
      {
        result = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_189;
        }

        if (v26 < result)
        {
          v47 = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          v4[1] = result;
          v47 = (*v4 + v25);
        }

        *v47 = 21;
        v27 = v4[1];
        v28 = v27 + 4;
        if (__OFADD__(v27, 4))
        {
          goto LABEL_176;
        }
      }

      else
      {
        *(*v4 + v25) = 21;
        v27 = v25 + 1;
        v4[1] = v27;
        v28 = v27 + 4;
        if (__OFADD__(v27, 4))
        {
          goto LABEL_176;
        }
      }

      if (v4[2] < v28)
      {
        v29 = ProtobufEncoder.growBufferSlow(to:)(v28);
      }

      else
      {
        v4[1] = v28;
        v29 = (*v4 + v27);
      }

      *v29 = v9;
      if (v12 != 0.0)
      {
LABEL_28:
        v30 = v4[1];
        v31 = v4[2];
        if (v30 >= v31)
        {
          result = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_190;
          }

          if (v31 < result)
          {
            v48 = ProtobufEncoder.growBufferSlow(to:)(result);
          }

          else
          {
            v4[1] = result;
            v48 = (*v4 + v30);
          }

          *v48 = 29;
          v32 = v4[1];
          v33 = v32 + 4;
          if (__OFADD__(v32, 4))
          {
            goto LABEL_177;
          }
        }

        else
        {
          *(*v4 + v30) = 29;
          v32 = v30 + 1;
          v4[1] = v32;
          v33 = v32 + 4;
          if (__OFADD__(v32, 4))
          {
            goto LABEL_177;
          }
        }

        if (v4[2] < v33)
        {
          v34 = ProtobufEncoder.growBufferSlow(to:)(v33);
        }

        else
        {
          v4[1] = v33;
          v34 = (*v4 + v32);
        }

        *v34 = v12;
        if (v11 == 1.0)
        {
          goto LABEL_38;
        }

        goto LABEL_33;
      }

LABEL_16:
      if (v11 == 1.0)
      {
        goto LABEL_38;
      }

LABEL_33:
      v35 = v4[1];
      v36 = v4[2];
      if (v35 >= v36)
      {
        result = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_191;
        }

        if (v36 < result)
        {
          v49 = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          v4[1] = result;
          v49 = (*v4 + v35);
        }

        *v49 = 37;
        v37 = v4[1];
        v38 = v37 + 4;
        if (__OFADD__(v37, 4))
        {
          goto LABEL_178;
        }
      }

      else
      {
        *(*v4 + v35) = 37;
        v37 = v35 + 1;
        v4[1] = v37;
        v38 = v37 + 4;
        if (__OFADD__(v37, 4))
        {
          goto LABEL_178;
        }
      }

      if (v4[2] < v38)
      {
        v39 = ProtobufEncoder.growBufferSlow(to:)(v38);
      }

      else
      {
        v4[1] = v38;
        v39 = (*v4 + v37);
      }

      *v39 = v11;
LABEL_38:
      if (v13 != 0.0)
      {
        v40 = v4[1];
        v41 = v4[2];
        if (v40 >= v41)
        {
          result = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_187;
          }

          if (v41 < result)
          {
            v45 = ProtobufEncoder.growBufferSlow(to:)(result);
          }

          else
          {
            v4[1] = result;
            v45 = (*v4 + v40);
          }

          *v45 = 45;
          v42 = v4[1];
          v43 = v42 + 4;
          if (__OFADD__(v42, 4))
          {
            goto LABEL_174;
          }
        }

        else
        {
          *(*v4 + v40) = 45;
          v42 = v40 + 1;
          v4[1] = v42;
          v43 = v42 + 4;
          if (__OFADD__(v42, 4))
          {
            goto LABEL_174;
          }
        }

        if (v4[2] >= v43)
        {
          v4[1] = v43;
          v8 = (*v4 + v42);
        }

        else
        {
          v8 = ProtobufEncoder.growBufferSlow(to:)(v43);
        }

        *v8 = v13;
      }

      result = ProtobufEncoder.endLengthDelimited()();
      v6 += 5;
      --v5;
    }

    while (v5);
  }

  v5 = a3;
  v7 = *(a3 + 16);
  if (v7)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v16 = v4[1];
    v17 = v4[3];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_183;
    }

    while (1)
    {
      v51 = *(v17 + 2);
      v50 = *(v17 + 3);
      if (v51 >= v50 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 2) = v51 + 1;
      *&v17[8 * v51 + 32] = v16;
      v4[3] = v17;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v4[1] = v16 + 1;
      v16 = (v5 + 32);
      while (1)
      {
        v52 = v4[1];
        v53 = v52 + 4;
        if (__OFADD__(v52, 4))
        {
          break;
        }

        v54 = *v16;
        if (v4[2] < v53)
        {
          v55 = ProtobufEncoder.growBufferSlow(to:)(v53);
        }

        else
        {
          v4[1] = v53;
          v55 = (*v4 + v52);
        }

        v56 = v54;
        *v55 = v56;
        v16 += 8;
        if (!--v7)
        {
          result = ProtobufEncoder.endLengthDelimited()();
          goto LABEL_99;
        }
      }

      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      v17 = result;
    }

    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
  }

  else
  {
LABEL_99:
    v7 = *(a4 + 16);
    if (v7)
    {
      v17 = (a4 + 32);
      v5 = 13;
      while (1)
      {
        v58 = v4[1];
        v59 = v4[2];
        v93 = *v17;
        if (v58 >= v59)
        {
          result = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_186;
          }

          if (v59 < result)
          {
            v86 = ProtobufEncoder.growBufferSlow(to:)(result);
          }

          else
          {
            v4[1] = result;
            v86 = (*v4 + v58);
          }

          *v86 = 18;
          v60 = v4[1];
        }

        else
        {
          *(*v4 + v58) = 18;
          v60 = v58 + 1;
          v4[1] = v58 + 1;
        }

        v16 = v4[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v62 = *(v16 + 2);
        v61 = *(v16 + 3);
        v63 = v93;
        if (v62 >= v61 >> 1)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v16);
          v63 = v93;
          v16 = v87;
        }

        *(v16 + 2) = v62 + 1;
        *&v16[8 * v62 + 32] = v60;
        v4[3] = v16;
        v64 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_173;
        }

        v4[1] = v64;
        if (*&v63 != 0.0)
        {
          v65 = v4[2];
          if (v64 >= v65)
          {
            result = v60 + 2;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_193;
            }

            if (v65 < result)
            {
              v88 = ProtobufEncoder.growBufferSlow(to:)(result);
              v63 = v93;
            }

            else
            {
              v4[1] = result;
              v88 = (*v4 + v64);
            }

            *v88 = 13;
            v66 = v4[1];
            v67 = v66 + 4;
            if (__OFADD__(v66, 4))
            {
              goto LABEL_179;
            }
          }

          else
          {
            *(*v4 + v64) = 13;
            v66 = v60 + 2;
            v4[1] = v60 + 2;
            v67 = v60 + 6;
            if (__OFADD__(v60 + 2, 4))
            {
              goto LABEL_179;
            }
          }

          if (v4[2] < v67)
          {
            v68 = ProtobufEncoder.growBufferSlow(to:)(v67);
            v63 = v93;
          }

          else
          {
            v4[1] = v67;
            v68 = (*v4 + v66);
          }

          *v68 = v63;
        }

        v69 = DWORD1(v63);
        if (*(&v63 + 1) != 0.0)
        {
          v70 = v4[1];
          v71 = v4[2];
          if (v70 >= v71)
          {
            result = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_192;
            }

            if (v71 < result)
            {
              v89 = ProtobufEncoder.growBufferSlow(to:)(result);
              *(&v63 + 1) = *(&v93 + 1);
            }

            else
            {
              v4[1] = result;
              v89 = (*v4 + v70);
            }

            *v89 = 21;
            v72 = v4[1];
            v73 = v72 + 4;
            if (__OFADD__(v72, 4))
            {
              goto LABEL_180;
            }
          }

          else
          {
            *(*v4 + v70) = 21;
            v72 = v70 + 1;
            v4[1] = v72;
            v73 = v72 + 4;
            if (__OFADD__(v72, 4))
            {
              goto LABEL_180;
            }
          }

          if (v4[2] < v73)
          {
            v74 = ProtobufEncoder.growBufferSlow(to:)(v73);
            *(&v63 + 1) = *(&v93 + 1);
          }

          else
          {
            v4[1] = v73;
            v74 = (*v4 + v72);
          }

          *v74 = v69;
        }

        v75 = DWORD2(v63);
        if (*(&v63 + 2) != 1.0)
        {
          v76 = v4[1];
          v77 = v4[2];
          if (v76 >= v77)
          {
            result = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              goto LABEL_194;
            }

            if (v77 < result)
            {
              v90 = ProtobufEncoder.growBufferSlow(to:)(result);
              HIDWORD(v63) = HIDWORD(v93);
            }

            else
            {
              v4[1] = result;
              v90 = (*v4 + v76);
            }

            *v90 = 29;
            v78 = v4[1];
            v79 = v78 + 4;
            if (__OFADD__(v78, 4))
            {
              goto LABEL_181;
            }
          }

          else
          {
            *(*v4 + v76) = 29;
            v78 = v76 + 1;
            v4[1] = v78;
            v79 = v78 + 4;
            if (__OFADD__(v78, 4))
            {
              goto LABEL_181;
            }
          }

          if (v4[2] < v79)
          {
            v80 = ProtobufEncoder.growBufferSlow(to:)(v79);
            HIDWORD(v63) = HIDWORD(v93);
          }

          else
          {
            v4[1] = v79;
            v80 = (*v4 + v78);
          }

          *v80 = v75;
        }

        v81 = HIDWORD(v63);
        if (*(&v63 + 3) != 1.0)
        {
          v82 = v4[1];
          v83 = v4[2];
          if (v82 >= v83)
          {
            result = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_195;
            }

            if (v83 < result)
            {
              v91 = ProtobufEncoder.growBufferSlow(to:)(result);
            }

            else
            {
              v4[1] = result;
              v91 = (*v4 + v82);
            }

            *v91 = 37;
            v84 = v4[1];
            v85 = v84 + 4;
            if (__OFADD__(v84, 4))
            {
              goto LABEL_182;
            }
          }

          else
          {
            *(*v4 + v82) = 37;
            v84 = v82 + 1;
            v4[1] = v84;
            v85 = v84 + 4;
            if (__OFADD__(v84, 4))
            {
              goto LABEL_182;
            }
          }

          if (v4[2] >= v85)
          {
            v4[1] = v85;
            v57 = (*v4 + v84);
          }

          else
          {
            v57 = ProtobufEncoder.growBufferSlow(to:)(v85);
          }

          *v57 = v81;
        }

        result = ProtobufEncoder.endLengthDelimited()();
        v17 += 16;
        if (!--v7)
        {
          return result;
        }
      }
    }
  }

  return result;
}

char *protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.Gradient@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = specialized SDFStyle.Gradient.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void SDFStyle.Shadow.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  if (*v1 != 0.0)
  {
    v2 = fabs(v5);
    if (v2 >= 65536.0)
    {
      v6 = 9;
    }

    else
    {
      v6 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v6);
    if (v2 >= 65536.0)
    {
      v9 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v9 + 8;
      if (__OFADD__(v9, 8))
      {
        goto LABEL_44;
      }

      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v5;
      }

      else
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v9) = v5;
      }
    }

    else
    {
      v7 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v7 + 4;
      if (__OFADD__(v7, 4))
      {
        goto LABEL_43;
      }

      *&v5 = v5;
      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_47;
      }

      *(a1 + 8) = isUniquelyReferenced_nonNull_native;
      *(*a1 + v7) = LODWORD(v5);
    }
  }

  while (1)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v10 = *(a1 + 8);
    v11 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    *&v11[8 * v13 + 32] = v10;
    *(a1 + 24) = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_41:
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      v11 = isUniquelyReferenced_nonNull_native;
      goto LABEL_31;
    }

    *(a1 + 8) = v10 + 1;
    Color.ResolvedHDR.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
    v5 = v3[4];
    if (v5 == 0.0)
    {
      goto LABEL_28;
    }

    v2 = fabs(v5);
    if (v2 >= 65536.0)
    {
      v14 = 25;
    }

    else
    {
      v14 = 29;
    }

    ProtobufEncoder.encodeVarint(_:)(v14);
    if (v2 < 65536.0)
    {
      v15 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v15 + 4;
      if (!__OFADD__(v15, 4))
      {
        v16 = v5;
        if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v16;
        }

        else
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v15) = v16;
        }

        goto LABEL_28;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v17 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v17 + 8;
    if (!__OFADD__(v17, 8))
    {
      break;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v5);
  }

  if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
  {
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v5;
  }

  else
  {
    *(a1 + 8) = isUniquelyReferenced_nonNull_native;
    *(*a1 + v17) = v5;
  }

LABEL_28:
  v5 = v3[5];
  v2 = v3[6];
  if (v5 == 0.0 && v2 == 0.0)
  {
    goto LABEL_35;
  }

  ProtobufEncoder.encodeVarint(_:)(0x22uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_31:
  v19 = *(v11 + 2);
  v18 = *(v11 + 3);
  if (v19 >= v18 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  *(v11 + 2) = v19 + 1;
  *&v11[8 * v19 + 32] = v10;
  *(a1 + 24) = v11;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(a1 + 8) = v10 + 1;
  CGSize.encode(to:)(a1, v5, v2);
  ProtobufEncoder.endLengthDelimited()();
LABEL_35:
  if (v3[7])
  {
    ProtobufEncoder.encodeVarint(_:)(0x28uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (*(v3 + 57))
  {
    ProtobufEncoder.encodeVarint(_:)(0x30uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.Shadow@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  specialized SDFStyle.Shadow.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 10);
    *(a2 + 42) = *(v7 + 10);
  }

  return result;
}

double *SDFStyle.GlassDisplacement.encode(to:)(double *result)
{
  v2 = v1;
  v3 = result;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    goto LABEL_12;
  }

  v5 = fabs(v4);
  if (v5 >= 65536.0)
  {
    v6 = 9;
  }

  else
  {
    v6 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v6);
  if (v5 >= 65536.0)
  {
    v8 = *(v3 + 1);
    result = (v8 + 8);
    if (!__OFADD__(v8, 8))
    {
      if (*(v3 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v4;
      }

      else
      {
        *(v3 + 1) = result;
        *(*v3 + v8) = v4;
      }

      goto LABEL_12;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v7 = *(v3 + 1);
  result = (v7 + 4);
  if (__OFADD__(v7, 4))
  {
    __break(1u);
    goto LABEL_53;
  }

  *&v4 = v4;
  if (*(v3 + 2) < result)
  {
    goto LABEL_58;
  }

  *(v3 + 1) = result;
  *(*v3 + v7) = LODWORD(v4);
  while (1)
  {
LABEL_12:
    v4 = v2[1];
    if (v4 != 0.0)
    {
      v9 = fabs(v4);
      if (v9 >= 65536.0)
      {
        v10 = 17;
      }

      else
      {
        v10 = 21;
      }

      ProtobufEncoder.encodeVarint(_:)(v10);
      if (v9 >= 65536.0)
      {
        v13 = *(v3 + 1);
        result = (v13 + 8);
        if (__OFADD__(v13, 8))
        {
          goto LABEL_55;
        }

        if (*(v3 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v4;
        }

        else
        {
          *(v3 + 1) = result;
          *(*v3 + v13) = v4;
        }
      }

      else
      {
        v11 = *(v3 + 1);
        result = (v11 + 4);
        if (__OFADD__(v11, 4))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v12 = v4;
        if (*(v3 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v12;
        }

        else
        {
          *(v3 + 1) = result;
          *(*v3 + v11) = v12;
        }
      }
    }

    v4 = v2[2];
    if (v4 == 0.0)
    {
      goto LABEL_34;
    }

    v14 = fabs(v4);
    if (v14 >= 65536.0)
    {
      v15 = 25;
    }

    else
    {
      v15 = 29;
    }

    ProtobufEncoder.encodeVarint(_:)(v15);
    if (v14 >= 65536.0)
    {
      v17 = *(v3 + 1);
      result = (v17 + 8);
      if (!__OFADD__(v17, 8))
      {
        if (*(v3 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v4;
        }

        else
        {
          *(v3 + 1) = result;
          *(*v3 + v17) = v4;
        }

        goto LABEL_34;
      }

      goto LABEL_57;
    }

    v16 = *(v3 + 1);
    result = (v16 + 4);
    if (!__OFADD__(v16, 4))
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v4);
  }

  *&v4 = v4;
  if (*(v3 + 2) < result)
  {
    goto LABEL_64;
  }

  *(v3 + 1) = result;
  *(*v3 + v16) = LODWORD(v4);
LABEL_34:
  while (2)
  {
    v18 = v2[3];
    if (v18 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x39uLL);
      v19 = *(v3 + 1);
      result = (v19 + 8);
      if (__OFADD__(v19, 8))
      {
        __break(1u);
      }

      else if (*(v3 + 2) >= result)
      {
        *(v3 + 1) = result;
        *(*v3 + v19) = v18;
        goto LABEL_38;
      }

      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v18;
    }

LABEL_38:
    v4 = v2[4];
    if (v4 == 0.0)
    {
      return result;
    }

    v20 = fabs(v4);
    if (v20 >= 65536.0)
    {
      v21 = 65;
    }

    else
    {
      v21 = 69;
    }

    ProtobufEncoder.encodeVarint(_:)(v21);
    if (v20 < 65536.0)
    {
      v22 = *(v3 + 1);
      result = (v22 + 4);
      if (!__OFADD__(v22, 4))
      {
        v23 = v4;
        if (*(v3 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v23;
        }

        else
        {
          *(v3 + 1) = result;
          *(*v3 + v22) = v23;
        }

        return result;
      }

      __break(1u);
      goto LABEL_63;
    }

    v24 = *(v3 + 1);
    result = (v24 + 8);
    if (__OFADD__(v24, 8))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = LODWORD(v4);
      continue;
    }

    break;
  }

  if (*(v3 + 2) < result)
  {
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v4;
  }

  else
  {
    *(v3 + 1) = result;
    *(*v3 + v24) = v4;
  }

  return result;
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.GlassDisplacement@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized SDFStyle.GlassDisplacement.init(from:)(a1, v6);
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

void SDFStyle.GlassHighlight.encode(to:)(uint64_t a1)
{
  v3 = v1;
  __asm { FMOV            V1.4S, #1.0 }

  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + 8 * v14 + 32) = v10;
  *(a1 + 24) = v11;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_62;
  }

  *(a1 + 8) = v10 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  ProtobufEncoder.endLengthDelimited()();
  v15 = *(v3 + 32);
  if (v15 != 0.0)
  {
    v16 = fabs(v15);
    if (v16 >= 65536.0)
    {
      v17 = 17;
    }

    else
    {
      v17 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v17);
    if (v16 >= 65536.0)
    {
      v20 = *(a1 + 8);
      v19 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
        if (*(a1 + 16) < v19)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v19) = v15;
        }

        else
        {
          *(a1 + 8) = v19;
          *(*a1 + v20) = v15;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v18 = *(a1 + 8);
      v19 = v18 + 4;
      if (!__OFADD__(v18, 4))
      {
        *&v15 = v15;
        if (*(a1 + 16) < v19)
        {
          goto LABEL_70;
        }

        *(a1 + 8) = v19;
        *(*a1 + v18) = LODWORD(v15);
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_68;
  }

  while (1)
  {
LABEL_17:
    v2 = *(v3 + 40);
    if (v2 == 0.0)
    {
      goto LABEL_21;
    }

    ProtobufEncoder.encodeVarint(_:)(0x19uLL);
    v21 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v21 + 8;
    if (__OFADD__(v21, 8))
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

    else if (*(a1 + 16) >= isUniquelyReferenced_nonNull_native)
    {
      *(a1 + 8) = isUniquelyReferenced_nonNull_native;
      *(*a1 + v21) = v2;
      goto LABEL_21;
    }

    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v2;
LABEL_21:
    v15 = *(v3 + 48);
    if (v15 == 0.0)
    {
      goto LABEL_32;
    }

    v22 = fabs(v15);
    v23 = v22 >= 65536.0 ? 33 : 37;
    ProtobufEncoder.encodeVarint(_:)(v23);
    if (v22 >= 65536.0)
    {
      break;
    }

    v24 = *(a1 + 8);
    v19 = v24 + 4;
    if (!__OFADD__(v24, 4))
    {
      *&v15 = v15;
      if (*(a1 + 16) >= v19)
      {
        *(a1 + 8) = v19;
        *(*a1 + v24) = LODWORD(v15);
        goto LABEL_32;
      }

      goto LABEL_74;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    *ProtobufEncoder.growBufferSlow(to:)(v19) = LODWORD(v15);
  }

  v25 = *(a1 + 8);
  v19 = v25 + 8;
  if (__OFADD__(v25, 8))
  {
    goto LABEL_69;
  }

  if (*(a1 + 16) < v19)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v19) = v15;
  }

  else
  {
    *(a1 + 8) = v19;
    *(*a1 + v25) = v15;
  }

LABEL_32:
  while (2)
  {
    v2 = *(v3 + 56);
    if (v2 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x29uLL);
      v26 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v26 + 8;
      if (__OFADD__(v26, 8))
      {
        goto LABEL_63;
      }

      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v2;
      }

      else
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v26) = v2;
      }
    }

    v15 = *(v3 + 64);
    if (v15 == 0.0)
    {
      goto LABEL_47;
    }

    v27 = fabs(v15);
    if (v27 >= 65536.0)
    {
      v28 = 49;
    }

    else
    {
      v28 = 53;
    }

    ProtobufEncoder.encodeVarint(_:)(v28);
    if (v27 >= 65536.0)
    {
      v30 = *(a1 + 8);
      v19 = v30 + 8;
      if (!__OFADD__(v30, 8))
      {
        if (*(a1 + 16) < v19)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v19) = v15;
        }

        else
        {
          *(a1 + 8) = v19;
          *(*a1 + v30) = v15;
        }

        goto LABEL_47;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      *ProtobufEncoder.growBufferSlow(to:)(v19) = LODWORD(v15);
      continue;
    }

    break;
  }

  v29 = *(a1 + 8);
  v19 = v29 + 4;
  if (__OFADD__(v29, 4))
  {
    __break(1u);
    goto LABEL_73;
  }

  *&v15 = v15;
  if (*(a1 + 16) < v19)
  {
    goto LABEL_78;
  }

  *(a1 + 8) = v19;
  *(*a1 + v29) = LODWORD(v15);
  while (1)
  {
LABEL_47:
    if (*(v3 + 72))
    {
      ProtobufEncoder.encodeVarint(_:)(0x38uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    v15 = *v3;
    if (*v3 == 0.0)
    {
      break;
    }

    v31 = fabs(v15);
    if (v31 >= 65536.0)
    {
      v32 = 65;
    }

    else
    {
      v32 = 69;
    }

    ProtobufEncoder.encodeVarint(_:)(v32);
    if (v31 >= 65536.0)
    {
      v35 = *(a1 + 8);
      v19 = v35 + 8;
      if (!__OFADD__(v35, 8))
      {
        if (*(a1 + 16) < v19)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v19) = v15;
        }

        else
        {
          *(a1 + 8) = v19;
          *(*a1 + v35) = v15;
        }

        return;
      }
    }

    else
    {
      v33 = *(a1 + 8);
      v19 = v33 + 4;
      if (!__OFADD__(v33, 4))
      {
        v34 = v15;
        if (*(a1 + 16) < v19)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v19) = v34;
        }

        else
        {
          *(a1 + 8) = v19;
          *(*a1 + v33) = v34;
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    *ProtobufEncoder.growBufferSlow(to:)(v19) = LODWORD(v15);
  }
}

__n128 protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.GlassHighlight@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized SDFStyle.GlassHighlight.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

float *Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.encode(to:)(uint64_t a1)
{
  v3 = *v1;
  LOBYTE(v4) = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  v9 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 112);
  v11 = *(v1 + 128);
  v64 = *(v1 + 120);
  v65 = *(v1 + 104);
  if (*v1 == 0.0)
  {
    goto LABEL_13;
  }

  v66 = *(v1 + 72);
  v63 = *(v1 + 112);
  v12 = *(v1 + 128);
  v13 = fabs(v3);
  if (v13 >= 65536.0)
  {
    v14 = 9;
  }

  else
  {
    v14 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v14);
  if (v13 >= 65536.0)
  {
    v17 = *(a1 + 8);
    v16 = v17 + 8;
    if (!__OFADD__(v17, 8))
    {
      v11 = v12;
      if (*(a1 + 16) < v16)
      {
        v62 = ProtobufEncoder.growBufferSlow(to:)(v16);
        v11 = v12;
        *v62 = v3;
      }

      else
      {
        *(a1 + 8) = v16;
        *(*a1 + v17) = v3;
      }

      goto LABEL_12;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v15 = *(a1 + 8);
  v16 = v15 + 4;
  if (__OFADD__(v15, 4))
  {
    __break(1u);
    goto LABEL_109;
  }

  *&v3 = v3;
  v11 = v12;
  if (*(a1 + 16) < v16)
  {
    goto LABEL_112;
  }

  *(a1 + 8) = v16;
  *(*a1 + v15) = LODWORD(v3);
  while (1)
  {
LABEL_12:
    v10 = v63;
    v8 = v66;
LABEL_13:
    v67 = v11;
    if (v5 == 0.0)
    {
      goto LABEL_24;
    }

    v18 = fabs(v5);
    LODWORD(v3) = 0;
    if (v18 >= 65536.0)
    {
      v19 = 17;
    }

    else
    {
      v19 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v19);
    if (v18 >= 65536.0)
    {
      v22 = *(a1 + 8);
      v16 = v22 + 8;
      if (!__OFADD__(v22, 8))
      {
        if (*(a1 + 16) < v16)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v16) = v5;
        }

        else
        {
          *(a1 + 8) = v16;
          *(*a1 + v22) = v5;
        }

        goto LABEL_24;
      }

      goto LABEL_111;
    }

    v20 = *(a1 + 8);
    v16 = v20 + 4;
    if (!__OFADD__(v20, 4))
    {
      break;
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    v60 = v11;
    v61 = ProtobufEncoder.growBufferSlow(to:)(v16);
    v11 = v60;
    *v61 = LODWORD(v3);
  }

  v21 = v5;
  if (*(a1 + 16) < v16)
  {
    goto LABEL_116;
  }

  *(a1 + 8) = v16;
  *(*a1 + v20) = v21;
  while (1)
  {
LABEL_24:
    if (v4)
    {
      ProtobufEncoder.encodeVarint(_:)(0x18uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    __asm { FMOV            V1.4S, #1.0 }

    ProtobufEncoder.encodeVarint(_:)(0x22uLL);
    v28 = *(a1 + 8);
    v29 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    v4 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v4;
    *&v29[8 * v31 + 32] = v28;
    *(a1 + 24) = v29;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_97;
    }

    *(a1 + 8) = v28 + 1;
    Color.ResolvedHDR.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
    if (v6 == 0.0)
    {
      break;
    }

    v32 = fabs(v6);
    v21 = 0.0;
    if (v32 >= 65536.0)
    {
      v33 = 41;
    }

    else
    {
      v33 = 45;
    }

    ProtobufEncoder.encodeVarint(_:)(v33);
    if (v32 >= 65536.0)
    {
      v36 = *(a1 + 8);
      v16 = v36 + 8;
      if (!__OFADD__(v36, 8))
      {
        if (*(a1 + 16) < v16)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v16) = v6;
        }

        else
        {
          *(a1 + 8) = v16;
          *(*a1 + v36) = v6;
        }

        break;
      }
    }

    else
    {
      v34 = *(a1 + 8);
      v16 = v34 + 4;
      if (!__OFADD__(v34, 4))
      {
        v35 = v6;
        if (*(a1 + 16) < v16)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v16) = v35;
        }

        else
        {
          *(a1 + 8) = v16;
          *(*a1 + v34) = v35;
        }

        break;
      }

      __break(1u);
    }

    __break(1u);
LABEL_116:
    *ProtobufEncoder.growBufferSlow(to:)(v16) = v21;
  }

  if (v7 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x31uLL);
    v37 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v37 + 8;
    if (__OFADD__(v37, 8))
    {
      goto LABEL_99;
    }

    if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_101;
    }

    *(a1 + 8) = isUniquelyReferenced_nonNull_native;
    *(*a1 + v37) = v7;
  }

  if (v9 == 0.0)
  {
    goto LABEL_50;
  }

  do
  {
    ProtobufEncoder.encodeVarint(_:)(0x39uLL);
    v39 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v39 + 8;
    if (!__OFADD__(v39, 8))
    {
      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v9;
      }

      else
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v39) = v9;
      }

      break;
    }

LABEL_100:
    __break(1u);
LABEL_101:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v7;
  }

  while (v9 != 0.0);
LABEL_50:
  if (v8 == 0.0)
  {
    goto LABEL_61;
  }

  v40 = fabs(v8);
  v41 = 0.0;
  if (v40 >= 65536.0)
  {
    v42 = 65;
  }

  else
  {
    v42 = 69;
  }

  ProtobufEncoder.encodeVarint(_:)(v42);
  if (v40 < 65536.0)
  {
    v43 = *(a1 + 8);
    result = (v43 + 4);
    if (!__OFADD__(v43, 4))
    {
      v41 = v8;
      if (*(a1 + 16) >= result)
      {
        *(a1 + 8) = result;
        *(*a1 + v43) = v41;
        goto LABEL_61;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v45 = *(a1 + 8);
  result = (v45 + 8);
  if (__OFADD__(v45, 8))
  {
    goto LABEL_121;
  }

  if (*(a1 + 16) < result)
  {
    *ProtobufEncoder.growBufferSlow(to:)(result) = v8;
  }

  else
  {
    *(a1 + 8) = result;
    *(*a1 + v45) = v8;
  }

  while (1)
  {
LABEL_61:
    ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
    v28 = *(a1 + 8);
    v29 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_97:
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
      v29 = isUniquelyReferenced_nonNull_native;
    }

    v47 = *(v29 + 2);
    v46 = *(v29 + 3);
    if (v47 >= v46 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v29);
      v29 = isUniquelyReferenced_nonNull_native;
    }

    *(v29 + 2) = v47 + 1;
    *&v29[8 * v47 + 32] = v28;
    *(a1 + 24) = v29;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    *(a1 + 8) = v28 + 1;
    Color.ResolvedHDR.encode(to:)(a1);
    result = ProtobufEncoder.endLengthDelimited()();
    if (v10 == 0.0)
    {
      goto LABEL_76;
    }

    v48 = fabs(v10);
    v41 = 0.0;
    if (v48 >= 65536.0)
    {
      v49 = 81;
    }

    else
    {
      v49 = 85;
    }

    ProtobufEncoder.encodeVarint(_:)(v49);
    if (v48 < 65536.0)
    {
      v50 = *(a1 + 8);
      result = (v50 + 4);
      if (!__OFADD__(v50, 4))
      {
        v51 = v10;
        if (*(a1 + 16) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v51;
        }

        else
        {
          *(a1 + 8) = result;
          *(*a1 + v50) = v51;
        }

        goto LABEL_76;
      }

LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v52 = *(a1 + 8);
    result = (v52 + 8);
    if (!__OFADD__(v52, 8))
    {
      break;
    }

LABEL_123:
    __break(1u);
LABEL_124:
    *ProtobufEncoder.growBufferSlow(to:)(result) = v41;
  }

  if (*(a1 + 16) < result)
  {
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v10;
  }

  else
  {
    *(a1 + 8) = result;
    *(*a1 + v52) = v10;
  }

LABEL_76:
  v53 = v65;
  if (v65 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x59uLL);
    v54 = *(a1 + 8);
    result = (v54 + 8);
    if (__OFADD__(v54, 8))
    {
      __break(1u);
      goto LABEL_105;
    }

    if (*(a1 + 16) < result)
    {
      goto LABEL_106;
    }

    *(a1 + 8) = result;
    *(*a1 + v54) = v65;
  }

  while (1)
  {
    v53 = v64;
    if (v64 == 0.0)
    {
      break;
    }

    ProtobufEncoder.encodeVarint(_:)(0x61uLL);
    v55 = *(a1 + 8);
    result = (v55 + 8);
    if (!__OFADD__(v55, 8))
    {
      if (*(a1 + 16) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v64;
      }

      else
      {
        *(a1 + 8) = result;
        *(*a1 + v55) = v64;
      }

      break;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v53;
  }

  if (v67 == 0.0)
  {
    return result;
  }

  v56 = fabs(v67);
  if (v56 >= 65536.0)
  {
    v57 = 105;
  }

  else
  {
    v57 = 109;
  }

  ProtobufEncoder.encodeVarint(_:)(v57);
  if (v56 >= 65536.0)
  {
    v59 = *(a1 + 8);
    result = (v59 + 8);
    if (!__OFADD__(v59, 8))
    {
      if (*(a1 + 16) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v67;
      }

      else
      {
        *(a1 + 8) = result;
        *(*a1 + v59) = v67;
      }

      return result;
    }

LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v58 = *(a1 + 8);
  result = (v58 + 4);
  if (__OFADD__(v58, 4))
  {
    __break(1u);
    goto LABEL_129;
  }

  *&v56 = v67;
  if (*(a1 + 16) >= result)
  {
    *(a1 + 8) = result;
    *(*a1 + v58) = LODWORD(v56);
    return result;
  }

LABEL_130:
  result = ProtobufEncoder.growBufferSlow(to:)(result);
  *result = *&v56;
  return result;
}

unint64_t Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v13 = 2143289344;
    __asm { FMOV            V1.4S, #1.0 }

    v84 = 0.5;
    v79 = 0.0;
    v14 = 3.14159265;
    v77 = 0.0;
    v78 = 0.0;
    v15 = 0.0;
    v16 = 3.14159265;
    v17 = 0.0;
    v18 = 3.14159265;
    v19 = 0.5;
    v20 = 2143289344;
    v75 = _Q1;
    v76 = _Q1;
LABEL_4:
    v3[3] = 0;
    *a2 = v79;
    *(a2 + 8) = v7;
    *(a2 + 16) = v78;
    *(a2 + 24) = v76;
    *(a2 + 40) = v20;
    *(a2 + 48) = v77;
    *(a2 + 56) = v15;
    v22 = v84;
    *(a2 + 64) = v14;
    *(a2 + 72) = v22;
    *(a2 + 80) = v75;
    *(a2 + 96) = v13;
    *(a2 + 104) = v16;
    *(a2 + 112) = v17;
    *(a2 + 120) = v18;
    *(a2 + 128) = v19;
    return result;
  }

  v7 = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v84 = 0.5;
  v79 = 0.0;
  v13 = 2143289344;
  v14 = 3.14159265;
  v77 = 0.0;
  v78 = 0.0;
  v15 = 0.0;
  v16 = 3.14159265;
  v17 = 0.0;
  v18 = 3.14159265;
  v19 = 0.5;
  v20 = 2143289344;
  v75 = _Q1;
  v76 = _Q1;
  while (2)
  {
    result = v3[3];
    if (result)
    {
      v23 = v3[4];
      if (v5 < v23)
      {
        goto LABEL_13;
      }

      if (v23 < v5)
      {
        goto LABEL_185;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_185;
    }

LABEL_13:
    v24 = result & 7;
    switch(result >> 3)
    {
      case 1uLL:
        if (v24 != 5)
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_200;
            }

            v25 = v3[1];
            if (v6 < v25 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 9;
            v3[4] = v25 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v25 = v3[1];
          }

          if (v6 < (v25 + 1))
          {
            goto LABEL_185;
          }

          v79 = *v25;
          v3[1] = v25 + 1;
          goto LABEL_6;
        }

        v63 = v3[1];
        if (v6 < (v63 + 1))
        {
          goto LABEL_185;
        }

        v64 = *v63;
        v3[1] = v63 + 1;
        v79 = v64;
        goto LABEL_6;
      case 2uLL:
        if (v24 == 5)
        {
          v65 = v3[1];
          if (v6 < (v65 + 1))
          {
            goto LABEL_185;
          }

          v66 = *v65;
          v3[1] = v65 + 1;
          v78 = v66;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_194;
            }

            v40 = v3[1];
            if (v6 < v40 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 17;
            v3[4] = v40 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v40 = v3[1];
          }

          if (v6 < (v40 + 1))
          {
            goto LABEL_185;
          }

          v78 = *v40;
          v3[1] = v40 + 1;
        }

        goto LABEL_6;
      case 3uLL:
        if ((result & 7) == 0)
        {
          goto LABEL_40;
        }

        if (v24 != 2)
        {
          goto LABEL_185;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_192;
        }

        v30 = v3[1] + result;
        if (v6 < v30)
        {
          goto LABEL_185;
        }

        v3[3] = 24;
        v3[4] = v30;
LABEL_40:
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        v7 = result != 0;
        goto LABEL_6;
      case 4uLL:
        if (v24 != 2)
        {
          goto LABEL_185;
        }

        v31 = v3[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
          v34 = v33 + 1;
          v31 = v73;
        }

        *(v31 + 2) = v34;
        *&v31[8 * v33 + 32] = v6;
        v3[5] = v31;
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) == 0)
        {
          v35 = v3[1] + result;
          if (v6 < v35)
          {
            goto LABEL_185;
          }

          v3[2] = v35;
          result = specialized Color.ResolvedHDR.init(from:)(v3, &v80);
          v36 = v3[5];
          if (!*(v36 + 16))
          {
            goto LABEL_190;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v37 = *(v36 + 16);
            if (!v37)
            {
              goto LABEL_191;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
            v36 = result;
            v37 = *(result + 16);
            if (!v37)
            {
              goto LABEL_191;
            }
          }

          v38 = v37 - 1;
          v6 = *(v36 + 8 * v38 + 32);
          *(v36 + 16) = v38;
          v3[5] = v36;
          v3[2] = v6;
          v76 = v80;
          v20 = v81;
LABEL_6:
          v5 = v3[1];
          if (v5 >= v6)
          {
            goto LABEL_4;
          }

          continue;
        }

        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
        __break(1u);
        return result;
      case 5uLL:
        if (v24 == 5)
        {
          v55 = v3[1];
          if (v6 < (v55 + 1))
          {
            goto LABEL_185;
          }

          v56 = *v55;
          v3[1] = v55 + 1;
          v15 = v56;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_195;
            }

            v27 = v3[1];
            if (v6 < v27 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 41;
            v3[4] = v27 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v27 = v3[1];
          }

          if (v6 < (v27 + 1))
          {
            goto LABEL_185;
          }

          v15 = *v27;
          v3[1] = v27 + 1;
        }

        goto LABEL_6;
      case 6uLL:
        if (v24 == 5)
        {
          v67 = v3[1];
          if (v6 < (v67 + 1))
          {
            goto LABEL_185;
          }

          v68 = *v67;
          v3[1] = v67 + 1;
          v77 = v68;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_193;
            }

            v41 = v3[1];
            if (v6 < v41 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 49;
            v3[4] = v41 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v41 = v3[1];
          }

          if (v6 < (v41 + 1))
          {
            goto LABEL_185;
          }

          v77 = *v41;
          v3[1] = v41 + 1;
        }

        goto LABEL_6;
      case 7uLL:
        if (v24 == 5)
        {
          v69 = v3[1];
          if (v6 < (v69 + 1))
          {
            goto LABEL_185;
          }

          v70 = *v69;
          v3[1] = v69 + 1;
          v14 = v70;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_201;
            }

            v43 = v3[1];
            if (v6 < v43 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 57;
            v3[4] = v43 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v43 = v3[1];
          }

          if (v6 < (v43 + 1))
          {
            goto LABEL_185;
          }

          v14 = *v43;
          v3[1] = v43 + 1;
        }

        goto LABEL_6;
      case 8uLL:
        if (v24 == 5)
        {
          v61 = v3[1];
          if (v6 < (v61 + 1))
          {
            goto LABEL_185;
          }

          v62 = *v61;
          v3[1] = v61 + 1;
          v84 = v62;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_196;
            }

            v39 = v3[1];
            if (v6 < v39 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 65;
            v3[4] = v39 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v39 = v3[1];
          }

          if (v6 < (v39 + 1))
          {
            goto LABEL_185;
          }

          v84 = *v39;
          v3[1] = v39 + 1;
        }

        goto LABEL_6;
      case 9uLL:
        if (v24 != 2)
        {
          goto LABEL_185;
        }

        v45 = v3[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
        }

        v47 = *(v45 + 2);
        v46 = *(v45 + 3);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v45);
          v48 = v47 + 1;
          v45 = v74;
        }

        *(v45 + 2) = v48;
        *&v45[8 * v47 + 32] = v6;
        v3[5] = v45;
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_188;
        }

        v49 = v3[1] + result;
        if (v6 < v49)
        {
          goto LABEL_185;
        }

        v3[2] = v49;
        result = specialized Color.ResolvedHDR.init(from:)(v3, &v82);
        v50 = v3[5];
        if (!*(v50 + 16))
        {
          goto LABEL_189;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v51 = *(v50 + 16);
          if (!v51)
          {
            goto LABEL_184;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
          v50 = result;
          v51 = *(result + 16);
          if (!v51)
          {
LABEL_184:
            __break(1u);
LABEL_185:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            return swift_willThrow();
          }
        }

        v52 = v51 - 1;
        v6 = *(v50 + 8 * v52 + 32);
        *(v50 + 16) = v52;
        v3[5] = v50;
        v3[2] = v6;
        v75 = v82;
        v13 = v83;
        goto LABEL_6;
      case 0xAuLL:
        if (v24 == 5)
        {
          v59 = v3[1];
          if (v6 < (v59 + 1))
          {
            goto LABEL_185;
          }

          v60 = *v59;
          v3[1] = v59 + 1;
          v17 = v60;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_197;
            }

            v29 = v3[1];
            if (v6 < v29 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 81;
            v3[4] = v29 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v29 = v3[1];
          }

          if (v6 < (v29 + 1))
          {
            goto LABEL_185;
          }

          v17 = *v29;
          v3[1] = v29 + 1;
        }

        goto LABEL_6;
      case 0xBuLL:
        if (v24 == 5)
        {
          v71 = v3[1];
          if (v6 < (v71 + 1))
          {
            goto LABEL_185;
          }

          v72 = *v71;
          v3[1] = v71 + 1;
          v16 = v72;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_198;
            }

            v44 = v3[1];
            if (v6 < v44 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 89;
            v3[4] = v44 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v44 = v3[1];
          }

          if (v6 < (v44 + 1))
          {
            goto LABEL_185;
          }

          v16 = *v44;
          v3[1] = v44 + 1;
        }

        goto LABEL_6;
      case 0xCuLL:
        if (v24 == 5)
        {
          v53 = v3[1];
          if (v6 < (v53 + 1))
          {
            goto LABEL_185;
          }

          v54 = *v53;
          v3[1] = v53 + 1;
          v18 = v54;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_199;
            }

            v26 = v3[1];
            if (v6 < v26 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 97;
            v3[4] = v26 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v26 = v3[1];
          }

          if (v6 < (v26 + 1))
          {
            goto LABEL_185;
          }

          v18 = *v26;
          v3[1] = v26 + 1;
        }

        goto LABEL_6;
      case 0xDuLL:
        if (v24 == 5)
        {
          v57 = v3[1];
          if (v6 < (v57 + 1))
          {
            goto LABEL_185;
          }

          v58 = *v57;
          v3[1] = v57 + 1;
          v19 = v58;
        }

        else
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_202;
            }

            v28 = v3[1];
            if (v6 < v28 + result)
            {
              goto LABEL_185;
            }

            v3[3] = 105;
            v3[4] = v28 + result;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_185;
            }

            v28 = v3[1];
          }

          if (v6 < (v28 + 1))
          {
            goto LABEL_185;
          }

          v19 = *v28;
          v3[1] = v28 + 1;
        }

        goto LABEL_6;
      default:
        if ((result & 7) > 1)
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_203;
            }

            v42 = v3[1] + result;
            if (v6 < v42)
            {
              goto LABEL_185;
            }
          }

          else
          {
            if (v24 != 5)
            {
              goto LABEL_185;
            }

            v42 = v3[1] + 4;
            if (v6 < v42)
            {
              goto LABEL_185;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            goto LABEL_6;
          }

          if (v24 != 1)
          {
            goto LABEL_185;
          }

          v42 = v3[1] + 8;
          if (v6 < v42)
          {
            goto LABEL_185;
          }
        }

        v3[1] = v42;
        goto LABEL_6;
    }
  }
}

void SDFStyle.Group.encode(to:)(void *a1)
{
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (v4 < 0 && *v1 == 0 && v4 == -128 || (specialized ProtobufEncoder.messageField<A>(_:_:)(1), !v2))
  {
    v52 = *(v6 + 16);
    if (v52)
    {
      v7 = 0;
      v8 = (v6 + 32);
      while (v7 < *(v6 + 16))
      {
        v9 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        LODWORD(v48) = *(v8 + 12);
        v46 = v10;
        v47 = v11;
        v45 = v9;
        v12 = a1[1];
        v13 = a1[2];
        if (v12 >= v13)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_48;
          }

          if (v13 < v18)
          {
            outlined init with copy of Material.Layer.SDFLayer.GroupLayer(&v45, &v38);
            v19 = ProtobufEncoder.growBufferSlow(to:)(v18);
          }

          else
          {
            a1[1] = v18;
            v19 = (*a1 + v12);
            outlined init with copy of Material.Layer.SDFLayer.GroupLayer(&v45, &v38);
          }

          *v19 = 18;
        }

        else
        {
          *(*a1 + v12) = 18;
          a1[1] = v12 + 1;
          outlined init with copy of Material.Layer.SDFLayer.GroupLayer(&v45, &v38);
        }

        v38 = v45;
        v39 = v46;
        v40 = v47;
        LODWORD(v41) = v48;
        v14 = a1[1];
        v15 = a1[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        }

        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        if (v17 >= v16 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
        }

        *(v15 + 2) = v17 + 1;
        *&v15[8 * v17 + 32] = v14;
        a1[3] = v15;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_45;
        }

        a1[1] = v14 + 1;
        Material.Layer.SDFLayer.GroupLayer.encode(to:)(a1);
        if (v2)
        {
          outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v45);
          return;
        }

        ++v7;
        ProtobufEncoder.endLengthDelimited()();
        outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v45);
        v8 = (v8 + 56);
        if (v52 == v7)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
    }

    else
    {
LABEL_23:
      v20 = *(v5 + 16);
      if (!v20)
      {
        return;
      }

      v21 = 0;
      v22 = (v5 + 32);
      v23 = v20 - 1;
      while (1)
      {
        v24 = *v22;
        v25 = v22[1];
        v26 = v22[3];
        v47 = v22[2];
        v48 = v26;
        v45 = v24;
        v46 = v25;
        v27 = v22[4];
        v28 = v22[5];
        v29 = v22[6];
        *(v51 + 12) = *(v22 + 108);
        v50 = v28;
        v51[0] = v29;
        v49 = v27;
        v30 = a1[1];
        v31 = a1[2];
        if (v30 >= v31)
        {
          v36 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_49;
          }

          if (v31 < v36)
          {
            outlined init with copy of GraphicsFilter(&v45, &v38);
            v37 = ProtobufEncoder.growBufferSlow(to:)(v36);
          }

          else
          {
            a1[1] = v36;
            v37 = (*a1 + v30);
            outlined init with copy of GraphicsFilter(&v45, &v38);
          }

          *v37 = 26;
        }

        else
        {
          *(*a1 + v30) = 26;
          a1[1] = v30 + 1;
          outlined init with copy of GraphicsFilter(&v45, &v38);
        }

        v42 = v49;
        v43 = v50;
        v44[0] = v51[0];
        *(v44 + 12) = *(v51 + 12);
        v38 = v45;
        v39 = v46;
        v40 = v47;
        v41 = v48;
        v32 = a1[1];
        v33 = a1[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
        }

        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        *&v33[8 * v35 + 32] = v32;
        a1[3] = v33;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        a1[1] = v32 + 1;
        GraphicsFilter.encode(to:)(a1);
        if (v2)
        {
          outlined destroy of GraphicsFilter(&v45);
          return;
        }

        ProtobufEncoder.endLengthDelimited()();
        outlined destroy of GraphicsFilter(&v45);
        if (v23 == v21)
        {
          return;
        }

        ++v21;
        v22 += 8;
        if (v21 >= *(v5 + 16))
        {
          goto LABEL_47;
        }
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

unint64_t SDFStyle.Group.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v44 = 0uLL;
    v7 = MEMORY[0x1E69E7CC0];
    LOBYTE(v8) = 0x80;
    v9 = MEMORY[0x1E69E7CC0];
LABEL_73:
    v3[3] = 0;
    *a2 = v44;
    *(a2 + 16) = v8;
    *(a2 + 24) = v7;
    *(a2 + 32) = v9;
    return result;
  }

  v44 = 0uLL;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = 128;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_79;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_81;
    }

    if (result < 8)
    {
      goto LABEL_79;
    }

LABEL_11:
    v11 = result >> 3;
    if (result >> 3 == 3)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_79;
      }

      ProtobufDecoder.beginMessage()();
      if (v2)
      {
        goto LABEL_81;
      }

      GraphicsFilter.init(from:)(v3, &v56);
      v32 = v3[5];
      if (!*(v32 + 2))
      {
        goto LABEL_84;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v33 = *(v32 + 2);
        if (!v33)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
        v33 = *(v32 + 2);
        if (!v33)
        {
          goto LABEL_85;
        }
      }

      v34 = v33 - 1;
      v6 = *&v32[8 * v34 + 32];
      *(v32 + 2) = v34;
      v3[5] = v32;
      v3[2] = v6;
      v53 = v60;
      v54 = v61;
      *v55 = v62[0];
      *&v55[12] = *(v62 + 12);
      v46 = v56;
      v48 = v57;
      v50 = v58;
      v52 = v59;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v36 = *(v9 + 16);
      v35 = *(v9 + 24);
      if (v36 >= v35 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v36 + 1;
      v37 = (v9 + (v36 << 7));
      v37[4] = v50;
      v37[5] = v52;
      v37[2] = v46;
      v37[3] = v48;
      *(v37 + 140) = *&v55[12];
      v37[7] = v54;
      v37[8] = *v55;
      v37[6] = v53;
      goto LABEL_4;
    }

    if (v11 != 2)
    {
      break;
    }

    if ((result & 7) != 2)
    {
      goto LABEL_79;
    }

    v63 = v9;
    v20 = a2;
    v21 = v3[5];
    a2 = v8;
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
    v3[5] = v21;
    v24 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_81;
    }

    if (v24 < 0)
    {
      goto LABEL_83;
    }

    v25 = v3[1] + v24;
    if (v6 < v25)
    {
      goto LABEL_79;
    }

    v3[2] = v25;
    closure #1 in SDFStyle.Group.init(from:)(v3, &v56);
    v26 = v3[5];
    if (!*(v26 + 2))
    {
      goto LABEL_86;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
    }

    v8 = a2;
    v27 = *(v26 + 2);
    if (!v27)
    {
      goto LABEL_88;
    }

    a2 = v20;
    v28 = v27 - 1;
    v6 = *&v26[8 * v28 + 32];
    *(v26 + 2) = v28;
    v3[5] = v26;
    v3[2] = v6;
    v45 = v56;
    v47 = v57;
    v49 = v58;
    v51 = v59;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v9 = v63;
    v30 = *(v7 + 16);
    v29 = *(v7 + 24);
    if (v30 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30 + 1;
    v31 = v7 + 56 * v30;
    *(v31 + 80) = v51;
    *(v31 + 48) = v47;
    *(v31 + 64) = v49;
    *(v31 + 32) = v45;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_73;
    }
  }

  if (v11 != 1)
  {
    v38 = result & 7;
    if (v38 > 1)
    {
      if (v38 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_81;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v39 = v3[1] + result;
        if (v6 < v39)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v38 != 5)
        {
          goto LABEL_79;
        }

        v39 = v3[1] + 4;
        if (v6 < v39)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_81;
        }

        goto LABEL_4;
      }

      if (v38 != 1)
      {
        goto LABEL_79;
      }

      v39 = v3[1] + 8;
      if (v6 < v39)
      {
        goto LABEL_79;
      }
    }

    v3[1] = v39;
    goto LABEL_4;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_79;
  }

  v12 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  *&v12[8 * v14 + 32] = v6;
  v3[5] = v12;
  v15 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_81;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = v3[1] + v15;
    if (v6 < v16)
    {
      goto LABEL_79;
    }

    v3[2] = v16;
    Material.Layer.SDFLayer.GroupType.init(from:)(v3, &v56);
    v17 = v3[5];
    if (!*(v17 + 16))
    {
      goto LABEL_87;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = *(v17 + 16);
      if (!v18)
      {
        goto LABEL_89;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      v17 = result;
      v18 = *(result + 16);
      if (!v18)
      {
        goto LABEL_89;
      }
    }

    v19 = v18 - 1;
    v6 = *(v17 + 8 * v19 + 32);
    *(v17 + 16) = v19;
    v3[5] = v17;
    v3[2] = v6;
    v44 = v56;
    v8 = v57;
    goto LABEL_4;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
  __break(1u);
  v42 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v43 = *(v42 + 2);
  if (!v43)
  {
    __break(1u);
LABEL_79:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_81;
  }

  v40 = v43 - 1;
  v41 = *&v42[8 * v40 + 32];
  *(v42 + 2) = v40;
  v3[5] = v42;
  v3[2] = v41;
LABEL_81:
}

unint64_t closure #1 in SDFStyle.Group.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0x80;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = MEMORY[0x1E69E7CC0];
  *(v5 + 48) = v6;
  v7 = v5 | 0x8000000000000000;
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v8 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  v9 = a1[1];
  v10 = a1[2];
  isUniquelyReferenced_nonNull_native = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  if (v9 >= v10)
  {
LABEL_68:
    result = outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(isUniquelyReferenced_nonNull_native);
    v12 = 1.0;
LABEL_69:
    a1[3] = 0;
    *a2 = v7;
    *(a2 + 1) = v8;
    *(a2 + 4) = v12;
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 10) = 0;
    *(a2 + 44) = 0x7F8000003F800000;
    return result;
  }

  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
  v12 = 1.0;
  while (1)
  {
    result = a1[3];
    if (result)
    {
      v14 = a1[4];
      if (v9 < v14)
      {
        goto LABEL_13;
      }

      if (v14 < v9)
      {
        goto LABEL_70;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_76;
    }

    if (result <= 7)
    {
      goto LABEL_70;
    }

LABEL_13:
    v15 = result >> 3;
    if (result >> 3 == 3)
    {
      if ((result & 7) == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_76;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_82;
        }

        v35 = a1[1];
        if (v10 < v35 + result)
        {
          goto LABEL_70;
        }

        a1[3] = 29;
        a1[4] = v35 + result;
      }

      else
      {
        if ((result & 7) != 5)
        {
          goto LABEL_70;
        }

        v35 = a1[1];
      }

      if (v10 < (v35 + 1))
      {
        goto LABEL_70;
      }

      v12 = *v35;
      a1[1] = v35 + 1;
      goto LABEL_6;
    }

    if (v15 == 2)
    {
      break;
    }

    if (v15 != 1)
    {
      v36 = result & 7;
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_76;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          v37 = a1[1] + result;
          if (v10 < v37)
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v36 != 5)
          {
            goto LABEL_70;
          }

          v37 = a1[1] + 4;
          if (v10 < v37)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_76;
          }

          goto LABEL_6;
        }

        if (v36 != 1)
        {
          goto LABEL_70;
        }

        v37 = a1[1] + 8;
        if (v10 < v37)
        {
          goto LABEL_70;
        }
      }

      a1[1] = v37;
      goto LABEL_6;
    }

    if ((result & 7) != 2)
    {
      goto LABEL_70;
    }

    v16 = a1[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    *&v16[8 * v18 + 32] = v10;
    a1[5] = v16;
    v19 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_76;
    }

    if (v19 < 0)
    {
      goto LABEL_78;
    }

    v20 = a1[1] + v19;
    if (v10 < v20)
    {
LABEL_70:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_76:
      v41[0] = v7;
      v41[1] = v8;
      v42 = v12;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0x7F8000003F800000;
      return outlined destroy of Material.Layer.SDFLayer.GroupLayer(v41);
    }

    a1[2] = v20;
    v21 = specialized SDFStyle.init(from:)(a1);
    v22 = a1[5];
    if (!*(v22 + 16))
    {
      goto LABEL_79;
    }

    v23 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      v24 = *(v22 + 16);
      if (!v24)
      {
        goto LABEL_67;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      v22 = isUniquelyReferenced_nonNull_native;
      v24 = *(isUniquelyReferenced_nonNull_native + 16);
      if (!v24)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }
    }

    v25 = v24 - 1;
    v10 = *(v22 + 8 * v25 + 32);
    *(v22 + 16) = v25;

    a1[5] = v22;
    a1[2] = v10;
    v7 = v23;
LABEL_6:
    v9 = a1[1];
    if (v9 >= v10)
    {
      goto LABEL_69;
    }
  }

  if ((result & 7) != 2)
  {
    goto LABEL_70;
  }

  v26 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  *&v26[8 * v28 + 32] = v10;
  a1[5] = v26;
  v29 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_76;
  }

  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = a1[1] + v29;
    if (v10 < v30)
    {
      goto LABEL_70;
    }

    a1[2] = v30;
    Material.Layer.SDFLayer.GroupLayer.Blend.init(from:)(a1, v41);
    v31 = a1[5];
    if (!*(v31 + 2))
    {
      goto LABEL_80;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v32 = *(v31 + 2);
      if (!v32)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
      v32 = *(v31 + 2);
      if (!v32)
      {
        goto LABEL_81;
      }
    }

    v33 = v32 - 1;
    v10 = *&v31[8 * v33 + 32];
    *(v31 + 2) = v33;
    a1[5] = v31;
    a1[2] = v10;
    v34 = v41[0];
    result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v8);
    v8 = v34;
    goto LABEL_6;
  }

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
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v38 = *(a2 + 2);
    if (v38)
    {
      goto LABEL_75;
    }

    __break(1u);
    a2 = a1[5];
  }

  while (!*(a2 + 2));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v38 = *(a2 + 2);
    if (v38)
    {
LABEL_75:
      v39 = v38 - 1;
      v40 = *&a2[8 * v39 + 32];
      *(a2 + 2) = v39;
      a1[5] = a2;
      a1[2] = v40;
      goto LABEL_76;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v38 = *(result + 16);
    if (v38)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
  return result;
}

void Material.Layer.SDFLayer.GroupType.encode(to:)(void *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = *(v2 + 16);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = 3;
    goto LABEL_3;
  }

  if (!(v4 | v5) && v6 == -128)
  {
    v10 = 1;
LABEL_28:
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v10);
    return;
  }

  v12 = v5 == 1 && v4 == 0;
  if (v12 && v6 == -128)
  {
    v10 = 2;
    goto LABEL_28;
  }

  if (v6 == -128 && v4 == 0 && v5 == 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

LABEL_3:
  ProtobufEncoder.encodeVarint(_:)(8uLL);
  ProtobufEncoder.encodeVarint(_:)(v7);
  if (!(v6 >> 6))
  {
    if (*&v5 == 1.0)
    {
      return;
    }

    ProtobufEncoder.encodeVarint(_:)(0x15uLL);
    v11 = a1[1];
    v9 = v11 + 4;
    if (!__OFADD__(v11, 4))
    {
      if (a1[2] < v9)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v9) = v5;
      }

      else
      {
        a1[1] = v9;
        *(*a1 + v11) = v5;
      }

      return;
    }

    goto LABEL_39;
  }

  if (v6 >> 6 != 1)
  {
    return;
  }

  if (*&v5 == 1.0)
  {
LABEL_9:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v8 = a1[1];
  v9 = v8 + 4;
  if (__OFADD__(v8, 4))
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (a1[2] >= v9)
  {
    a1[1] = v9;
    *(*a1 + v8) = v5;
    goto LABEL_9;
  }

LABEL_40:
  *ProtobufEncoder.growBufferSlow(to:)(v9) = v5;
  if ((v5 & 0x100000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000000000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  ProtobufEncoder.encodeVarint(_:)(0x18uLL);
  ProtobufEncoder.encodeVarint(_:)(1uLL);
  if ((v5 & 0x1000000000000) != 0)
  {
LABEL_11:
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
LABEL_46:
      if ((v6 & 1) == 0)
      {
        return;
      }

      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_42:
  ProtobufEncoder.encodeVarint(_:)(0x20uLL);
  ProtobufEncoder.encodeVarint(_:)(0);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_46;
  }

LABEL_43:
  ProtobufEncoder.encodeVarint(_:)(0x29uLL);
  v15 = a1[1];
  v16 = v15 + 8;
  if (__OFADD__(v15, 8))
  {
    __break(1u);
  }

  else if (a1[2] >= v16)
  {
    a1[1] = v16;
    *(*a1 + v15) = v4;
    goto LABEL_46;
  }

  *ProtobufEncoder.growBufferSlow(to:)(v16) = v4;
  if (v6)
  {
LABEL_47:
    ProtobufEncoder.encodeVarint(_:)(0x30uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

unint64_t Material.Layer.SDFLayer.GroupType.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 0.0;
    v12 = 1.0;
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v16 = v3[4];
        if (v5 < v16)
        {
          goto LABEL_13;
        }

        if (v16 < v5)
        {
          goto LABEL_87;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if (result <= 7)
      {
LABEL_87:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }

LABEL_13:
      v17 = result >> 3;
      v18 = result & 7;
      if (result >> 3 > 3)
      {
        switch(v17)
        {
          case 4uLL:
            if ((result & 7) != 0)
            {
              if (v18 != 2)
              {
                goto LABEL_87;
              }

              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_107;
              }

              v22 = v3[1] + result;
              if (v6 < v22)
              {
                goto LABEL_87;
              }

              v3[3] = 32;
              v3[4] = v22;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            v10 = result != 0;
            goto LABEL_6;
          case 5uLL:
            if (v18 == 5)
            {
              v26 = v3[1];
              if (v6 < (v26 + 1))
              {
                goto LABEL_87;
              }

              v27 = *v26;
              v3[1] = v26 + 1;
              v11 = v27;
            }

            else
            {
              if (v18 == 2)
              {
                result = ProtobufDecoder.decodeVarint()();
                if (v2)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_109;
                }

                v25 = v3[1];
                if (v6 < v25 + result)
                {
                  goto LABEL_87;
                }

                v3[3] = 41;
                v3[4] = v25 + result;
              }

              else
              {
                if (v18 != 1)
                {
                  goto LABEL_87;
                }

                v25 = v3[1];
              }

              if (v6 < (v25 + 1))
              {
                goto LABEL_87;
              }

              v11 = *v25;
              v3[1] = v25 + 1;
            }

            goto LABEL_6;
          case 6uLL:
            if ((result & 7) != 0)
            {
              if (v18 != 2)
              {
                goto LABEL_87;
              }

              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_106;
              }

              v20 = v3[1] + result;
              if (v6 < v20)
              {
                goto LABEL_87;
              }

              v3[3] = 48;
              v3[4] = v20;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            v7 = result != 0;
            goto LABEL_6;
        }
      }

      else
      {
        switch(v17)
        {
          case 1uLL:
            if ((result & 7) != 0)
            {
              if (v18 != 2)
              {
                goto LABEL_87;
              }

              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_108;
              }

              v21 = v3[1] + result;
              if (v6 < v21)
              {
                goto LABEL_87;
              }

              v3[3] = 8;
              v3[4] = v21;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            v9 = result;
            goto LABEL_6;
          case 2uLL:
            if (v18 == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_105;
              }

              v24 = v3[1];
              if (v6 < v24 + result)
              {
                goto LABEL_87;
              }

              v3[3] = 21;
              v3[4] = v24 + result;
            }

            else
            {
              if (v18 != 5)
              {
                goto LABEL_87;
              }

              v24 = v3[1];
            }

            if (v6 < (v24 + 1))
            {
              goto LABEL_87;
            }

            v12 = *v24;
            v3[1] = v24 + 1;
            goto LABEL_6;
          case 3uLL:
            if ((result & 7) != 0)
            {
              if (v18 != 2)
              {
                goto LABEL_87;
              }

              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_105:
                __break(1u);
LABEL_106:
                __break(1u);
LABEL_107:
                __break(1u);
LABEL_108:
                __break(1u);
LABEL_109:
                __break(1u);
LABEL_110:
                __break(1u);
                return result;
              }

              v19 = v3[1] + result;
              if (v6 < v19)
              {
                goto LABEL_87;
              }

              v3[3] = 24;
              v3[4] = v19;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            v8 = result != 0;
            goto LABEL_6;
        }
      }

      if ((result & 7) > 1)
      {
        if (v18 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_110;
          }

          v23 = v3[1] + result;
          if (v6 < v23)
          {
            goto LABEL_87;
          }
        }

        else
        {
          if (v18 != 5)
          {
            goto LABEL_87;
          }

          v23 = v3[1] + 4;
          if (v6 < v23)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          goto LABEL_6;
        }

        if (v18 != 1)
        {
          goto LABEL_87;
        }

        v23 = v3[1] + 8;
        if (v6 < v23)
        {
          goto LABEL_87;
        }
      }

      v3[1] = v23;
LABEL_6:
      v5 = v3[1];
      if (v5 >= v6)
      {
        v3[3] = 0;
        v15 = 0.0;
        switch(v9)
        {
          case 1:
            v14 = 0x80;
            v13 = 1;
            break;
          case 2:
            v13 = LODWORD(v12);
            if (v8 || !v10 || v7 || v11 != 0.0)
            {
              v28 = 0x100000000;
              if (!v8)
              {
                v28 = 0;
              }

              v29 = 0x1000000000000;
              if (!v10)
              {
                v29 = 0;
              }

              v13 = v28 | LODWORD(v12) | v29;
              v14 = v7 | 0x40;
              v15 = v11;
            }

            else if (v12 == 1.0)
            {
              v13 = 3;
              v14 = 0x80;
            }

            else
            {
              v14 = 0;
            }

            break;
          case 3:
            v14 = 0x80;
            v13 = 2;
            break;
          default:
            v13 = 0;
            v14 = 0x80;
            break;
        }

        goto LABEL_4;
      }
    }
  }

  v13 = 0;
  *(result + 24) = 0;
  v14 = 0x80;
  v15 = 0.0;
LABEL_4:
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  return result;
}

void Material.Layer.SDFLayer.GroupLayer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = v3[4];
  v8 = *(v3 + 3);
  v17 = *(v3 + 4);
  v18 = *(v3 + 10);
  v9 = v3[11];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v10 = a1[1];
  v11 = a1[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  *&v11[8 * v13 + 32] = v10;
  a1[3] = v11;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_8;
  }

  a1[1] = v10 + 1;
  SDFStyle.encode(to:)(a1, v5);
  if (v2)
  {
    return;
  }

  ProtobufEncoder.endLengthDelimited()();
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_26;
  }

LABEL_8:
  v20 = v6;
  v19 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  if ((specialized static Material.Layer.SDFLayer.GroupLayer.Blend.== infix(_:_:)(&v20, &v19) & 1) != 0 || (specialized ProtobufEncoder.messageField<A>(_:_:)(2, v20), !v2))
  {
    if (v7 != 1.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v14 = a1[1];
      v15 = v14 + 4;
      if (__OFADD__(v14, 4))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (a1[2] < v15)
      {
        goto LABEL_29;
      }

      a1[1] = v15;
      *(*a1 + v14) = v7;
    }

    if (v8)
    {
LABEL_15:
      ProtobufEncoder.encodeVarint(_:)(0x20uLL);
      ProtobufEncoder.encodeVarint(_:)(v8);
      goto LABEL_16;
    }

    while (1)
    {
LABEL_16:
      if (v17)
      {
        ProtobufEncoder.encodeVarint(_:)(0x28uLL);
        ProtobufEncoder.encodeVarint(_:)(v17);
      }

      if (v18)
      {
        ProtobufEncoder.encodeVarint(_:)(0x30uLL);
        ProtobufEncoder.encodeVarint(_:)(v18);
      }

      if (v9 == 1.0)
      {
        break;
      }

      ProtobufEncoder.encodeVarint(_:)(0x3DuLL);
      v16 = a1[1];
      v15 = v16 + 4;
      if (!__OFADD__(v16, 4))
      {
        if (a1[2] < v15)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v15) = v9;
        }

        else
        {
          a1[1] = v15;
          *(*a1 + v16) = v9;
        }

        return;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      *ProtobufEncoder.growBufferSlow(to:)(v15) = v7;
      if (v8)
      {
        goto LABEL_15;
      }
    }
  }
}

unint64_t Material.Layer.SDFLayer.GroupLayer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v5 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 < v6)
  {
    v47 = a2;
    v8 = v2;
    outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
    v48 = 0;
    v49 = 0;
    v9 = 0;
    v10 = 0xF000000000000007;
    v11 = 1.0;
    v12 = 1.0;
    while (1)
    {
      result = a1[3];
      if (result)
      {
        v14 = a1[4];
        if (v7 < v14)
        {
          goto LABEL_14;
        }

        if (v14 < v7)
        {
          goto LABEL_108;
        }

        a1[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_109;
      }

      if (result < 8)
      {
        goto LABEL_108;
      }

LABEL_14:
      v15 = result >> 3;
      if (result >> 3 <= 3)
      {
        switch(v15)
        {
          case 1uLL:
            if ((result & 7) != 2)
            {
              goto LABEL_108;
            }

            v8 = v2;
            v20 = a1[5];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
            }

            v22 = *(v20 + 2);
            v21 = *(v20 + 3);
            if (v22 >= v21 >> 1)
            {
              v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
            }

            *(v20 + 2) = v22 + 1;
            *&v20[8 * v22 + 32] = v6;
            a1[5] = v20;
            v23 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_109;
            }

            if (v23 < 0)
            {
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
              __break(1u);
              do
              {
                __break(1u);
                v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
                v44 = *(v8 + 2);
                if (v44)
                {
                  goto LABEL_117;
                }

                __break(1u);
                v8 = a1[5];
              }

              while (!*(v8 + 2));
              result = swift_isUniquelyReferenced_nonNull_native();
              if (result)
              {
                v44 = *(v8 + 2);
                if (v44)
                {
LABEL_117:
                  v45 = v44 - 1;
                  v46 = *&v8[8 * v45 + 32];
                  *(v8 + 2) = v45;
                  outlined consume of SDFStyle?(v10);
                  a1[5] = v8;
                  a1[2] = v46;
                  return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
                }
              }

              else
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
                v8 = result;
                v44 = *(result + 16);
                if (v44)
                {
                  goto LABEL_117;
                }
              }

              __break(1u);
              return result;
            }

            v24 = a1[1] + v23;
            if (v6 < v24)
            {
              goto LABEL_108;
            }

            a1[2] = v24;
            v25 = specialized SDFStyle.init(from:)(a1);
            v26 = a1[5];
            if (!*(v26 + 2))
            {
              goto LABEL_121;
            }

            v27 = v25;
            v8 = 0;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v28 = *(v26 + 2);
              if (!v28)
              {
                goto LABEL_122;
              }
            }

            else
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
              v28 = *(v26 + 2);
              if (!v28)
              {
                goto LABEL_122;
              }
            }

            v29 = v28 - 1;
            v6 = *&v26[8 * v29 + 32];
            *(v26 + 2) = v29;
            result = outlined consume of SDFStyle?(v10);
            a1[5] = v26;
            a1[2] = v6;
            v10 = v27;
            goto LABEL_7;
          case 2uLL:
            if ((result & 7) != 2)
            {
              goto LABEL_108;
            }

            v8 = v2;
            v36 = a1[5];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
            }

            v38 = *(v36 + 2);
            v37 = *(v36 + 3);
            if (v38 >= v37 >> 1)
            {
              v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
            }

            *(v36 + 2) = v38 + 1;
            *&v36[8 * v38 + 32] = v6;
            a1[5] = v36;
            v39 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_109;
            }

            if (v39 < 0)
            {
              goto LABEL_119;
            }

            v40 = a1[1] + v39;
            if (v6 < v40)
            {
              goto LABEL_108;
            }

            a1[2] = v40;
            Material.Layer.SDFLayer.GroupLayer.Blend.init(from:)(a1, &v50);
            v41 = a1[5];
            if (!*(v41 + 2))
            {
              goto LABEL_120;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v42 = *(v41 + 2);
              if (!v42)
              {
                goto LABEL_107;
              }
            }

            else
            {
              v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
              v42 = *(v41 + 2);
              if (!v42)
              {
LABEL_107:
                __break(1u);
LABEL_108:
                lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
                swift_allocError();
                swift_willThrow();
LABEL_109:
                outlined consume of SDFStyle?(v10);
                return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
              }
            }

            v43 = v42 - 1;
            v6 = *&v41[8 * v43 + 32];
            *(v41 + 2) = v43;
            a1[5] = v41;
            a1[2] = v6;
            v8 = v50;
            result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
            v5 = v8;
            goto LABEL_7;
          case 3uLL:
            if ((result & 7) == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                goto LABEL_109;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_123;
              }

              v18 = a1[1];
              if (v6 < v18 + result)
              {
                goto LABEL_108;
              }

              a1[3] = 29;
              a1[4] = v18 + result;
            }

            else
            {
              if ((result & 7) != 5)
              {
                goto LABEL_108;
              }

              v18 = a1[1];
            }

            if (v6 < (v18 + 1))
            {
              goto LABEL_108;
            }

            v11 = *v18;
            a1[1] = v18 + 1;
            goto LABEL_7;
        }
      }

      else if (result >> 3 > 5)
      {
        if (v15 == 6)
        {
          if ((result & 7) != 0)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_108;
            }

            v34 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_109;
            }

            if (v34 < 0)
            {
              goto LABEL_124;
            }

            v35 = a1[1] + v34;
            if (v6 < v35)
            {
              goto LABEL_108;
            }

            a1[3] = 48;
            a1[4] = v35;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_109;
          }

          v48 = result;
          goto LABEL_7;
        }

        if (v15 == 7)
        {
          if ((result & 7) == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_109;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_125;
            }

            v19 = a1[1];
            if (v6 < v19 + result)
            {
              goto LABEL_108;
            }

            a1[3] = 61;
            a1[4] = v19 + result;
          }

          else
          {
            if ((result & 7) != 5)
            {
              goto LABEL_108;
            }

            v19 = a1[1];
          }

          if (v6 < (v19 + 1))
          {
            goto LABEL_108;
          }

          v12 = *v19;
          a1[1] = v19 + 1;
          goto LABEL_7;
        }
      }

      else
      {
        if (v15 == 4)
        {
          if ((result & 7) != 0)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_108;
            }

            v32 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_109;
            }

            if (v32 < 0)
            {
              goto LABEL_126;
            }

            v33 = a1[1] + v32;
            if (v6 < v33)
            {
              goto LABEL_108;
            }

            a1[3] = 32;
            a1[4] = v33;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_109;
          }

          v9 = result;
          goto LABEL_7;
        }

        if (v15 == 5)
        {
          if ((result & 7) != 0)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_108;
            }

            v16 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_109;
            }

            if (v16 < 0)
            {
              goto LABEL_127;
            }

            v17 = a1[1] + v16;
            if (v6 < v17)
            {
              goto LABEL_108;
            }

            a1[3] = 40;
            a1[4] = v17;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_109;
          }

          v49 = result;
          goto LABEL_7;
        }
      }

      v30 = result & 7;
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_109;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_128;
          }

          v31 = a1[1] + result;
          if (v6 < v31)
          {
            goto LABEL_108;
          }
        }

        else
        {
          if (v30 != 5)
          {
            goto LABEL_108;
          }

          v31 = a1[1] + 4;
          if (v6 < v31)
          {
            goto LABEL_108;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_109;
          }

          goto LABEL_7;
        }

        if (v30 != 1)
        {
          goto LABEL_108;
        }

        v31 = a1[1] + 8;
        if (v6 < v31)
        {
          goto LABEL_108;
        }
      }

      a1[1] = v31;
LABEL_7:
      v7 = a1[1];
      if (v7 >= v6)
      {
        a1[3] = 0;
        if ((~v10 & 0xF000000000000007) == 0)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
        }

        *v47 = v10;
        *(v47 + 8) = v5;
        *(v47 + 16) = v11;
        *(v47 + 24) = v9;
        *(v47 + 32) = v49;
        *(v47 + 40) = v48;
        *(v47 + 44) = v12;
        *(v47 + 48) = 2139095040;
        return result;
      }
    }
  }

  a1[3] = 0;
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
  return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
}

void Material.Layer.SDFLayer.GroupLayer.Blend.encode(to:)()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    if (v2 == 1)
    {
      v7[2] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v7[3] = v3;
      v7[4] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v4 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v7[0] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7[1] = v4;
      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v5 = v7;
    }

    else
    {
      v8[2] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v8[3] = v3;
      v8[4] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v6 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v8[0] = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8[1] = v6;
      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v5 = v8;
    }

    specialized ProtobufEncoder.encodeMessage<A>(_:)(v5);
  }

  else if (v1)
  {
    if ((v1 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(v1 & 0x7FFFFFFF);
    }
  }
}

unint64_t Material.Layer.SDFLayer.GroupLayer.Blend.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v5 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    result = outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
LABEL_45:
    a1[3] = 0;
    *a2 = v5;
    return result;
  }

  result = outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(static Material.Layer.SDFLayer.GroupLayer.Blend.normal);
  while (1)
  {
    v9 = a1[3];
    if (v9)
    {
      v10 = a1[4];
      if (v7 < v10)
      {
        goto LABEL_14;
      }

      if (v10 < v7)
      {
        goto LABEL_46;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
    }

    v9 = result;
    if (result < 8)
    {
LABEL_46:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
    }

LABEL_14:
    if (v9 >> 3 == 2)
    {
      break;
    }

    if (v9 >> 3 == 1)
    {
      if ((v9 & 7) != 0)
      {
        if ((v9 & 7) != 2)
        {
          goto LABEL_46;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_52:
          __break(1u);
          return result;
        }

        v11 = a1[1] + result;
        if (v6 < v11)
        {
          goto LABEL_46;
        }

        a1[3] = 8;
        a1[4] = v11;
      }

      v12 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
      }

      v13 = v12;
      result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
      if (v13 >> 31)
      {
        v5 = 0;
      }

      else
      {
        v5 = v13;
      }

      goto LABEL_6;
    }

    v16 = v9 & 7;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v17 = a1[1] + result;
        if (v6 < v17)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v16 != 5)
        {
          goto LABEL_46;
        }

        v17 = a1[1] + 4;
        if (v6 < v17)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_43;
    }

    if ((v9 & 7) != 0)
    {
      if (v16 != 1)
      {
        goto LABEL_46;
      }

      v17 = a1[1] + 8;
      if (v6 < v17)
      {
        goto LABEL_46;
      }

LABEL_43:
      a1[1] = v17;
      goto LABEL_7;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
    }

LABEL_7:
    v7 = a1[1];
    v6 = a1[2];
    if (v7 >= v6)
    {
      goto LABEL_45;
    }
  }

  v14 = swift_allocObject();
  v15 = v14;
  if ((v9 & 7) == 2)
  {
    specialized ProtobufDecoder.decodeMessage<A>()((v14 + 16));
    if (v2)
    {
      goto LABEL_49;
    }

    result = outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
    v5 = v15 | 0x4000000000000000;
LABEL_6:
    v2 = 0;
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_49:
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
  return swift_deallocUninitializedObject();
}

int64_t SDFStyle.Mask.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v12;
  *&v9[8 * v11 + 32] = v8;
  *(a1 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  result = SDFStyle.encode(to:)(a1, a2);
  if (v3)
  {
    return result;
  }

  v12 = 0;
  ProtobufEncoder.endLengthDelimited()();
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v9 = *(a1 + 8);
  v4 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v15 = *(v4 + 16);
  v14 = *(v4 + 24);
  if (v15 >= v14 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v4);
    v16 = v12;
    v4 = result;
  }

  else
  {
    v16 = v12;
  }

  *(v4 + 16) = v15 + 1;
  *(v4 + 8 * v15 + 32) = v9;
  *(a1 + 24) = v4;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v9 + 1;
    result = SDFStyle.encode(to:)(a1, a3);
    if (!v16)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

uint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.Mask@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized SDFStyle.Mask.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t _AnyMaterialCustomFillProvider.provider.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v4 = *(*v1 + 128);
  a1[3] = v4;
  a1[4] = *(v3 + 136);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

uint64_t _AnyMaterialCustomFillProvider.isEqual(to:)(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + *(*v6 + 144), v2);

    v7 = dispatch thunk of static Equatable.== infix(_:_:)();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t specialized static SDFStyle.Shadow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 12) == *(a2 + 12) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 ? (v3 = *(a1 + 20) == *(a2 + 20)) : (v3 = 0), v3 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0))
  {
    return (*(a1 + 57) ^ *(a2 + 57) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL specialized static SDFStyle.Fill.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v2 = *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16);
    v3 = v2 && *(a1 + 20) == *(a2 + 20);
    if (v3 && *(a1 + 24) == *(a2 + 24))
    {
      return 1;
    }
  }

  return result;
}

BOOL specialized static SDFStyle.Stroke.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v2 = *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24);
    v3 = v2 && *(a1 + 28) == *(a2 + 28);
    if (v3 && *(a1 + 32) == *(a2 + 32))
    {
      return 1;
    }
  }

  return result;
}

unint64_t specialized SDFStyle.Fill.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0uLL;
  if (v5 >= v6)
  {
LABEL_54:
    v26 = v7;
    v8 = 0.0;
    v9 = 2143289344;
LABEL_55:
    v3[3] = 0;
    *a2 = v8;
    *(a2 + 8) = v26;
    *(a2 + 24) = v9;
    return result;
  }

  v26 = 0uLL;
  v8 = 0.0;
  v9 = 2143289344;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_56;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_56:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v11 = result & 7;
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v11 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v20 = v3[1] + result;
          if (v6 < v20)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v11 != 5)
          {
            goto LABEL_56;
          }

          v20 = v3[1] + 4;
          if (v6 < v20)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v11 != 1)
        {
          goto LABEL_56;
        }

        v20 = v3[1] + 8;
        if (v6 < v20)
        {
          goto LABEL_56;
        }
      }

      v3[1] = v20;
      goto LABEL_4;
    }

    if (v11 == 5)
    {
      v21 = v3[1];
      if (v6 < (v21 + 1))
      {
        goto LABEL_56;
      }

      v22 = *v21;
      v3[1] = v21 + 1;
      v8 = v22;
    }

    else
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        v12 = v3[1];
        if (v6 < v12 + result)
        {
          goto LABEL_56;
        }

        v3[3] = 9;
        v3[4] = v12 + result;
      }

      else
      {
        if (v11 != 1)
        {
          goto LABEL_56;
        }

        v12 = v3[1];
      }

      if (v6 < (v12 + 1))
      {
        goto LABEL_56;
      }

      v8 = *v12;
      v3[1] = v12 + 1;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_55;
    }
  }

  if (v11 != 2)
  {
    goto LABEL_56;
  }

  v13 = v3[5];
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
  v3[5] = v13;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v16 = v3[1] + result;
    if (v6 < v16)
    {
      goto LABEL_56;
    }

    v3[2] = v16;
    specialized Color.ResolvedHDR.init(from:)(v3, &v27);
    v17 = v3[5];
    if (!*(v17 + 16))
    {
      goto LABEL_60;
    }

    v26 = v27;
    v9 = v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = *(v17 + 16);
      if (!v18)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      v17 = result;
      v18 = *(result + 16);
      if (!v18)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v19 = v18 - 1;
    v6 = *(v17 + 8 * v19 + 32);
    *(v17 + 16) = v19;
    v3[5] = v17;
    v3[2] = v6;
    goto LABEL_4;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v25 = *(result + 16);
  if (v25)
  {
    v23 = v25 - 1;
    v24 = *(result + 8 * v23 + 32);
    *(result + 16) = v23;
    v3[5] = result;
    v3[2] = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized SDFStyle.Stroke.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = xmmword_18DD85540;
  if (v5 >= v6)
  {
LABEL_67:
    v31 = v7;
    v8 = 1.0;
    v9 = 0.0;
    v10 = 2143289344;
LABEL_68:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v31;
    *(a2 + 32) = v10;
    return result;
  }

  v31 = xmmword_18DD85540;
  v8 = 1.0;
  v9 = 0.0;
  v10 = 2143289344;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v5)
      {
        goto LABEL_69;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_69:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 == 3)
    {
      break;
    }

    if (v12 == 2)
    {
      if (v13 == 5)
      {
        v24 = v3[1];
        if (v6 < (v24 + 1))
        {
          goto LABEL_69;
        }

        v25 = *v24;
        v3[1] = v24 + 1;
        v8 = v25;
      }

      else
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_75;
          }

          v15 = v3[1];
          if (v6 < v15 + result)
          {
            goto LABEL_69;
          }

          v3[3] = 17;
          v3[4] = v15 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_69;
          }

          v15 = v3[1];
        }

        if (v6 < (v15 + 1))
        {
          goto LABEL_69;
        }

        v8 = *v15;
        v3[1] = v15 + 1;
      }
    }

    else
    {
      if (v12 != 1)
      {
        if ((result & 7) > 1)
        {
          if (v13 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_76;
            }

            v23 = v3[1] + result;
            if (v6 < v23)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_69;
            }

            v23 = v3[1] + 4;
            if (v6 < v23)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            goto LABEL_4;
          }

          if (v13 != 1)
          {
            goto LABEL_69;
          }

          v23 = v3[1] + 8;
          if (v6 < v23)
          {
            goto LABEL_69;
          }
        }

        v3[1] = v23;
        goto LABEL_4;
      }

      if (v13 == 5)
      {
        v26 = v3[1];
        if (v6 < (v26 + 1))
        {
          goto LABEL_69;
        }

        v27 = *v26;
        v3[1] = v26 + 1;
        v9 = v27;
      }

      else
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_74;
          }

          v14 = v3[1];
          if (v6 < v14 + result)
          {
            goto LABEL_69;
          }

          v3[3] = 9;
          v3[4] = v14 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_69;
          }

          v14 = v3[1];
        }

        if (v6 < (v14 + 1))
        {
          goto LABEL_69;
        }

        v9 = *v14;
        v3[1] = v14 + 1;
      }
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_68;
    }
  }

  if (v13 != 2)
  {
    goto LABEL_69;
  }

  v16 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  *&v16[8 * v18 + 32] = v6;
  v3[5] = v16;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v19 = v3[1] + result;
    if (v6 < v19)
    {
      goto LABEL_69;
    }

    v3[2] = v19;
    specialized Color.ResolvedHDR.init(from:)(v3, &v32);
    v20 = v3[5];
    if (!*(v20 + 16))
    {
      goto LABEL_73;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = *(v20 + 16);
      if (!v21)
      {
        goto LABEL_66;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v20 = result;
      v21 = *(result + 16);
      if (!v21)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v22 = v21 - 1;
    v6 = *(v20 + 8 * v22 + 32);
    *(v20 + 16) = v22;
    v3[5] = v20;
    v3[2] = v6;
    v31 = v32;
    v10 = v33;
    goto LABEL_4;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v30 = *(result + 16);
  if (v30)
  {
    v28 = v30 - 1;
    v29 = *(result + 8 * v28 + 32);
    *(result + 16) = v28;
    v3[5] = result;
    v3[2] = v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *specialized SDFStyle.Gradient.init(from:)(void *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = MEMORY[0x1E69E7CC0];
  if (v4 >= v5)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_60:
    a1[3] = 0;
    return v7;
  }

  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = a1[3];
    if (v8)
    {
      v9 = a1[4];
      if (v4 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v4)
      {
        goto LABEL_61;
      }

      a1[3] = 0;
    }

    v8 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_62;
    }

    if (v8 < 8)
    {
LABEL_61:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_62:

      return v7;
    }

LABEL_11:
    v10 = v8 & 7;
    if (v8 >> 3 == 2)
    {
      if (v10 == 2)
      {
        v23 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_62;
        }

        if (v23 < 0)
        {
          goto LABEL_68;
        }

        v21 = a1[1];
        if (v5 < v21 + v23)
        {
          goto LABEL_61;
        }

        a1[3] = 21;
        a1[4] = v21 + v23;
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_61;
        }

        v21 = a1[1];
      }

      if (v5 < (v21 + 1))
      {
        goto LABEL_61;
      }

      v24 = *v21;
      a1[1] = v21 + 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v26 = *(v6 + 2);
      v25 = *(v6 + 3);
      v2 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v6);
      }

      *(v6 + 2) = v2;
      *&v6[8 * v26 + 32] = v24;
      goto LABEL_4;
    }

    if (v8 >> 3 != 1)
    {
      if ((v8 & 7) > 1)
      {
        if (v10 == 2)
        {
          v27 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_62;
          }

          if (v27 < 0)
          {
            goto LABEL_69;
          }

          v22 = a1[1] + v27;
          if (v5 < v22)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v10 != 5)
          {
            goto LABEL_61;
          }

          v22 = a1[1] + 4;
          if (v5 < v22)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        if ((v8 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_62;
          }

          goto LABEL_4;
        }

        if (v10 != 1)
        {
          goto LABEL_61;
        }

        v22 = a1[1] + 8;
        if (v5 < v22)
        {
          goto LABEL_61;
        }
      }

      a1[1] = v22;
      goto LABEL_4;
    }

    if (v10 != 2)
    {
      goto LABEL_61;
    }

    v2 = a1[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v12 = *(v2 + 2);
    v11 = *(v2 + 3);
    if (v12 >= v11 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v2);
    }

    *(v2 + 2) = v12 + 1;
    *&v2[8 * v12 + 32] = v5;
    a1[5] = v2;
    v13 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_62;
    }

    if (v13 < 0)
    {
      break;
    }

    v14 = a1[1] + v13;
    if (v5 < v14)
    {
      goto LABEL_61;
    }

    a1[2] = v14;
    specialized Color.ResolvedHDR.init(from:)(a1, &v33);
    v2 = a1[5];
    if (!*(v2 + 2))
    {
      goto LABEL_66;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = *(v2 + 2);
      if (!v15)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v15 = *(v2 + 2);
      if (!v15)
      {
        goto LABEL_67;
      }
    }

    v16 = v15 - 1;
    v5 = *&v2[8 * v16 + 32];
    *(v2 + 2) = v16;
    a1[5] = v2;
    a1[2] = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v18 = *(v7 + 2);
    v17 = *(v7 + 3);
    v2 = (v18 + 1);
    if (v18 >= v17 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v7);
    }

    *(v7 + 2) = v2;
    v19 = &v7[20 * v18];
    v20 = v33;
    *(v19 + 12) = v34;
    *(v19 + 2) = v20;
LABEL_4:
    v4 = a1[1];
    if (v4 >= v5)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v31 = result;
  v32 = *(result + 2);
  if (v32)
  {
    v29 = v32 - 1;
    v30 = *&result[8 * v29 + 32];
    *(result + 2) = v29;

    a1[5] = v31;
    a1[2] = v30;
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t specialized SDFStyle.Shadow.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
    v45 = xmmword_18DD85540;
    v9 = 0.0;
    v10 = 2143289344;
    v11 = 0.0;
    v12 = 0;
    v13 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 8) = v45;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
    *(a2 + 56) = v7;
    *(a2 + 57) = v8;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v45 = xmmword_18DD85540;
  v9 = 0.0;
  v10 = 2143289344;
  v11 = 0.0;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v14 = v3[4];
      if (v5 < v14)
      {
        goto LABEL_13;
      }

      if (v14 < v5)
      {
        goto LABEL_103;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_103;
    }

LABEL_13:
    v15 = result >> 3;
    v16 = result & 7;
    if (result >> 3 <= 3)
    {
      break;
    }

    switch(v15)
    {
      case 4uLL:
        if (v16 != 2)
        {
          goto LABEL_103;
        }

        v20 = v3[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v22 = *(v20 + 2);
        v21 = *(v20 + 3);
        if (v22 >= v21 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
        }

        *(v20 + 2) = v22 + 1;
        *&v20[8 * v22 + 32] = v6;
        v3[5] = v20;
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_110;
        }

        v23 = v3[1] + result;
        if (v6 < v23)
        {
          goto LABEL_103;
        }

        v3[2] = v23;
        specialized CGPoint.init(from:)(v3);
        v26 = v3[5];
        if (!*(v26 + 16))
        {
          goto LABEL_111;
        }

        v12 = v24;
        v13 = v25;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v27 = *(v26 + 16);
          if (!v27)
          {
            goto LABEL_113;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          v26 = result;
          v27 = *(result + 16);
          if (!v27)
          {
            goto LABEL_113;
          }
        }

        v28 = v27 - 1;
        v6 = *(v26 + 8 * v28 + 32);
        *(v26 + 16) = v28;
        v3[5] = v26;
        v3[2] = v6;
        break;
      case 5uLL:
        if ((result & 7) != 0)
        {
          if (v16 != 2)
          {
            goto LABEL_103;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_115;
          }

          v37 = v3[1] + result;
          if (v6 < v37)
          {
            goto LABEL_103;
          }

          v3[3] = 40;
          v3[4] = v37;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        v7 = result != 0;
        break;
      case 6uLL:
        if ((result & 7) != 0)
        {
          if (v16 != 2)
          {
            goto LABEL_103;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_114;
          }

          v18 = v3[1] + result;
          if (v6 < v18)
          {
            goto LABEL_103;
          }

          v3[3] = 48;
          v3[4] = v18;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        v8 = result != 0;
        break;
      default:
LABEL_48:
        if ((result & 7) > 1)
        {
          if (v16 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_118;
            }

            v29 = v3[1] + result;
            if (v6 < v29)
            {
              goto LABEL_103;
            }
          }

          else
          {
            if (v16 != 5)
            {
              goto LABEL_103;
            }

            v29 = v3[1] + 4;
            if (v6 < v29)
            {
              goto LABEL_103;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            break;
          }

          if (v16 != 1)
          {
            goto LABEL_103;
          }

          v29 = v3[1] + 8;
          if (v6 < v29)
          {
            goto LABEL_103;
          }
        }

        v3[1] = v29;
        break;
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v15 == 1)
  {
    if (v16 == 5)
    {
      v38 = v3[1];
      if (v6 < (v38 + 1))
      {
        goto LABEL_103;
      }

      v39 = *v38;
      v3[1] = v38 + 1;
      v9 = v39;
    }

    else
    {
      if (v16 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        v19 = v3[1];
        if (v6 < v19 + result)
        {
          goto LABEL_103;
        }

        v3[3] = 9;
        v3[4] = v19 + result;
      }

      else
      {
        if (v16 != 1)
        {
          goto LABEL_103;
        }

        v19 = v3[1];
      }

      if (v6 < (v19 + 1))
      {
        goto LABEL_103;
      }

      v9 = *v19;
      v3[1] = v19 + 1;
    }

    goto LABEL_6;
  }

  if (v15 != 2)
  {
    if (v15 != 3)
    {
      goto LABEL_48;
    }

    if (v16 == 5)
    {
      v40 = v3[1];
      if (v6 < (v40 + 1))
      {
        goto LABEL_103;
      }

      v41 = *v40;
      v3[1] = v40 + 1;
      v11 = v41;
    }

    else
    {
      if (v16 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_117;
        }

        v17 = v3[1];
        if (v6 < v17 + result)
        {
          goto LABEL_103;
        }

        v3[3] = 25;
        v3[4] = v17 + result;
      }

      else
      {
        if (v16 != 1)
        {
          goto LABEL_103;
        }

        v17 = v3[1];
      }

      if (v6 < (v17 + 1))
      {
        goto LABEL_103;
      }

      v11 = *v17;
      v3[1] = v17 + 1;
    }

    goto LABEL_6;
  }

  if (v16 != 2)
  {
    goto LABEL_103;
  }

  v30 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  *&v30[8 * v32 + 32] = v6;
  v3[5] = v30;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v33 = v3[1] + result;
    if (v6 < v33)
    {
      goto LABEL_103;
    }

    v3[2] = v33;
    specialized Color.ResolvedHDR.init(from:)(v3, &v46);
    v34 = v3[5];
    if (!*(v34 + 16))
    {
      goto LABEL_112;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v35 = *(v34 + 16);
      if (!v35)
      {
        goto LABEL_102;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
      v34 = result;
      v35 = *(result + 16);
      if (!v35)
      {
LABEL_102:
        __break(1u);
LABEL_103:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v36 = v35 - 1;
    v6 = *(v34 + 8 * v36 + 32);
    *(v34 + 16) = v36;
    v3[5] = v34;
    v3[2] = v6;
    v45 = v46;
    v10 = v47;
    goto LABEL_6;
  }

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
  __break(1u);
  do
  {
    __break(1u);
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v42 = *(result + 16);
    if (v42)
    {
      goto LABEL_108;
    }

    __break(1u);
    a2 = v3[5];
  }

  while (!*(a2 + 16));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v42 = *(a2 + 16);
    if (v42)
    {
LABEL_108:
      v43 = v42 - 1;
      v44 = *(a2 + 8 * v43 + 32);
      *(a2 + 16) = v43;
      v3[5] = a2;
      v3[2] = v44;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v42 = *(result + 16);
    if (v42)
    {
      goto LABEL_108;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized SDFStyle.GlassDisplacement.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0.0;
  if (v5 >= v6)
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
LABEL_4:
    v3[3] = 0;
    *a2 = v10;
    *(a2 + 8) = 0;
    *(a2 + 16) = v9;
    *(a2 + 24) = v8;
    *(a2 + 32) = v7;
    return result;
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_15;
      }

      if (v11 < v5)
      {
        goto LABEL_80;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_80;
    }

LABEL_15:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 > 6)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v13 != 5)
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          v16 = v3[1];
          if (v6 < v16 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 9;
          v3[4] = v16 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_80;
          }

          v16 = v3[1];
        }

        v5 = (v16 + 1);
        if (v6 < (v16 + 1))
        {
          goto LABEL_80;
        }

        v10 = *v16;
        goto LABEL_7;
      }

      v22 = v3[1];
      v5 = (v22 + 1);
      if (v6 < (v22 + 1))
      {
        goto LABEL_80;
      }

      v23 = *v22;
      v3[1] = v5;
      v10 = v23;
      goto LABEL_8;
    }

    if (v12 == 3)
    {
      if (v13 != 5)
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          v14 = v3[1];
          if (v6 < v14 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 25;
          v3[4] = v14 + result;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_80;
          }

          v14 = v3[1];
        }

        v5 = (v14 + 1);
        if (v6 < (v14 + 1))
        {
          goto LABEL_80;
        }

        v9 = *v14;
        goto LABEL_7;
      }

      v18 = v3[1];
      v5 = (v18 + 1);
      if (v6 < (v18 + 1))
      {
        goto LABEL_80;
      }

      v19 = *v18;
      v3[1] = v5;
      v9 = v19;
      goto LABEL_8;
    }

LABEL_28:
    if ((result & 7) > 1)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_80:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          return swift_willThrow();
        }

        v5 = v3[1] + result;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_80;
        }

        v5 = v3[1] + 4;
      }

LABEL_6:
      if (v6 < v5)
      {
        goto LABEL_80;
      }

LABEL_7:
      v3[1] = v5;
      goto LABEL_8;
    }

    if ((result & 7) != 0)
    {
      if (v13 != 1)
      {
        goto LABEL_80;
      }

      v5 = v3[1] + 8;
      goto LABEL_6;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v5 = v3[1];
LABEL_8:
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v12 == 7)
  {
    if (v13 != 5)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        v17 = v3[1];
        if (v6 < v17 + result)
        {
          goto LABEL_80;
        }

        v3[3] = 57;
        v3[4] = v17 + result;
      }

      else
      {
        if (v13 != 1)
        {
          goto LABEL_80;
        }

        v17 = v3[1];
      }

      v5 = (v17 + 1);
      if (v6 < (v17 + 1))
      {
        goto LABEL_80;
      }

      v8 = *v17;
      goto LABEL_7;
    }

    v24 = v3[1];
    v5 = (v24 + 1);
    if (v6 < (v24 + 1))
    {
      goto LABEL_80;
    }

    v25 = *v24;
    v3[1] = v5;
    v8 = v25;
    goto LABEL_8;
  }

  if (v12 != 8)
  {
    goto LABEL_28;
  }

  if (v13 == 5)
  {
    v20 = v3[1];
    v5 = (v20 + 1);
    if (v6 < (v20 + 1))
    {
      goto LABEL_80;
    }

    v21 = *v20;
    v3[1] = v5;
    v7 = v21;
    goto LABEL_8;
  }

  if (v13 != 2)
  {
    if (v13 != 1)
    {
      goto LABEL_80;
    }

    v15 = v3[1];
LABEL_53:
    v5 = (v15 + 1);
    if (v6 < (v15 + 1))
    {
      goto LABEL_80;
    }

    v7 = *v15;
    goto LABEL_7;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v15 = v3[1];
    if (v6 < v15 + result)
    {
      goto LABEL_80;
    }

    v3[3] = 65;
    v3[4] = v15 + result;
    goto LABEL_53;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

unint64_t specialized SDFStyle.GlassHighlight.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v54 = _Q0;
    v13 = 0.5;
    v14 = 0.0;
    v15 = 2143289344;
    v16 = 3.14159265;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
LABEL_4:
    v3[3] = 0;
    *a2 = v14;
    *(a2 + 8) = v54;
    *(a2 + 24) = v15;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;
    *(a2 + 48) = v19;
    *(a2 + 56) = v16;
    *(a2 + 64) = v13;
    *(a2 + 72) = v7;
    return result;
  }

  v7 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v54 = _Q0;
  v13 = 0.5;
  v14 = 0.0;
  v15 = 2143289344;
  v16 = 3.14159265;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v21 = v3[4];
      if (v5 < v21)
      {
        goto LABEL_13;
      }

      if (v21 < v5)
      {
        goto LABEL_133;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_133;
    }

LABEL_13:
    v22 = result >> 3;
    v23 = result & 7;
    if (result >> 3 <= 4)
    {
      break;
    }

    if (result >> 3 > 6)
    {
      if (v22 == 7)
      {
        if ((result & 7) != 0)
        {
          if (v23 != 2)
          {
            goto LABEL_133;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_138;
          }

          v37 = v3[1] + result;
          if (v6 < v37)
          {
            goto LABEL_133;
          }

          v3[3] = 56;
          v3[4] = v37;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        v7 = result != 0;
      }

      else
      {
        if (v22 != 8)
        {
LABEL_68:
          if ((result & 7) > 1)
          {
            if (v23 == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_145;
              }

              v38 = v3[1] + result;
              if (v6 < v38)
              {
                goto LABEL_133;
              }
            }

            else
            {
              if (v23 != 5)
              {
                goto LABEL_133;
              }

              v38 = v3[1] + 4;
              if (v6 < v38)
              {
                goto LABEL_133;
              }
            }
          }

          else
          {
            if ((result & 7) == 0)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              goto LABEL_6;
            }

            if (v23 != 1)
            {
              goto LABEL_133;
            }

            v38 = v3[1] + 8;
            if (v6 < v38)
            {
              goto LABEL_133;
            }
          }

          v3[1] = v38;
          goto LABEL_6;
        }

        if (v23 == 5)
        {
          v49 = v3[1];
          if (v6 < (v49 + 1))
          {
            goto LABEL_133;
          }

          v50 = *v49;
          v3[1] = v49 + 1;
          v14 = v50;
        }

        else
        {
          if (v23 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_142;
            }

            v27 = v3[1];
            if (v6 < v27 + result)
            {
              goto LABEL_133;
            }

            v3[3] = 65;
            v3[4] = v27 + result;
          }

          else
          {
            if (v23 != 1)
            {
              goto LABEL_133;
            }

            v27 = v3[1];
          }

          if (v6 < (v27 + 1))
          {
            goto LABEL_133;
          }

          v14 = *v27;
          v3[1] = v27 + 1;
        }
      }
    }

    else if (v22 == 5)
    {
      if (v23 == 5)
      {
        v39 = v3[1];
        if (v6 < (v39 + 1))
        {
          goto LABEL_133;
        }

        v40 = *v39;
        v3[1] = v39 + 1;
        v16 = v40;
      }

      else
      {
        if (v23 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_143;
          }

          v35 = v3[1];
          if (v6 < v35 + result)
          {
            goto LABEL_133;
          }

          v3[3] = 41;
          v3[4] = v35 + result;
        }

        else
        {
          if (v23 != 1)
          {
            goto LABEL_133;
          }

          v35 = v3[1];
        }

        if (v6 < (v35 + 1))
        {
          goto LABEL_133;
        }

        v16 = *v35;
        v3[1] = v35 + 1;
      }
    }

    else
    {
      if (v22 != 6)
      {
        goto LABEL_68;
      }

      if (v23 == 5)
      {
        v45 = v3[1];
        if (v6 < (v45 + 1))
        {
          goto LABEL_133;
        }

        v46 = *v45;
        v3[1] = v45 + 1;
        v13 = v46;
      }

      else
      {
        if (v23 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_139;
          }

          v25 = v3[1];
          if (v6 < v25 + result)
          {
            goto LABEL_133;
          }

          v3[3] = 49;
          v3[4] = v25 + result;
        }

        else
        {
          if (v23 != 1)
          {
            goto LABEL_133;
          }

          v25 = v3[1];
        }

        if (v6 < (v25 + 1))
        {
          goto LABEL_133;
        }

        v13 = *v25;
        v3[1] = v25 + 1;
      }
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (result >> 3 > 2)
  {
    if (v22 == 3)
    {
      if (v23 == 5)
      {
        v41 = v3[1];
        if (v6 < (v41 + 1))
        {
          goto LABEL_133;
        }

        v42 = *v41;
        v3[1] = v41 + 1;
        v18 = v42;
      }

      else
      {
        if (v23 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_144;
          }

          v36 = v3[1];
          if (v6 < v36 + result)
          {
            goto LABEL_133;
          }

          v3[3] = 25;
          v3[4] = v36 + result;
        }

        else
        {
          if (v23 != 1)
          {
            goto LABEL_133;
          }

          v36 = v3[1];
        }

        if (v6 < (v36 + 1))
        {
          goto LABEL_133;
        }

        v18 = *v36;
        v3[1] = v36 + 1;
      }
    }

    else
    {
      if (v22 != 4)
      {
        goto LABEL_68;
      }

      if (v23 == 5)
      {
        v47 = v3[1];
        if (v6 < (v47 + 1))
        {
          goto LABEL_133;
        }

        v48 = *v47;
        v3[1] = v47 + 1;
        v19 = v48;
      }

      else
      {
        if (v23 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_140;
          }

          v26 = v3[1];
          if (v6 < v26 + result)
          {
            goto LABEL_133;
          }

          v3[3] = 33;
          v3[4] = v26 + result;
        }

        else
        {
          if (v23 != 1)
          {
            goto LABEL_133;
          }

          v26 = v3[1];
        }

        if (v6 < (v26 + 1))
        {
          goto LABEL_133;
        }

        v19 = *v26;
        v3[1] = v26 + 1;
      }
    }

    goto LABEL_6;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      goto LABEL_68;
    }

    if (v23 == 5)
    {
      v43 = v3[1];
      if (v6 < (v43 + 1))
      {
        goto LABEL_133;
      }

      v44 = *v43;
      v3[1] = v43 + 1;
      v17 = v44;
    }

    else
    {
      if (v23 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_141;
        }

        v24 = v3[1];
        if (v6 < v24 + result)
        {
          goto LABEL_133;
        }

        v3[3] = 17;
        v3[4] = v24 + result;
      }

      else
      {
        if (v23 != 1)
        {
          goto LABEL_133;
        }

        v24 = v3[1];
      }

      if (v6 < (v24 + 1))
      {
        goto LABEL_133;
      }

      v17 = *v24;
      v3[1] = v24 + 1;
    }

    goto LABEL_6;
  }

  if (v23 != 2)
  {
    goto LABEL_133;
  }

  v28 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
  }

  *(v28 + 2) = v30 + 1;
  *&v28[8 * v30 + 32] = v6;
  v3[5] = v28;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v31 = v3[1] + result;
    if (v6 < v31)
    {
      goto LABEL_133;
    }

    v3[2] = v31;
    specialized Color.ResolvedHDR.init(from:)(v3, &v55);
    v32 = v3[5];
    if (!*(v32 + 16))
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v33 = *(v32 + 16);
      if (!v33)
      {
        goto LABEL_132;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
      v32 = result;
      v33 = *(result + 16);
      if (!v33)
      {
LABEL_132:
        __break(1u);
LABEL_133:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v34 = v33 - 1;
    v6 = *(v32 + 8 * v34 + 32);
    *(v32 + 16) = v34;
    v3[5] = v32;
    v3[2] = v6;
    v54 = v55;
    v15 = v56;
    goto LABEL_6;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v53 = *(result + 16);
  if (v53)
  {
    v51 = v53 - 1;
    v52 = *(result + 8 * v51 + 32);
    *(result + 16) = v51;
    v3[5] = result;
    v3[2] = v52;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized SDFStyle.OutputSDF.init(from:)(unint64_t result)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  while (1)
  {
    while (1)
    {
      if (v3 >= v4)
      {
        *(v2 + 24) = 0;
        return result;
      }

      result = *(v2 + 24);
      if (result)
      {
        v5 = *(v2 + 32);
        if (v3 < v5)
        {
          goto LABEL_9;
        }

        if (v5 < v3)
        {
          goto LABEL_50;
        }

        *(v2 + 24) = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        return result;
      }

      if (result <= 7)
      {
LABEL_50:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }

LABEL_9:
      if (result >> 3 == 2)
      {
        break;
      }

      if (result >> 3 == 1)
      {
        v6 = result & 7;
        if (v6 == 5)
        {
          v22 = *(v2 + 8);
          if (v4 < v22 + 4)
          {
            goto LABEL_50;
          }

          *(v2 + 8) = v22 + 4;
          v3 = v22 + 4;
        }

        else
        {
          if (v6 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_56;
            }

            v7 = *(v2 + 8);
            if (v4 < v7 + result)
            {
              goto LABEL_50;
            }

            *(v2 + 24) = 9;
            *(v2 + 32) = v7 + result;
          }

          else
          {
            if (v6 != 1)
            {
              goto LABEL_50;
            }

            v7 = *(v2 + 8);
          }

          if (v4 < v7 + 8)
          {
            goto LABEL_50;
          }

          *(v2 + 8) = v7 + 8;
LABEL_44:
          v3 = *(v2 + 8);
        }
      }

      else
      {
        v21 = result & 7;
        if (v21 > 1)
        {
          if (v21 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_57;
            }

            v3 = *(v2 + 8) + result;
            if (v4 < v3)
            {
              goto LABEL_50;
            }

            *(v2 + 8) = v3;
          }

          else
          {
            if (v21 != 5)
            {
              goto LABEL_50;
            }

            v3 = *(v2 + 8) + 4;
            if (v4 < v3)
            {
              goto LABEL_50;
            }

            *(v2 + 8) = v3;
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              return result;
            }

            goto LABEL_44;
          }

          if (v21 != 1)
          {
            goto LABEL_50;
          }

          v3 = *(v2 + 8) + 8;
          if (v4 < v3)
          {
            goto LABEL_50;
          }

          *(v2 + 8) = v3;
        }
      }
    }

    if ((result & 7) != 2)
    {
      goto LABEL_50;
    }

    v8 = *v2;
    v4 = *(v2 + 16);
    result = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      return result;
    }

    v9 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v10 = *(v2 + 8);
    if (v4 < v10 + result)
    {
      goto LABEL_50;
    }

    *(v2 + 8) = v10 + result;
    v11 = v8;

    if (v9)
    {
      v12 = v10 - [v11 bytes];
      result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (__OFADD__(v12, v9))
      {
        goto LABEL_54;
      }

      if ((v12 + v9) < v12)
      {
        goto LABEL_55;
      }

      v15 = result;
      v16 = Data._Representation.subscript.getter();
      v18 = v17;
      v19 = v14;
      v20 = v18;
      outlined consume of Data._Representation(v15, v19);
    }

    else
    {
      v16 = 0;
      v20 = 0xC000000000000000;
    }

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();

    dispatch thunk of PropertyListDecoder.userInfo.setter();
    type metadata accessor for [ClosedRange<CGFloat>]();
    lazy protocol witness table accessor for type [ClosedRange<CGFloat>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ClosedRange<CGFloat>] and conformance <A> [A], type metadata accessor for [ClosedRange<CGFloat>], lazy protocol witness table accessor for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (!*(v23 + 16))
    {

      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();

      outlined consume of Data._Representation(v16, v20);
    }

    outlined consume of Data._Representation(v16, v20);

    v3 = *(v2 + 8);
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t specialized SDFStyle.Mask.init(from:)(void *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    a1[3] = 0;
    v6 = 0xF000000000000007;
    v7 = 0xF000000000000007;
    goto LABEL_4;
  }

  v6 = 0xF000000000000007;
  v7 = 0xF000000000000007;
  do
  {
    v13 = a1[3];
    if (v13)
    {
      v14 = a1[4];
      if (v4 < v14)
      {
        goto LABEL_17;
      }

      if (v14 < v4)
      {
        goto LABEL_4;
      }

      a1[3] = 0;
    }

    v13 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_60;
    }

    if (v13 < 8)
    {
      goto LABEL_4;
    }

LABEL_17:
    v15 = v13 & 7;
    if (v13 >> 3 == 2)
    {
      if (v15 != 2)
      {
        goto LABEL_4;
      }

      v2 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v22 = *(v2 + 2);
      v21 = *(v2 + 3);
      if (v22 >= v21 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v2);
      }

      *(v2 + 2) = v22 + 1;
      *&v2[8 * v22 + 32] = v5;
      a1[5] = v2;
      v23 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_60;
      }

      if (v23 < 0)
      {
        goto LABEL_69;
      }

      v24 = a1[1] + v23;
      if (v5 < v24)
      {
        goto LABEL_4;
      }

      a1[2] = v24;
      v25 = specialized SDFStyle.init(from:)(a1);
      v26 = a1[5];
      if (!*(v26 + 2))
      {
        goto LABEL_71;
      }

      v2 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = *(v26 + 2);
        if (!v27)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
        v27 = *(v26 + 2);
        if (!v27)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          v8 = v6;
          goto LABEL_5;
        }
      }

      v28 = v27 - 1;
      v5 = *&v26[8 * v28 + 32];
      *(v26 + 2) = v28;
      outlined consume of SDFStyle?(v6);
      a1[5] = v26;
      a1[2] = v5;
      v6 = v2;
LABEL_9:
      v1 = 0;
      goto LABEL_10;
    }

    if (v13 >> 3 == 1)
    {
      if (v15 != 2)
      {
        goto LABEL_4;
      }

      v2 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v17 = *(v2 + 2);
      v16 = *(v2 + 3);
      if (v17 >= v16 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v2);
      }

      *(v2 + 2) = v17 + 1;
      *&v2[8 * v17 + 32] = v5;
      a1[5] = v2;
      v18 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_60;
      }

      if (v18 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        __break(1u);
        do
        {
          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v31 = *(v2 + 2);
          if (v31)
          {
            goto LABEL_67;
          }

          __break(1u);
          v2 = a1[5];
        }

        while (!*(v2 + 2));
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v31 = *(v2 + 2);
          if (v31)
          {
LABEL_67:
            v32 = v31 - 1;
            v33 = *&v2[8 * v32 + 32];
            *(v2 + 2) = v32;
            outlined consume of SDFStyle?(v6);
            outlined consume of SDFStyle?(v7);
            a1[5] = v2;
            a1[2] = v33;
            return v7;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v2 = result;
          v31 = *(result + 16);
          if (v31)
          {
            goto LABEL_67;
          }
        }

        __break(1u);
        return result;
      }

      v19 = a1[1] + v18;
      if (v5 < v19)
      {
        goto LABEL_4;
      }

      a1[2] = v19;
      v20 = specialized SDFStyle.init(from:)(a1);
      v10 = a1[5];
      if (!*(v10 + 2))
      {
        goto LABEL_70;
      }

      v2 = v20;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v11 = *(v10 + 2);
        if (!v11)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        v11 = *(v10 + 2);
        if (!v11)
        {
          goto LABEL_72;
        }
      }

      v12 = v11 - 1;
      v5 = *&v10[8 * v12 + 32];
      *(v10 + 2) = v12;
      outlined consume of SDFStyle?(v7);
      a1[5] = v10;
      a1[2] = v5;
      v7 = v2;
      goto LABEL_9;
    }

    if ((v13 & 7) > 1)
    {
      if (v15 == 2)
      {
        v30 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_60;
        }

        if (v30 < 0)
        {
          goto LABEL_73;
        }

        v29 = a1[1] + v30;
        if (v5 < v29)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_4;
        }

        v29 = a1[1] + 4;
        if (v5 < v29)
        {
          goto LABEL_4;
        }
      }

      goto LABEL_57;
    }

    if ((v13 & 7) != 0)
    {
      if (v15 != 1)
      {
        goto LABEL_4;
      }

      v29 = a1[1] + 8;
      if (v5 < v29)
      {
        goto LABEL_4;
      }

LABEL_57:
      a1[1] = v29;
      goto LABEL_10;
    }

    ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_60;
    }

LABEL_10:
    v4 = a1[1];
  }

  while (v4 < v5);
  a1[3] = 0;
  if ((~v7 & 0xF000000000000007) != 0 && (v6 & 0xF000000000000007) != 0xF000000000000007)
  {
    return v7;
  }

LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  v8 = v6;
LABEL_5:
  outlined consume of SDFStyle?(v8);
  outlined consume of SDFStyle?(v7);
  return v7;
}

char *specialized SDFStyle.init(from:)(void *a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0x80;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  *(v4 + 48) = v5;
  v6 = v4 | 0x8000000000000000;
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    goto LABEL_164;
  }

  v9 = &unk_1F005EB40;
  while (1)
  {
    v10 = a1[3];
    if (v10)
    {
      v11 = a1[4];
      if (v7 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v7)
      {
        goto LABEL_165;
      }

      a1[3] = 0;
    }

    v12 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_166;
    }

    v10 = v12;
    if (v12 < 8)
    {
LABEL_165:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_166:

      return v6;
    }

LABEL_11:
    v13 = v10 >> 3;
    if (v10 >> 3 <= 4)
    {
      if (v10 >> 3 > 2)
      {
        if (v13 == 3)
        {
          v59 = swift_allocObject();
          if ((v10 & 7) != 2)
          {
            goto LABEL_169;
          }

          v2 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
          }

          v61 = *(v2 + 2);
          v60 = *(v2 + 3);
          if (v61 >= v60 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v2);
          }

          *(v2 + 2) = v61 + 1;
          *&v2[8 * v61 + 32] = v8;
          a1[5] = v2;
          v62 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_176;
          }

          if (v62 < 0)
          {
            goto LABEL_199;
          }

          v63 = a1[1] + v62;
          if (v8 < v63)
          {
LABEL_169:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            goto LABEL_176;
          }

          v106 = v59;
          v64 = v9;
          a1[2] = v63;
          v65 = specialized SDFStyle.Gradient.init(from:)(a1);
          v68 = a1[5];
          if (!*(v68 + 2))
          {
            goto LABEL_207;
          }

          v69 = v65;
          v2 = v66;
          v70 = v67;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v71 = *(v68 + 2);
            if (!v71)
            {
              goto LABEL_218;
            }
          }

          else
          {
            v68 = specialized _ArrayBuffer._consumeAndCreateNew()(v68);
            v71 = *(v68 + 2);
            if (!v71)
            {
              goto LABEL_218;
            }
          }

          v72 = v71 - 1;
          v8 = *&v68[8 * v72 + 32];
          *(v68 + 2) = v72;

          a1[5] = v68;
          a1[2] = v8;
          *(v106 + 16) = v69;
          *(v106 + 24) = v2;
          v6 = v106 | 0x2000000000000000;
          *(v106 + 32) = v70;
          v9 = v64;
          goto LABEL_4;
        }

        if (v13 == 4)
        {
          v35 = swift_allocObject();
          if ((v10 & 7) != 2)
          {
            goto LABEL_177;
          }

          v2 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
          }

          v37 = *(v2 + 2);
          v36 = *(v2 + 3);
          if (v37 >= v36 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v2);
          }

          *(v2 + 2) = v37 + 1;
          *&v2[8 * v37 + 32] = v8;
          a1[5] = v2;
          v38 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_176;
          }

          if (v38 < 0)
          {
            goto LABEL_196;
          }

          v39 = a1[1] + v38;
          if (v8 < v39)
          {
LABEL_177:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            goto LABEL_176;
          }

          a1[2] = v39;
          specialized SDFStyle.Shadow.init(from:)(a1, v110);
          v40 = v110[1];
          *(v35 + 16) = v110[0];
          *(v35 + 32) = v40;
          *(v35 + 48) = v111[0];
          *(v35 + 58) = *(v111 + 10);
          v2 = a1[5];
          if (!*(v2 + 2))
          {
            goto LABEL_204;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v41 = *(v2 + 2);
            if (!v41)
            {
              goto LABEL_215;
            }
          }

          else
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v41 = *(v2 + 2);
            if (!v41)
            {
              goto LABEL_215;
            }
          }

          v42 = v41 - 1;
          v8 = *&v2[8 * v42 + 32];
          *(v2 + 2) = v42;

          a1[5] = v2;
          a1[2] = v8;
          v6 = v35 | 0x3000000000000000;
          goto LABEL_4;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v52 = swift_allocObject();
          if ((v10 & 7) != 2)
          {
            goto LABEL_173;
          }

          v2 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
          }

          v54 = *(v2 + 2);
          v53 = *(v2 + 3);
          if (v54 >= v53 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v2);
          }

          *(v2 + 2) = v54 + 1;
          *&v2[8 * v54 + 32] = v8;
          a1[5] = v2;
          v55 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_176;
          }

          if (v55 < 0)
          {
            goto LABEL_197;
          }

          v56 = a1[1] + v55;
          if (v8 < v56)
          {
LABEL_173:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            goto LABEL_176;
          }

          a1[2] = v56;
          specialized SDFStyle.Fill.init(from:)(a1, v107);
          v2 = a1[5];
          if (!*(v2 + 2))
          {
            goto LABEL_206;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v57 = *(v2 + 2);
            if (!v57)
            {
              goto LABEL_217;
            }
          }

          else
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v57 = *(v2 + 2);
            if (!v57)
            {
              goto LABEL_217;
            }
          }

          v58 = v57 - 1;
          v8 = *&v2[8 * v58 + 32];
          *(v2 + 2) = v58;

          a1[5] = v2;
          a1[2] = v8;
          *(v52 + 16) = v107[0];
          *(v52 + 28) = *(v107 + 12);
          v6 = v52;
          goto LABEL_4;
        }

        if (v13 == 2)
        {
          v27 = swift_allocObject();
          if ((v10 & 7) != 2)
          {
            goto LABEL_167;
          }

          v2 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
          }

          v29 = *(v2 + 2);
          v28 = *(v2 + 3);
          if (v29 >= v28 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v2);
          }

          *(v2 + 2) = v29 + 1;
          *&v2[8 * v29 + 32] = v8;
          a1[5] = v2;
          v30 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_176;
          }

          if (v30 < 0)
          {
            goto LABEL_201;
          }

          v31 = a1[1] + v30;
          if (v8 < v31)
          {
            goto LABEL_167;
          }

          a1[2] = v31;
          specialized SDFStyle.Stroke.init(from:)(a1, v108);
          v32 = v108[1];
          *(v27 + 16) = v108[0];
          *(v27 + 32) = v32;
          *(v27 + 48) = v109;
          v2 = a1[5];
          if (!*(v2 + 2))
          {
            goto LABEL_209;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v33 = *(v2 + 2);
            if (!v33)
            {
              goto LABEL_216;
            }
          }

          else
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v33 = *(v2 + 2);
            if (!v33)
            {
              goto LABEL_216;
            }
          }

          v34 = v33 - 1;
          v8 = *&v2[8 * v34 + 32];
          *(v2 + 2) = v34;

          a1[5] = v2;
          a1[2] = v8;
          v6 = v27 | 0x1000000000000000;
          goto LABEL_4;
        }
      }

      goto LABEL_131;
    }

    if (v10 >> 3 <= 6)
    {
      if (v13 == 5)
      {
        v80 = swift_allocObject();
        if ((v10 & 7) != 2)
        {
          goto LABEL_167;
        }

        v2 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        }

        v82 = *(v2 + 2);
        v81 = *(v2 + 3);
        if (v82 >= v81 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v2);
        }

        *(v2 + 2) = v82 + 1;
        *&v2[8 * v82 + 32] = v8;
        a1[5] = v2;
        v83 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_176;
        }

        if (v83 < 0)
        {
          goto LABEL_195;
        }

        v84 = a1[1] + v83;
        if (v8 < v84)
        {
LABEL_167:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_176;
        }

        a1[2] = v84;
        specialized SDFStyle.GlassDisplacement.init(from:)(a1, v112);
        v2 = a1[5];
        if (!*(v2 + 2))
        {
          goto LABEL_208;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v85 = *(v2 + 2);
          if (!v85)
          {
            goto LABEL_213;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v85 = *(v2 + 2);
          if (!v85)
          {
            goto LABEL_213;
          }
        }

        v86 = v85 - 1;
        v8 = *&v2[8 * v86 + 32];
        *(v2 + 2) = v86;

        a1[5] = v2;
        a1[2] = v8;
        v87 = v112[1];
        *(v80 + 16) = v112[0];
        *(v80 + 32) = v87;
        *(v80 + 48) = v113;
        v6 = v80 | 0x5000000000000000;
        goto LABEL_4;
      }

      if (v13 == 6)
      {
        v43 = swift_allocObject();
        if ((v10 & 7) != 2)
        {
          goto LABEL_171;
        }

        v2 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        }

        v45 = *(v2 + 2);
        v44 = *(v2 + 3);
        if (v45 >= v44 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v2);
        }

        *(v2 + 2) = v45 + 1;
        *&v2[8 * v45 + 32] = v8;
        a1[5] = v2;
        v46 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_176;
        }

        if (v46 < 0)
        {
          goto LABEL_198;
        }

        v47 = a1[1] + v46;
        if (v8 < v47)
        {
LABEL_171:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_176;
        }

        a1[2] = v47;
        specialized SDFStyle.GlassHighlight.init(from:)(a1, v114);
        *(v43 + 73) = *(v115 + 9);
        v48 = v115[0];
        *(v43 + 48) = v114[2];
        *(v43 + 64) = v48;
        v49 = v114[1];
        *(v43 + 16) = v114[0];
        *(v43 + 32) = v49;
        v2 = a1[5];
        if (!*(v2 + 2))
        {
          goto LABEL_205;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v50 = *(v2 + 2);
          if (!v50)
          {
            goto LABEL_212;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v50 = *(v2 + 2);
          if (!v50)
          {
            goto LABEL_212;
          }
        }

        v51 = v50 - 1;
        v8 = *&v2[8 * v51 + 32];
        *(v2 + 2) = v51;

        a1[5] = v2;
        a1[2] = v8;
        v6 = v43 | 0x6000000000000000;
        goto LABEL_4;
      }

      goto LABEL_131;
    }

    if (v13 == 7)
    {
      v73 = swift_allocObject();
      if ((v10 & 7) != 2)
      {
        goto LABEL_167;
      }

      v2 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v75 = *(v2 + 2);
      v74 = *(v2 + 3);
      if (v75 >= v74 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v2);
      }

      *(v2 + 2) = v75 + 1;
      *&v2[8 * v75 + 32] = v8;
      a1[5] = v2;
      v76 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_176;
      }

      if (v76 < 0)
      {
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
        __break(1u);
        __break(1u);
LABEL_221:
        __break(1u);
        __break(1u);
LABEL_222:
        __break(1u);
        __break(1u);
        do
        {
          __break(1u);
          __break(1u);
          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v102 = *(v2 + 2);
          if (v102)
          {
            goto LABEL_191;
          }

          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v102 = *(v2 + 2);
          if (v102)
          {
            goto LABEL_191;
          }

          __break(1u);
          v2 = a1[5];
          if (!*(v2 + 2))
          {
            goto LABEL_221;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v102 = *(v2 + 2);
            if (v102)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v102 = *(v2 + 2);
            if (v102)
            {
              goto LABEL_191;
            }
          }

          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v102 = *(v2 + 2);
          if (v102)
          {
            goto LABEL_191;
          }

          __break(1u);
          v2 = a1[5];
          if (!*(v2 + 2))
          {
            goto LABEL_222;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v102 = *(v2 + 2);
            if (v102)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v102 = *(v2 + 2);
            if (v102)
            {
              goto LABEL_191;
            }
          }

          __break(1u);
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v102 = *(v2 + 2);
          if (v102)
          {
            goto LABEL_191;
          }

          __break(1u);
          v2 = a1[5];
        }

        while (!*(v2 + 2));
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v102 = *(v2 + 2);
          if (v102)
          {
            goto LABEL_191;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v102 = *(v2 + 2);
          if (v102)
          {
            goto LABEL_191;
          }
        }

        __break(1u);
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v102 = *(v2 + 2);
        if (!v102)
        {
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v2 = result;
          v102 = *(result + 2);
          if (!v102)
          {
            __break(1u);
            return result;
          }
        }

LABEL_191:
        v103 = v102 - 1;
        v104 = *&v2[8 * v103 + 32];
        *(v2 + 2) = v103;

        a1[5] = v2;
        a1[2] = v104;
        goto LABEL_192;
      }

      v77 = a1[1] + v76;
      if (v8 < v77)
      {
        goto LABEL_167;
      }

      a1[2] = v77;
      SDFStyle.Group.init(from:)(a1, v73 + 16);
      v2 = a1[5];
      if (!*(v2 + 2))
      {
        goto LABEL_210;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v78 = *(v2 + 2);
        if (!v78)
        {
          goto LABEL_219;
        }
      }

      else
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v78 = *(v2 + 2);
        if (!v78)
        {
          goto LABEL_219;
        }
      }

      v79 = v78 - 1;
      v8 = *&v2[8 * v79 + 32];
      *(v2 + 2) = v79;

      a1[5] = v2;
      a1[2] = v8;
      v6 = v73 | 0x8000000000000000;
      goto LABEL_4;
    }

    if (v13 == 8)
    {
      break;
    }

    if (v13 == 9)
    {
      v14 = swift_allocObject();
      if ((v10 & 7) != 2)
      {
        goto LABEL_169;
      }

      v2 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v16 = *(v2 + 2);
      v15 = *(v2 + 3);
      if (v16 >= v15 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v2);
      }

      *(v2 + 2) = v16 + 1;
      *&v2[8 * v16 + 32] = v8;
      a1[5] = v2;
      v17 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_176;
      }

      if (v17 < 0)
      {
        goto LABEL_200;
      }

      v18 = a1[1] + v17;
      if (v8 < v18)
      {
        goto LABEL_169;
      }

      a1[2] = v18;
      specialized SDFStyle.OutputSDF.init(from:)(a1);
      v2 = a1[5];
      if (!*(v2 + 2))
      {
        goto LABEL_211;
      }

      v22 = v19;
      v23 = v20;
      v24 = v21;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v25 = *(v2 + 2);
        if (!v25)
        {
          goto LABEL_214;
        }
      }

      else
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v25 = *(v2 + 2);
        if (!v25)
        {
          goto LABEL_214;
        }
      }

      v26 = v25 - 1;
      v8 = *&v2[8 * v26 + 32];
      *(v2 + 2) = v26;

      a1[5] = v2;
      a1[2] = v8;
      *(v14 + 16) = v22;
      *(v14 + 24) = v23;
      v6 = v14 | 0xA000000000000000;
      *(v14 + 32) = v24;
      goto LABEL_4;
    }

LABEL_131:
    v99 = v10 & 7;
    if (v99 > 1)
    {
      if (v99 == 2)
      {
        v101 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_166;
        }

        if (v101 < 0)
        {
          goto LABEL_220;
        }

        v100 = a1[1] + v101;
        if (v8 < v100)
        {
          goto LABEL_165;
        }
      }

      else
      {
        if (v99 != 5)
        {
          goto LABEL_165;
        }

        v100 = a1[1] + 4;
        if (v8 < v100)
        {
          goto LABEL_165;
        }
      }

      goto LABEL_3;
    }

    if ((v10 & 7) != 0)
    {
      if (v99 != 1)
      {
        goto LABEL_165;
      }

      v100 = a1[1] + 8;
      if (v8 < v100)
      {
        goto LABEL_165;
      }

LABEL_3:
      a1[1] = v100;
      goto LABEL_4;
    }

    ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_166;
    }

LABEL_4:
    v7 = a1[1];
    if (v7 >= v8)
    {
      goto LABEL_164;
    }
  }

  v88 = swift_allocObject();
  if ((v10 & 7) != 2)
  {
    goto LABEL_175;
  }

  v2 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v90 = *(v2 + 2);
  v89 = *(v2 + 3);
  if (v90 >= v89 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1, v2);
  }

  *(v2 + 2) = v90 + 1;
  *&v2[8 * v90 + 32] = v8;
  a1[5] = v2;
  v91 = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    goto LABEL_176;
  }

  if (v91 < 0)
  {
    goto LABEL_202;
  }

  v92 = a1[1] + v91;
  if (v8 >= v92)
  {
    v6 = v9;
    a1[2] = v92;
    v93 = specialized SDFStyle.Mask.init(from:)(a1);
    v2 = a1[5];
    if (!*(v2 + 2))
    {
      goto LABEL_203;
    }

    v95 = v93;
    v96 = v94;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = *(v2 + 2);
      if (!v97)
      {
        goto LABEL_163;
      }

      goto LABEL_130;
    }

    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v97 = *(v2 + 2);
    if (v97)
    {
LABEL_130:
      v98 = v97 - 1;
      v8 = *&v2[8 * v98 + 32];
      *(v2 + 2) = v98;

      a1[5] = v2;
      a1[2] = v8;
      *(v88 + 16) = v95;
      *(v88 + 24) = v96;
      v9 = v6;
      v6 = v88 | 0x9000000000000000;
      goto LABEL_4;
    }

LABEL_163:
    __break(1u);
LABEL_164:
    a1[3] = 0;
    return v6;
  }

LABEL_175:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_176:

LABEL_192:
  swift_deallocUninitializedObject();
  return v6;
}