id sub_1003D7D7C()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 168);
  }

  else
  {
    if (*(v0 + 24))
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x72665F68636E6970;
    }

    if (*(v0 + 24))
    {
      v4 = 0x800000010050BE20;
    }

    else
    {
      v4 = 0xEE00746E656D6761;
    }

    v5 = sub_1003DC370(0x65765F68636E6970, 0xEC00000078657472, v3, v4, 0xD000000000000022, 0x800000010050BDF0, *(v0 + 128));

    v6 = *(v0 + 168);
    *(v0 + 168) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_1003D7E60()
{
  v1 = sub_1003D7D7C();
  if (qword_100611848 != -1)
  {
    swift_once();
  }

  [v1 setVertexDescriptor:qword_1006195F0];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (!v3)
  {
    sub_1004BC984();
    sub_100009130(0, &qword_1006126B8);
    v7 = sub_1004BD144();
    sub_1004B7F84();

    return 0;
  }

  [v3 setPixelFormat:*(v0 + 16)];
  v4 = *(v0 + 112);
  v19 = 0;
  v5 = [v4 newRenderPipelineStateWithDescriptor:v1 error:&v19];
  v6 = v19;
  if (!v5)
  {
    v8 = v6;
    v9 = sub_1004B69B4();

    swift_willThrow();
    v22 = v9;
    sub_100003ABC(&qword_1006126C0);
    sub_100009130(0, &qword_1006126C8);
    swift_dynamicCast();
    v10 = v21;
    sub_100003ABC(&qword_1006126D0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1004C50A0;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1004BD404(33);

    v19 = 0xD00000000000001FLL;
    v20 = 0x800000010050BBD0;
    v12 = [v10 description];
    v13 = sub_1004BBE64();
    v15 = v14;

    v23._countAndFlagsBits = v13;
    v23._object = v15;
    sub_1004BC024(v23);

    v16 = v19;
    v17 = v20;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v16;
    *(v11 + 40) = v17;
    sub_1004BDB74();

    return 0;
  }

  return v5;
}

uint64_t sub_1003D816C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1003D8254()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = sub_1003D82AC();
    v4 = *(v0 + 152);
    *(v0 + 152) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1003D82AC()
{
  v1 = sub_1003DC370(0x797469746E656469, 0xEF7865747265765FLL, 0xD000000000000010, 0x800000010050BD80, 0x2065727574786554, 0xEF7265646E656C42, *(v0 + 64));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (qword_100611848 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_1006195F0];

    return v1;
  }

  else
  {
    sub_1004BD404(56);
    v9._countAndFlagsBits = 0xD000000000000036;
    v9._object = 0x800000010050BBF0;
    sub_1004BC024(v9);
    v5 = [v1 description];
    v6 = sub_1004BBE64();
    v8 = v7;

    v10._countAndFlagsBits = v6;
    v10._object = v8;
    sub_1004BC024(v10);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

id sub_1003D84A0()
{
  v1 = *(v0 + 48);
  v2 = sub_1003D8254();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1004B69B4();

    swift_willThrow();
    v19 = v6;
    sub_100003ABC(&qword_1006126C0);
    sub_100009130(0, &qword_1006126C8);
    swift_dynamicCast();
    v7 = v18;
    sub_100003ABC(&qword_1006126D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004C50A0;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1004BD404(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x800000010050BBD0;
    v9 = [v7 description];
    v10 = sub_1004BBE64();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_1004BC024(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1004BDB74();

    return 0;
  }

  return v3;
}

uint64_t sub_1003D8698()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];
    [v5 setStoreAction:1];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    sub_1004BD404(52);
    v11._object = 0x800000010050BB90;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_1004BC024(v11);
    v7 = [v1 description];
    v8 = sub_1004BBE64();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_1004BC024(v12);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_1003D8848(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 <= 0.0)
  {
    return;
  }

  v3 = *(v1 + 32);
  if (v3 <= 0.0)
  {
    return;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v2 >> 52 > 0x7FEuLL || *&v3 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 height:v3 mipmapped:0];
  [v5 setStorageMode:0];
  [v5 setUsage:7];
  *(v1 + 40) = [a1 newTextureWithDescriptor:v5];
  swift_unknownObjectRelease();
  *(v1 + 112) = [a1 newTextureWithDescriptor:v5];
  swift_unknownObjectRelease();
  v6 = sub_1003D8698();

  v7 = *(v1 + 168);
  *(v1 + 168) = v6;
}

void sub_1003D89E0(void *a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  if (!v3 || (v4 = *(v2 + 136)) == 0 || (v5 = *(v2 + 144)) == 0 || (v6 = *(v2 + 96)) == 0)
  {
    sub_1004BC964();
    sub_100009130(0, &qword_1006126B8);
    v16 = sub_1004BD144();
    sub_1004B7F84();
LABEL_11:

    return;
  }

  if (*(v2 + 104) == 1 && (v7 = *(v2 + 40)) != 0)
  {
    v8 = a1;
    v9 = a2;
    v10 = *(v2 + 112);
    if (v10)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = [v8 blitCommandEncoder];
      if (v11)
      {
        v12 = v11;
        [v11 copyFromTexture:v7 toTexture:v10];
        *(v2 + 104) = 0;
        [v12 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!*(v2 + 168))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = a1;
    v9 = a2;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (!*(v2 + 168))
  {
LABEL_21:
    sub_1004BC984();
    sub_100009130(0, &qword_1006126B8);
    v16 = sub_1004BD144();
    sub_1004B7F84();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_16:
  v13 = [v8 renderCommandEncoderWithDescriptor:?];
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  v15 = sub_1004BBE24();
  [v14 setLabel:v15];

  [v14 setRenderPipelineState:v3];
  [v14 setVertexBuffer:v4 offset:0 atIndex:0];
  [v14 setVertexBytes:v9 length:368 atIndex:1];
  [v14 setFragmentTexture:v6 atIndex:0];
  [v14 setFragmentTexture:*(v2 + 112) atIndex:1];
  [v14 setFragmentBytes:v9 length:368 atIndex:1];
  [v14 drawIndexedPrimitives:3 indexCount:*(*(v2 + 128) + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:1];
  [v14 endEncoding];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

id *sub_1003D8DAC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003D8E48()
{
  sub_1003D8DAC();

  return swift_deallocClassInstance();
}

uint64_t sub_1003D8EA0(__int128 *a1)
{
  v2 = v1;
  *(v2 + 16) = 115;
  *(v2 + 24) = 1117782016;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0x3FF0000000000000;
  *(v2 + 184) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0;
  v4 = *(a1 + 3);
  *(v2 + 81) = *(a1 + 25);
  v5 = *a1;
  *(v2 + 72) = a1[1];
  *(v2 + 56) = v5;
  v6 = qword_100611870;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  result = qword_100619700;
  *(v2 + 104) = qword_100619700;
  *(v2 + 112) = &off_1005C7A30;
  v9 = *(result + 16);
  if (v9 >> 57)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = [*(v2 + 56) newBufferWithBytes:+ 32 length:v9 << 6 options:0];
    result = swift_unknownObjectRelease();
    v10 = *(v2 + 112);
    v11 = *(v10 + 16);
    if (v11 + 0x4000000000000000 >= 0)
    {
      *(v2 + 128) = [*(v2 + 56) newBufferWithBytes:v10 + 32 length:2 * v11 options:0];
      swift_unknownObjectRelease();
      type metadata accessor for Backdrop.TexturePan();
      swift_allocObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = v7;
      v13 = sub_1003DB374(a1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 176) = v13;
      v14 = sub_1003D96B0();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 136) = v14;
      swift_unknownObjectRelease();
      return v2;
    }
  }

  __break(1u);
  return result;
}

void sub_1003D90BC(double a1, double a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  if (v3 != a1 || v4 != a2)
  {
    sub_1003D9A44(*(v2 + 56));
    sub_1003D9C20();
    v6 = *(v2 + 176);
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    v9 = *(v6 + 24);
    v10 = *(v6 + 32);
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    if (v7 != v9 || v8 != v10)
    {
      v12 = *(v6 + 56);

      sub_1003D9DC0(v12);
    }
  }
}

void sub_1003D914C(void *a1, uint64_t a2)
{
  v3 = v2[17];
  if (v3 && (v4 = v2[15]) != 0 && (v5 = v2[16]) != 0 && (v6 = v2[20]) != 0 && (v7 = v2[21]) != 0)
  {
    v8 = v2[18];
    if (v8)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = a1;
      v12 = [a1 renderCommandEncoderWithDescriptor:v8];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1004BBE24();
        [v13 setLabel:v14];

        [v13 setRenderPipelineState:v3];
        [v13 setVertexBuffer:v4 offset:0 atIndex:0];
        [v13 setVertexBytes:a2 length:368 atIndex:1];
        [v13 setFragmentBytes:a2 length:368 atIndex:1];
        [v13 setFragmentTexture:v2[19] atIndex:0];
        [v13 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:3];
        [v13 endEncoding];
        *(v2[22] + 40) = v6;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();

        v15 = v2;
        sub_1003DA55C(v11, a2);

        v16 = *(v2[22] + 48);
        if (v16 && (v17 = v15[23]) != 0)
        {
          swift_unknownObjectRetain();
          v18 = v17;
          [v18 encodeToCommandBuffer:v11 sourceTexture:v16 destinationTexture:v7];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    sub_1004BC984();
    sub_100009130(0, &qword_1006126B8);
    v19 = sub_1004BD144();
    sub_1004B7F84();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1004BC964();
    sub_100009130(0, &qword_1006126B8);
    v19 = sub_1004BD144();
    sub_1004B7F84();
  }
}

uint64_t sub_1003D9520()
{
  v1 = sub_1003DC370(0x6E6F697461746F72, 0xEF7865747265765FLL, 0xD000000000000011, 0x800000010050BC30, 0xD000000000000024, 0x800000010050BC50, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    [v3 setBlendingEnabled:0];
    if (qword_100611848 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_1006195F0];

    return v1;
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

id sub_1003D96B0()
{
  v1 = *(v0 + 56);
  v2 = sub_1003D9520();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1004B69B4();

    swift_willThrow();
    v19 = v6;
    sub_100003ABC(&qword_1006126C0);
    sub_100009130(0, &qword_1006126C8);
    swift_dynamicCast();
    v7 = v18;
    sub_100003ABC(&qword_1006126D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004C50A0;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1004BD404(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x800000010050BBD0;
    v9 = [v7 description];
    v10 = sub_1004BBE64();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_1004BC024(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1004BDB74();

    return 0;
  }

  return v3;
}

uint64_t sub_1003D98A8()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 160);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    sub_1004BD404(52);
    v11._object = 0x800000010050BB90;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_1004BC024(v11);
    v7 = [v1 description];
    v8 = sub_1004BBE64();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_1004BC024(v12);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_1003D9A44(void *a1)
{
  v2 = *(v1 + 32);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 40);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode:0];
              [v5 setUsage:7];
              *(v1 + 160) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              *(v1 + 168) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              v6 = sub_1003D98A8();

              v7 = *(v1 + 144);
              *(v1 + 144) = v6;

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  *(v1 + 160) = 0;
  swift_unknownObjectRelease();
  *(v1 + 168) = 0;

  swift_unknownObjectRelease();
}

void sub_1003D9C20()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24) / (4.0 / v1);
  v3 = *(v0 + 184);
  if (!v3 || ([v3 sigma], v2 != v4))
  {
    v5 = *(v0 + 56);
    v6 = objc_allocWithZone(MPSImageGaussianBlur);
    *&v7 = v2;
    v8 = [v6 initWithDevice:v5 sigma:v7];
    v9 = *(v0 + 184);
    *(v0 + 184) = v8;
  }
}

id *sub_1003D9CC4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1003D9D68()
{
  sub_1003D9CC4();

  return swift_deallocClassInstance();
}

void sub_1003D9DC0(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 32);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode:0];
              [v5 setUsage:7];
              *(v1 + 48) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              v6 = sub_1003DA3AC();

              v7 = *(v1 + 152);
              *(v1 + 152) = v6;

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  *(v1 + 48) = 0;

  swift_unknownObjectRelease();
}

id sub_1003D9F70()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = sub_1003D9FC8();
    v4 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1003D9FC8()
{
  v1 = sub_1003DC370(0x797469746E656469, 0xEF7865747265765FLL, 0x676172665F6E6170, 0xEC000000746E656DLL, 0x2065727574786554, 0xEE0072656E6E6150, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (qword_100611848 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_1006195F0];

    return v1;
  }

  else
  {
    sub_1004BD404(56);
    v9._object = 0x800000010050BBF0;
    v9._countAndFlagsBits = 0xD000000000000036;
    sub_1004BC024(v9);
    v5 = [v1 description];
    v6 = sub_1004BBE64();
    v8 = v7;

    v10._countAndFlagsBits = v6;
    v10._object = v8;
    sub_1004BC024(v10);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

id sub_1003DA1B4()
{
  v1 = *(v0 + 56);
  v2 = sub_1003D9F70();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1004B69B4();

    swift_willThrow();
    v19 = v6;
    sub_100003ABC(&qword_1006126C0);
    sub_100009130(0, &qword_1006126C8);
    swift_dynamicCast();
    v7 = v18;
    sub_100003ABC(&qword_1006126D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004C50A0;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1004BD404(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x800000010050BBD0;
    v9 = [v7 description];
    v10 = sub_1004BBE64();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_1004BC024(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1004BDB74();

    return 0;
  }

  return v3;
}

uint64_t sub_1003DA3AC()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 48);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];
    [v5 setStoreAction:1];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    sub_1004BD404(52);
    v11._object = 0x800000010050BB90;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_1004BC024(v11);
    v7 = [v1 description];
    v8 = sub_1004BBE64();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_1004BC024(v12);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_1003DA55C(void *a1, uint64_t a2)
{
  v3 = v2[18];
  if (v3 && (v4 = v2[15]) != 0 && (v5 = v2[16]) != 0 && (v6 = v2[5]) != 0)
  {
    v7 = v2[19];
    if (v7)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = [a1 renderCommandEncoderWithDescriptor:v7];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1004BBE24();
        [v11 setLabel:v12];

        [v11 setRenderPipelineState:v3];
        [v11 setVertexBuffer:v4 offset:0 atIndex:0];
        [v11 setVertexBytes:a2 length:368 atIndex:1];
        [v11 setFragmentTexture:v6 atIndex:0];
        [v11 setFragmentBytes:a2 length:368 atIndex:1];
        [v11 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:1];
        [v11 endEncoding];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    sub_1004BC984();
    sub_100009130(0, &qword_1006126B8);
    v13 = sub_1004BD144();
    sub_1004B7F84();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1004BC964();
    sub_100009130(0, &qword_1006126B8);
    v13 = sub_1004BD144();
    sub_1004B7F84();
  }
}

id *sub_1003DA85C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003DA8F0()
{
  sub_1003DA85C();

  return swift_deallocClassInstance();
}

__n128 sub_1003DA948(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Backdrop.Specs.Environment(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Backdrop.Specs.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
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

uint64_t storeEnumTagSinglePayload for Backdrop.Specs.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1003DAA70()
{
  result = qword_1006126B0;
  if (!qword_1006126B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006126B0);
  }

  return result;
}

unint64_t sub_1003DAAC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1003DAB90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100004DE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004C6C(v11);
  return v7;
}

unint64_t sub_1003DAB90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1003DAC9C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1004BD4C4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id *sub_1003DAC9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1003DACE8(a1, a2);
  sub_1003DAE18(&off_1005C79D8);
  return v3;
}

id *sub_1003DACE8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1003DAF04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1004BD4C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1004BC044();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1003DAF04(v10, 0);
        result = sub_1004BD3F4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1003DAE18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003DAF78(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *sub_1003DAF04(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003ABC(&qword_100612710);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_1003DAF78(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_100612710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1003DB06C(uint64_t a1)
{
  sub_1004BBE64();
  sub_1004BDBA4();
  sub_1004BBF84();
  v2 = sub_1004BDBF4();

  return sub_100035374(a1, v2);
}

unint64_t sub_1003DB100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100612720);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1003DB06C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_1003DB1F0(char *result)
{
  *(v1 + 16) = 115;
  *(v1 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v1 + 40) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  if (qword_100611870 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  v2 = qword_100619700;
  *(v1 + 120) = qword_100619700;
  *(v1 + 128) = &off_1005C7A30;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0;
  v3 = *result;
  v4 = *(result + 3);
  v5 = *(result + 1);
  *(v1 + 48) = *result;
  *(v1 + 64) = v5;
  *(v1 + 73) = *(result + 25);
  v6 = *(v2 + 16);
  if (v6 >> 57)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 << 6;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = v4;
    result = [v3 newBufferWithBytes:v2 + 32 length:v7 options:0];
    *(v1 + 136) = result;
    v9 = *(v1 + 128);
    v10 = *(v9 + 16);
    if (v10 + 0x4000000000000000 >= 0)
    {
      *(v1 + 144) = [*(v1 + 48) newBufferWithBytes:v9 + 32 length:2 * v10 options:0];
      *(v1 + 160) = sub_1003D84A0();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      sub_1003D8848(v11);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

char *sub_1003DB374(char *result)
{
  *(v1 + 16) = 115;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  if (qword_100611870 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  v2 = qword_100619700;
  *(v1 + 104) = qword_100619700;
  *(v1 + 112) = &off_1005C7A30;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 136) = 0;
  v3 = *result;
  v4 = *(result + 3);
  v5 = *(result + 1);
  *(v1 + 56) = *result;
  *(v1 + 72) = v5;
  *(v1 + 81) = *(result + 25);
  v6 = *(v2 + 16);
  if (v6 >> 57)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 << 6;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = v4;
    result = [v3 newBufferWithBytes:v2 + 32 length:v7 options:0];
    *(v1 + 120) = result;
    v9 = *(v1 + 112);
    v10 = *(v9 + 16);
    if (v10 + 0x4000000000000000 >= 0)
    {
      *(v1 + 128) = [*(v1 + 56) newBufferWithBytes:v9 + 32 length:2 * v10 options:0];
      *(v1 + 144) = sub_1003DA1B4();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      sub_1003D9DC0(v11);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

double sub_1003DB4EC()
{
  sub_100003ABC(&unk_100612730);
  v0 = swift_allocObject();
  v0[1] = xmmword_1004C5070;
  v0[2] = xmmword_1004E6870;
  v0[3] = xmmword_1004E6880;
  v0[4] = xmmword_1004E6830;
  result = 0.0;
  v0[5] = xmmword_1004E6840;
  v0[6] = xmmword_1004E6890;
  v0[7] = xmmword_1004E68A0;
  v0[8] = xmmword_1004E6830;
  v0[9] = xmmword_1004E6840;
  v0[10] = xmmword_1004E6890;
  v0[11] = xmmword_1004E68A0;
  v0[12] = xmmword_1004E6830;
  v0[13] = xmmword_1004E6840;
  return result;
}

id sub_1003DB574(float a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms;
  v5 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms);
  v6 = v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
  swift_beginAccess();
  *v6 = v5;
  *(v6 + 340) = *(v4 + 340);
  *(v6 + 352) = *(v4 + 352);
  *(v6 + 8) = *(v4 + 8);
  if ((*(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor + 4) & 1) == 0)
  {
    v7 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor);
    v8 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
    v9 = *(v8 + 32);
    if (*(v8 + 40) < v9)
    {
      v9 = *(v8 + 40);
    }

    v10 = v9;
    *(v8 + 24) = v7 * v10;
    sub_1003D9C20();
  }

  if ((((a1 + a1) / *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration)) + *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix)) <= 1.0)
  {
    v11 = ((a1 + a1) / *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration)) + *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix);
  }

  else
  {
    v11 = 1.0;
  }

  *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v11;
  v12 = *(v4 + 348);
  swift_beginAccess();
  *(v6 + 348) = v12;
  *(v6 + 344) = *(v4 + 344);
  *(v6 + 328) = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix);
  *&v13 = v11;
  result = [*(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeTimingFunction) _solveForInput:v13];
  *(v6 + 320) = v15;
  *(v6 + 332) = 1082130432;
  v16 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
  v17 = *(v16 + 32);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 <= -32769.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v17 >= 32768.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v6 + 336) = v17;
  v18 = *(v16 + 40);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 <= -32769.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 < 32768.0)
  {
    *(v6 + 338) = v18;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1003DB784()
{
  sub_1003DB7CC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

void sub_1003DB7CC(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

id sub_1003DB7F0(id result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1003DB7FC(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_1006126E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003DB864()
{

  return swift_deallocObject();
}

uint64_t sub_1003DB8A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003DB8BC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1003DB8FC()
{
  result = qword_100612708;
  if (!qword_100612708)
  {
    sub_100003B68(&qword_100612700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100612708);
  }

  return result;
}

uint64_t sub_1003DB960(unint64_t *a1, void (*a2)(uint64_t))
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

int *Uniforms.standard.unsafeMutableAddressor()
{
  if (qword_100611878 != -1)
  {
    swift_once();
  }

  return &static Uniforms.standard;
}

double sub_1003DBA20()
{
  v0 = MTLCreateSystemDefaultDevice();
  sub_1003DC484(v0, &v2);
  xmmword_1006195C0 = v2;
  unk_1006195D0 = v3[0];
  result = *(v3 + 9);
  *(&qword_1006195D8 + 1) = *(v3 + 9);
  return result;
}

void sub_1003DBA80()
{
  v0 = [objc_allocWithZone(MTLVertexDescriptor) init];
  v1 = [v0 attributes];
  v2 = [v1 objectAtIndexedSubscript:0];

  if (!v2)
  {
    goto LABEL_21;
  }

  [v2 setFormat:30];

  v3 = [v0 attributes];
  v4 = [v3 objectAtIndexedSubscript:0];

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v4 setOffset:0];

  v5 = [v0 attributes];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v6 setBufferIndex:0];

  v7 = [v0 attributes];
  v8 = [v7 objectAtIndexedSubscript:1];

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v8 setFormat:30];

  v9 = [v0 attributes];
  v10 = [v9 objectAtIndexedSubscript:1];

  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v10 setOffset:16];

  v11 = [v0 attributes];
  v12 = [v11 objectAtIndexedSubscript:1];

  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v12 setBufferIndex:0];

  v13 = [v0 attributes];
  v14 = [v13 objectAtIndexedSubscript:2];

  if (!v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v14 setFormat:30];

  v15 = [v0 attributes];
  v16 = [v15 objectAtIndexedSubscript:2];

  if (!v16)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = [v0 attributes];
  v18 = [v17 objectAtIndexedSubscript:1];

  if (!v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = [v18 offset];

  if (__OFADD__(v19, 16))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v16 setOffset:v19 + 16];

  v20 = [v0 attributes];
  v21 = [v20 objectAtIndexedSubscript:2];

  if (!v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v21 setBufferIndex:0];

  v22 = [v0 attributes];
  v23 = [v22 objectAtIndexedSubscript:3];

  if (!v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v23 setFormat:29];

  v24 = [v0 attributes];
  v25 = [v24 objectAtIndexedSubscript:3];

  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = [v0 attributes];
  v27 = [v26 objectAtIndexedSubscript:2];

  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = [v27 offset];

  if (__OFADD__(v28, 16))
  {
    goto LABEL_20;
  }

  [v25 setOffset:v28 + 16];

  v29 = [v0 attributes];
  v30 = [v29 objectAtIndexedSubscript:3];

  if (!v30)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v30 setBufferIndex:0];

  v31 = [v0 layouts];
  v32 = [v31 objectAtIndexedSubscript:0];

  if (v32)
  {
    [v32 setStride:64];

    return;
  }

LABEL_35:
  __break(1u);
}

double sub_1003DBFB8()
{
  result = -0.00781250557;
  xmmword_100619600 = xmmword_1004E68B0;
  qword_100619610 = 0x3F80000000000000;
  xmmword_100619620 = xmmword_1004E68B0;
  unk_100619630 = xmmword_1004E68B0;
  return result;
}

double sub_1003DBFE0()
{
  result = 0.00781250557;
  xmmword_100619640 = xmmword_1004E68C0;
  qword_100619650 = 0;
  xmmword_100619660 = xmmword_1004E68C0;
  unk_100619670 = xmmword_1004E68C0;
  return result;
}

double sub_1003DC000()
{
  result = 0.00781250185;
  xmmword_100619680 = xmmword_1004E68D0;
  qword_100619690 = 1065353216;
  xmmword_1006196A0 = xmmword_1004E68D0;
  unk_1006196B0 = xmmword_1004E68D0;
  return result;
}

double sub_1003DC028()
{
  result = -0.00781250185;
  xmmword_1006196C0 = xmmword_1004E68E0;
  __asm { FMOV            V1.2S, #1.0 }

  qword_1006196D0 = _D1;
  xmmword_1006196E0 = xmmword_1004E68E0;
  unk_1006196F0 = xmmword_1004E68E0;
  return result;
}

double sub_1003DC04C()
{
  sub_100003ABC(&qword_100612740);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50B0;
  if (qword_100611850 != -1)
  {
    v14 = v0;
    swift_once();
    v0 = v14;
  }

  v1 = qword_100619610;
  v2 = xmmword_100619620;
  v3 = unk_100619630;
  *(v0 + 32) = xmmword_100619600;
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  if (qword_100611858 != -1)
  {
    v15 = v0;
    swift_once();
    v0 = v15;
  }

  v4 = qword_100619650;
  v5 = xmmword_100619660;
  v6 = unk_100619670;
  *(v0 + 96) = xmmword_100619640;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  *(v0 + 144) = v6;
  if (qword_100611860 != -1)
  {
    v16 = v0;
    swift_once();
    v0 = v16;
  }

  v7 = qword_100619690;
  v8 = xmmword_1006196A0;
  v9 = unk_1006196B0;
  *(v0 + 160) = xmmword_100619680;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v9;
  if (qword_100611868 != -1)
  {
    v17 = v0;
    swift_once();
    v0 = v17;
  }

  result = *&xmmword_1006196C0;
  v11 = qword_1006196D0;
  v12 = xmmword_1006196E0;
  v13 = unk_1006196F0;
  *(v0 + 224) = xmmword_1006196C0;
  *(v0 + 240) = v11;
  *(v0 + 256) = v12;
  *(v0 + 272) = v13;
  qword_100619700 = v0;
  return result;
}

double sub_1003DC20C()
{
  if (qword_100611838 != -1)
  {
    swift_once();
  }

  static Uniforms.standard = 0;
  qword_100619718 = 0;
  xmmword_100619720 = xmmword_100619580;
  unk_100619730 = *algn_100619590;
  xmmword_100619740 = xmmword_1006195A0;
  unk_100619750 = unk_1006195B0;
  dword_1006197A4 = 0;
  dword_1006197F4 = 0;
  dword_100619844 = 0;
  xmmword_100619760 = 0u;
  unk_100619770 = 0u;
  xmmword_100619780 = 0u;
  unk_100619790 = 0u;
  word_1006197A0 = 0;
  word_1006197F0 = 0;
  xmmword_1006197D0 = 0u;
  unk_1006197E0 = 0u;
  xmmword_1006197B0 = 0u;
  unk_1006197C0 = 0u;
  xmmword_100619800 = 0u;
  unk_100619810 = 0u;
  xmmword_100619820 = 0u;
  unk_100619830 = 0u;
  word_100619840 = 0;
  result = 0.0;
  xmmword_100619850 = xmmword_1004E6840;
  qword_100619860 = 0x3F80000000000000;
  unk_100619868 = 0;
  qword_100619870 = 0;
  unk_100619878 = 0;
  return result;
}

void *static Uniforms.standard.getter@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_100611878 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &static Uniforms.standard, 0x170uLL);
}

__n128 sub_1003DC34C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

id sub_1003DC370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_1004BBE24();
  v9 = [a7 newFunctionWithName:v8];

  v10 = sub_1004BBE24();
  v11 = [a7 newFunctionWithName:v10];

  v12 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v13 = sub_1004BBE24();
  [v12 setLabel:v13];

  [v12 setVertexFunction:v9];
  [v12 setFragmentFunction:v11];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

void sub_1003DC484(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v4)
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    sub_1004BC984();
    sub_1003DC678();
    v13 = sub_1004BD144();
    sub_1004B7F84();
    swift_unknownObjectRelease();

    v2 = 0;
    v5 = 0;
    v6 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  if (qword_100611830 != -1)
  {
    swift_once();
  }

  v14 = 0;
  v6 = [v2 newDefaultLibraryWithBundle:qword_100619570 error:&v14];
  v7 = v14;
  if (!v6)
  {
    v12 = v7;
    sub_1004B69B4();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  v8 = objc_allocWithZone(MTKTextureLoader);
  swift_unknownObjectRetain();
  v9 = [v8 initWithDevice:v2];
  v10 = [v2 supportsFamily:1003];
  swift_unknownObjectRelease();
  v11 = 80;
LABEL_10:
  *a2 = v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v10;
}

unint64_t sub_1003DC678()
{
  result = qword_1006126B8;
  if (!qword_1006126B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006126B8);
  }

  return result;
}

uint64_t sub_1003DC6C4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1045220557;
  *(v0 + 80) = 0u;
  sub_100003ABC(&qword_100612928);
  v1 = sub_1004BC314();
  *(v1 + 16) = 4;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v0 + 96) = v1;
  *(v0 + 104) = &off_1005C7A00;
  return v0;
}

uint64_t sub_1003DC74C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1003DC80C();
    [v2 unregisterObserver:v3];

    v1 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

id sub_1003DC80C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_1003DC868();
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1003DC868()
{
  v0 = [objc_allocWithZone(MPCAudioSpectrumObserver) init];
  LODWORD(v1) = 20.0;
  LODWORD(v2) = 1133903872;
  [v0 addFrequencyBand:{v1, v2}];
  LODWORD(v3) = 1133903872;
  LODWORD(v4) = 1163575296;
  [v0 addFrequencyBand:{v3, v4}];
  LODWORD(v5) = 1186693120;
  LODWORD(v6) = 1163575296;
  [v0 addFrequencyBand:{v6, v5}];
  v7 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1003DD94C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000C81CC;
  v10[3] = &unk_1005CD078;
  v8 = _Block_copy(v10);

  [v0 setOnUpdate:v8];
  _Block_release(v8);
  return v0;
}

uint64_t sub_1003DC9C4(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1003DCAB0(a1);
  }

  return result;
}

uint64_t sub_1003DCA24(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003DD7B4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_1003DCAB0(void *a1)
{
  v2 = v1;
  v4 = sub_1004BA8F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BA924();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1003DCDBC();
  sub_1003DD7C8(v12);
  v26 = v13;

  [a1 powerLevel];
  v15 = log10f(v14) * 20.0;
  v16.i64[0] = vdivq_f32(vmulq_n_f32(v26, v15), vdupq_n_s32(0x42F00000u)).u64[0];
  v16.f32[2] = vmuls_lane_f32(v15, v26, 2) / 120.0;
  v16.f32[3] = v15;
  __asm { FMOV            V1.4S, #1.0 }

  v26 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q1), *(v2 + 64));
  sub_1003DD814();
  v22 = sub_1004BCB44();
  v23 = swift_allocObject();
  v23[1].i64[0] = v2;
  v23[2] = v26;
  aBlock[4] = sub_1003DD898;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005CD028;
  v24 = _Block_copy(aBlock);

  sub_1004BA914();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003DD8BC();
  sub_100003ABC(&qword_100612700);
  sub_1003DB8FC();
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

id *sub_1003DCDBC()
{
  result = [v0 numberOfBands];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!result)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      [v0 averagePowerOfFrequencyBandAtIndex:v3 frequencyBand:0];
      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1003DD5AC(0, v4[2] + 1, 1, v4);
      }

      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        v4 = sub_1003DD5AC((v7 > 1), (v8 + 1), 1, v4);
      }

      v3 = (v3 + 1);
      v4[2] = v8 + 1;
      *(v4 + v8 + 8) = v6;
    }

    while (v2 != v3);
    return v4;
  }

  return result;
}

uint64_t sub_1003DCEC4(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  sub_1003DCA24(0);
  v3 = *(a1 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 96) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1003DD6B0(0, v3[2] + 1, 1, v3);
    *(a1 + 96) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1003DD6B0((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = (v6 + 1);
  *&v3[2 * v6 + 4] = a2;
  *(a1 + 96) = v3;
  return swift_endAccess();
}

size_t sub_1003DCF9C(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003ABC(&qword_100611A88);
  v10 = *(sub_100003ABC(&qword_100611A80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(sub_100003ABC(&qword_100611A80) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id *sub_1003DD18C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&unk_100611C10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = ((v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

id *sub_1003DD288(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_100612740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 6));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

id *sub_1003DD38C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_100612918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

id *sub_1003DD490(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_100612920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 40));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

id *sub_1003DD5AC(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_100612910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 2));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

id *sub_1003DD6B0(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_100612908);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1003DD7C8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_1003DD814()
{
  result = qword_1006126F0;
  if (!qword_1006126F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006126F0);
  }

  return result;
}

uint64_t sub_1003DD860()
{

  return swift_deallocObject();
}

uint64_t sub_1003DD8A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1003DD8BC()
{
  result = qword_1006126F8;
  if (!qword_1006126F8)
  {
    sub_1004BA8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006126F8);
  }

  return result;
}

uint64_t sub_1003DD914()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1003DD95C@<X0>(char a1@<W0>, id **a2@<X8>)
{
  v3 = 5;
  if (a1)
  {
    v3 = 8;
  }

  v101 = v3;
  if (a1)
  {
    v4 = &off_1005CAE40;
  }

  else
  {
    v4 = &off_1005CC670;
  }

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_81;
  }

  v7 = sub_1000DCF8C(v5);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_79;
  }

  if (v7 < v4[2])
  {
    v92 = a2;
    if (a1)
    {
      v8 = &off_1005CAE40;
    }

    else
    {
      v8 = &off_1005CC670;
    }

    v9 = &v8[2 * v7];
    v11 = v9[4];
    v10 = v9[5];
    swift_bridgeObjectRetain_n();
    v93 = v10;

    if (v11[2])
    {
      v12 = 0;
      v13 = 0;
      v14 = v101;
      v15 = 0.0;
      v16 = 0.0 / v101;
      v100 = v101 + 1;
      v17 = v11 + 6;
      v94 = v11 + 4;
      v18 = _swiftEmptyArrayStorage;
      __asm { FMOV            V2.2D, #-1.0 }

      v96 = _Q2;
      v98 = v11;
      while (2)
      {
        v102 = *&v94[2 * v12];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1003DD490(0, v18[2] + 1, 1, v18);
        }

        v25 = v18[2];
        v24 = v18[3];
        v26 = (v25 + 1);
        v27 = v101;
        v28 = v96;
        v29 = v98;
        if (v25 >= v24 >> 1)
        {
          v40 = sub_1003DD490((v24 > 1), v25 + 1, 1, v18);
          v29 = v98;
          v28 = v96;
          v27 = v101;
          v18 = v40;
        }

        v30 = 0;
        v31 = v15 / v14;
        v18[2] = v26;
        v32 = 5 * v25;
        v33 = &v18[5 * v25];
        *(v33 + 4) = v16;
        *(v33 + 5) = v31;
        *(v33 + 3) = vaddq_f64(vaddq_f64(v102, v102), v28);
        v33[8] = 0x3FE0000000000000;
        do
        {
          v34 = v30 + 1;
          if (v30 + 1 + v12 >= v29[2])
          {
            __break(1u);
LABEL_40:
            swift_bridgeObjectRelease_n();
            if (!v93[2])
            {
              goto LABEL_76;
            }

            v53 = 0;
            v54 = 0;
            v55 = v93 + 6;
            v13 = _swiftEmptyArrayStorage;
            v56 = 0.0;
LABEL_42:
            v105 = *&v93[2 * v53 + 4];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1003DD490(0, v13[2] + 1, 1, v13);
            }

            v57 = v96;
            v59 = v13[2];
            v58 = v13[3];
            v12 = v59 + 1;
            v27 = v101;
            v60 = v93;
            if (v59 >= v58 >> 1)
            {
              v71 = sub_1003DD490((v58 > 1), v59 + 1, 1, v13);
              v57 = v96;
              v27 = v101;
              v13 = v71;
              v60 = v93;
            }

            v61 = 0;
            v62 = v56 / v14;
            v13[2] = v12;
            v63 = 5 * v59;
            v64 = &v13[5 * v59];
            *(v64 + 4) = v16;
            *(v64 + 5) = v62;
            *(v64 + 3) = vaddq_f64(vaddq_f64(v105, v105), v57);
            v64[8] = 0x3FE0000000000000;
            while (1)
            {
              v65 = v61 + 1;
              if (v61 + 1 + v53 >= v60[2])
              {
                break;
              }

              v66 = *&v55[2 * v61];
              v67 = v13[3];
              v68 = v59 + v61;
              v12 = v68 + 2;
              if (v65 + v59 >= v67 >> 1)
              {
                v106 = v66;
                v70 = sub_1003DD490((v67 > 1), v68 + 2, 1, v13);
                v66 = v106;
                v57 = v96;
                v27 = v101;
                v13 = v70;
                v60 = v93;
              }

              v13[2] = v12;
              v69 = &v13[v63];
              *(v69 + 9) = v65 / v14;
              *(v69 + 10) = v62;
              *(v69 + 11) = vaddq_f64(vaddq_f64(v66, v66), v57);
              v69[13] = 0x3FE0000000000000;
              v63 += 5;
              v61 = v65;
              if (v27 == v65)
              {
                if (v54 == v27)
                {
                  v72 = 0;
                  v73 = 0;
                  v12 = _swiftEmptyArrayStorage;
                  v74 = v27;
                  while (v73 != v27)
                  {
                    v99 = v74;
                    v75 = v73;
                    v107 = v72;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v12 = sub_1003DD38C(0, *(v12 + 16) + 1, 1, v12);
                    }

                    v76 = v99;
                    v77 = 0;
                    v73 = (v75 + 1);
                    v27 = v101;
                    v78 = v107;
                    v79 = v107 - 0xFFFFFFFFLL;
                    do
                    {
                      if (!(v77 + v79))
                      {
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

                      v80 = v77 + v76;
                      if ((v77 + v76) > 0xFFFFFFFDLL)
                      {
                        goto LABEL_73;
                      }

                      v81 = v78 + v77;
                      v82 = v77 + v78 + 1;
                      v83 = v80 + 2;
                      if (((v82 | (v77 + v78) | (v80 + 2) | (v80 + 1)) & 0x8000000000000000) != 0)
                      {
                        goto LABEL_74;
                      }

                      v85 = *(v12 + 16);
                      v84 = *(v12 + 24);
                      if (v85 >= v84 >> 1)
                      {
                        v87 = v12;
                        v88 = v73;
                        v97 = v79;
                        v89 = sub_1003DD38C((v84 > 1), v85 + 1, 1, v87);
                        v79 = v97;
                        v76 = v99;
                        v73 = v88;
                        v27 = v101;
                        v78 = v107;
                        v12 = v89;
                      }

                      *(v12 + 16) = v85 + 1;
                      v86 = (v12 + 32 * v85);
                      *(v86 + 8) = v81;
                      *(v86 + 9) = v82;
                      *(v86 + 10) = v83;
                      *(v86 + 11) = v76 + v77 + 1;
                      v77 = (v77 + 1);
                      v86[6] = 0;
                      v86[7] = 0;
                    }

                    while (v27 != v77);
                    v72 = v78 + v100;
                    v74 = (v76 + v100);
                    if (v73 == v27)
                    {
                      goto LABEL_71;
                    }
                  }

                  goto LABEL_78;
                }

                v54 = (v54 + 1);
                v56 = v54;
                v53 += v100;
                v55 += 2 * v101 + 2;
                if (v53 < v60[2])
                {
                  goto LABEL_42;
                }

                goto LABEL_76;
              }
            }

LABEL_70:
            __break(1u);
LABEL_71:
            v90 = v27;

            *v92 = v18;
            v92[1] = v26;
            v92[2] = v90;
            v92[3] = v90;
            v92[4] = v13;
            v92[5] = v12;
            v92[6] = v90;
            v92[7] = v90;
            return result;
          }

          v35 = *&v17[2 * v30];
          v36 = v18[3];
          v37 = v25 + v30;
          v26 = (v37 + 2);
          if (v34 + v25 >= v36 >> 1)
          {
            v103 = v35;
            v39 = sub_1003DD490((v36 > 1), v37 + 2, 1, v18);
            v35 = v103;
            v29 = v98;
            v28 = v96;
            v27 = v101;
            v18 = v39;
          }

          v18[2] = v26;
          v38 = &v18[v32];
          *(v38 + 9) = v34 / v14;
          *(v38 + 10) = v31;
          *(v38 + 11) = vaddq_f64(vaddq_f64(v35, v35), v28);
          v38[13] = 0x3FE0000000000000;
          v32 += 5;
          v30 = v34;
        }

        while (v27 != v34);
        if (v13 == v27)
        {
          v41 = 0;
          v42 = 0;
          v26 = _swiftEmptyArrayStorage;
          v43 = v27;
          while (v42 != v27)
          {
            v104 = v41;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_1003DD38C(0, v26[2] + 1, 1, v26);
            }

            v44 = 0;
            v95 = (v42 + 1);
            v27 = v101;
            v45 = v104;
            do
            {
              if (!(v44 + v104 - 0xFFFFFFFFLL))
              {
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

              v46 = v44 + v43;
              if ((v44 + v43) > 0xFFFFFFFDLL)
              {
                goto LABEL_68;
              }

              v13 = (v44 + v45);
              v47 = v44 + v45 + 1;
              v48 = v46 + 2;
              if (((v47 | (v44 + v45) | (v46 + 2) | (v46 + 1)) & 0x8000000000000000) != 0)
              {
                goto LABEL_69;
              }

              v50 = v26[2];
              v49 = v26[3];
              v12 = v50 + 1;
              if (v50 >= v49 >> 1)
              {
                v52 = sub_1003DD38C((v49 > 1), v50 + 1, 1, v26);
                v27 = v101;
                v45 = v104;
                v26 = v52;
              }

              v26[2] = v12;
              v51 = &v26[4 * v50];
              *(v51 + 8) = v13;
              *(v51 + 9) = v47;
              *(v51 + 10) = v48;
              *(v51 + 11) = v43 + v44 + 1;
              v44 = (v44 + 1);
              v51[6] = 0;
              v51[7] = 0;
            }

            while (v27 != v44);
            v41 = v45 + v100;
            v43 = (v43 + v100);
            v42 = v95;
            if (v95 == v27)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_77;
        }

        v13 = (v13 + 1);
        v15 = v13;
        v12 += v100;
        v17 += 2 * v101 + 2;
        if (v12 < v29[2])
        {
          continue;
        }

        break;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

  __break(1u);
LABEL_81:
  result = sub_1004BD624();
  __break(1u);
  return result;
}

void sub_1003DE0C8(double *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration);
  swift_beginAccess();
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  v13 = v3[11];
  if (*v3 != *a1)
  {
    if (!*(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image))
    {
      v15.value.super.isa = 0;
      v15.is_nil = 1;
      ShaderFallback.setImage(_:animated:)(v15, v4);
      v6 = v3[3];
      v5 = v3[4];
      v7 = v3[5];
      v8 = v3[6];
      v9 = v3[7];
      v10 = v3[8];
      v11 = v3[9];
      v12 = v3[10];
      v13 = v3[11];
    }

LABEL_15:
    v14 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator);
    *(v14 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = v3[1];
    *(v14 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = *(v14 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime);
    v14[57] = v6;
    v14[58] = v10;
    v14[59] = v11;
    v14[60] = v12;
    v14[61] = v13;
    v14[53] = v7;
    v14[54] = v8;
    v14[55] = v9;
    v14[56] = v5;
    return;
  }

  if (v3[1] != a1[1] || v3[2] != a1[2] || v6 != a1[3] || v5 != a1[4] || v7 != a1[5] || v8 != a1[6] || v9 != a1[7] || v10 != a1[8] || v11 != a1[9] || v12 != a1[10] || v13 != a1[11])
  {
    goto LABEL_15;
  }
}

__n128 ShaderFallback.configuration.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
  swift_beginAccess();
  v4 = *(v3 + 48);
  a1[2] = *(v3 + 32);
  a1[3] = v4;
  v5 = *(v3 + 80);
  a1[4] = *(v3 + 64);
  a1[5] = v5;
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v7;
  return result;
}

void ShaderFallback.configuration.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration);
  swift_beginAccess();
  v4 = v3[3];
  v10[2] = v3[2];
  v10[3] = v4;
  v5 = v3[5];
  v10[4] = v3[4];
  v10[5] = v5;
  v6 = v3[1];
  v10[0] = *v3;
  v10[1] = v6;
  v7 = a1[3];
  v3[2] = a1[2];
  v3[3] = v7;
  v8 = a1[5];
  v3[4] = a1[4];
  v3[5] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  sub_1003DE0C8(v10);
}

void (*ShaderFallback.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x148uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
  *(v3 + 312) = v1;
  *(v3 + 320) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v4[12] = *v6;
  v4[13] = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[5];
  v4[16] = v6[4];
  v4[17] = v10;
  v4[14] = v8;
  v4[15] = v9;
  return sub_1003DE3D4;
}

void sub_1003DE3D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 312) + *(*a1 + 320));
  if (a2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 96;
  }

  v5 = v3[1];
  *v4 = *v3;
  *(v4 + 16) = v5;
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  *(v4 + 64) = v3[4];
  *(v4 + 80) = v6;
  *(v4 + 32) = v8;
  *(v4 + 48) = v7;
  v9 = v2[13];
  *v3 = v2[12];
  v3[1] = v9;
  v10 = v2[17];
  v12 = v2[14];
  v11 = v2[15];
  v3[4] = v2[16];
  v3[5] = v10;
  v3[2] = v12;
  v3[3] = v11;
  sub_1003DE0C8(v4);

  free(v2);
}

void *ShaderFallback.image.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  v2 = v1;
  return v1;
}

void ShaderFallback.image.setter(UIImage_optional a1, Swift::Bool a2)
{
  isa = a1.value.super.isa;
  a1.is_nil = 0;
  ShaderFallback.setImage(_:animated:)(a1, a2);
}

void (*ShaderFallback.image.modify(void *a1))(Class *a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1003DE510;
}

void sub_1003DE510(Class *a1, char a2)
{
  v2 = *a1;
  v6 = *a1;
  if (a2)
  {
    v3 = v6;
    v8.value.super.isa = v6;
    v8.is_nil = 0;
    ShaderFallback.setImage(_:animated:)(v8, v4);

    v5 = v3;
  }

  else
  {
    v9.value.super.isa = *a1;
    v9.is_nil = 0;
    ShaderFallback.setImage(_:animated:)(v9, v2);
    v5 = v6;
  }
}

Swift::Void __swiftcall ShaderFallback.setImage(_:animated:)(UIImage_optional _, Swift::Bool animated)
{
  v3 = v2;
  isa = _.value.super.isa;
  if (!_.is_nil || (*(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || (*(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v16 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
    swift_beginAccess();
    v5 = *(v3 + v16) ^ 1;
  }

  v6 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image) = isa;
  v7 = isa;

  if (!isa)
  {
    v8 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
    swift_beginAccess();
    isa = sub_1003E1C08(*(v3 + v8));
  }

  v9 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer);
  if (v9)
  {
    v10 = v7;
    v11 = v9;
    v12 = [isa CGImage];
    sub_1003D5878(v12, v5 & 1);

    if (v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v7;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v14 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
  if (v14)
  {
    v15 = v14;
    [v15 setNeedsDisplay];
  }

LABEL_13:
}

uint64_t ShaderFallback.isPaused.getter()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

id ShaderFallback.isPaused.setter(char a1)
{
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1003E0A8C();
}

id (*ShaderFallback.isPaused.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003DE7D8;
}

id sub_1003DE7D8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1003E0A8C();
  }

  return result;
}

char *ShaderFallback.init(configuration:)(_OWORD *a1)
{
  swift_getObjectType();
  v3 = sub_100003ABC(&qword_100612968);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer] = 0;
  v6 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator;
  type metadata accessor for ShaderFallback.Calculator();
  swift_allocObject();
  *&v1[v6] = sub_1003E1138();
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel] = 0;
  v7 = &v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration];
  v8 = a1[3];
  v7[2] = a1[2];
  v7[3] = v8;
  v9 = a1[5];
  v7[4] = a1[4];
  v7[5] = v9;
  v10 = a1[1];
  *v7 = *a1;
  v7[1] = v10;
  v11 = type metadata accessor for ShaderFallback();
  v32.receiver = v1;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003E071C();
  v13 = [v12 traitCollection];
  v14 = [v13 accessibilityContrast];

  *(v12 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) = v14 == 1;
  sub_100003ABC(&qword_1006129A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1004C50A0;
  *(v15 + 32) = sub_1004B83C4();
  *(v15 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_1004BCF24();
  swift_unknownObjectRelease();

  v16 = objc_opt_self();
  v17 = [v16 processInfo];
  v18 = [v17 isLowPowerModeEnabled];

  *(v12 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled) = v18;
  v19 = sub_1004BC4B4();
  v20 = *(*(v19 - 8) + 56);
  v20(v5, 1, 1, v19);
  sub_1004BC474();
  v21 = v12;
  v22 = sub_1004BC464();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;
  *&v21[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver] = sub_1003DF464(0, 0, v5, &unk_1004E73D8, v23);

  v24 = [v16 processInfo];
  v25 = [v24 thermalState];

  *&v21[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel] = v25;
  v20(v5, 1, 1, v19);
  v26 = v21;
  v27 = sub_1004BC464();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v26;
  *&v26[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver] = sub_1003DF464(0, 0, v5, &unk_1004E73E8, v28);

  v26[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v20(v5, 1, 1, v19);
  v29 = sub_1004BC464();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = &protocol witness table for MainActor;
  v30[4] = v26;
  *&v26[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver] = sub_1003DF464(0, 0, v5, &unk_1004E73F8, v30);

  return v26;
}

uint64_t sub_1003DED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_100003ABC(&qword_100612FC0);
  v4[4] = swift_task_alloc();
  v5 = sub_1004BCC44();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1004BC474();
  v4[9] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_1003DEE4C, v7, v6);
}

uint64_t sub_1003DEE4C()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1004BCC64();

  sub_1004BCC34();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer;
  v0[12] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled;
  v0[13] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel;
  v0[14] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = v3;
  v0[16] = sub_1004BC464();
  v4 = sub_1003E22F8();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1003DEF80;
  v6 = v0[4];
  v7 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_1003DEF80()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003DF3D8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003DF118;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1003DF118()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1003DF17C, v1, v2);
}

uint64_t sub_1003DF17C()
{
  v1 = v0[4];
  v2 = sub_1004B65F4();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[12];
    v6 = v0[3];
    v7 = [objc_opt_self() processInfo];
    v8 = [v7 isLowPowerModeEnabled];

    v9 = *(v6 + v5);
    *(v6 + v5) = v8;
    if (v8 != v9)
    {
      v10 = v0[3];
      if (*(v10 + v0[13]))
      {
        v11 = *(v10 + v0[14]);
        if (v11)
        {
          v12 = *(v10 + v0[15]);
          v13 = 60;
          if (v8)
          {
            v13 = 30;
          }

          v14 = 30;
          if (v8)
          {
            v14 = 20;
          }

          v15 = 60;
          if (v8)
          {
            v15 = 30;
          }

          v16 = 20;
          if (v8)
          {
            v16 = 15;
          }

          if (v12 == 3)
          {
            v15 = v16;
          }

          v17 = v12 >= 2;
          if (v12 == 2)
          {
            v18 = v14;
          }

          else
          {
            v18 = v15;
          }

          if (v17)
          {
            v19 = v18;
          }

          else
          {
            v19 = v13;
          }

          [v11 setPreferredFramesPerSecond:v19];
        }
      }
    }

    sub_100007214(v0[4], &qword_100612FC0);
    v0[16] = sub_1004BC464();
    v20 = sub_1003E22F8();
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = sub_1003DEF80;
    v22 = v0[4];
    v23 = v0[5];

    return dispatch thunk of AsyncIteratorProtocol.next()(v22, v23, v20);
  }
}

uint64_t sub_1003DF3D8()
{
  *(v0 + 16) = *(v0 + 144);
  sub_100003ABC(&qword_1006126C0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1003DF464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003ABC(&qword_100612968);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1003E2350(a3, v25 - v10);
  v12 = sub_1004BC4B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007214(v11, &qword_100612968);
  }

  else
  {
    sub_1004BC4A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004BC3E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004BBF54() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100007214(a3, &qword_100612968);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007214(a3, &qword_100612968);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1003DF754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_100003ABC(&qword_100612FC0);
  v4[4] = swift_task_alloc();
  v5 = sub_1004BCC44();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1004BC474();
  v4[9] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_1003DF884, v7, v6);
}

uint64_t sub_1003DF884()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1004BCC64();

  sub_1004BCC34();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer;
  v0[12] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel;
  v0[13] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled;
  v0[14] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = v3;
  v0[16] = sub_1004BC464();
  v4 = sub_1003E22F8();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1003DF9B8;
  v6 = v0[4];
  v7 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_1003DF9B8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003E2574;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003DFB50;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1003DFB50()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1003DFBB4, v1, v2);
}

uint64_t sub_1003DFBB4()
{
  v1 = v0[4];
  v2 = sub_1004B65F4();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  v5 = v0[12];
  v6 = v0[3];
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 thermalState];

  v9 = *(v6 + v5);
  *(v6 + v5) = v8;
  if (v8 != v9)
  {
    v10 = v0[3];
    if (*(v10 + v0[13]))
    {
      v11 = *(v10 + v0[14]);
      if (v11)
      {
        if (v8 < 2)
        {
          goto LABEL_12;
        }

        if (v8 == 2)
        {
          v12 = *(v10 + v0[15]) == 0;
          v13 = 30;
          v14 = 20;
          goto LABEL_14;
        }

        if (v8 == 3)
        {
          v12 = *(v10 + v0[15]) == 0;
          v13 = 20;
          v14 = 15;
        }

        else
        {
LABEL_12:
          v12 = *(v10 + v0[15]) == 0;
          v13 = 60;
          v14 = 30;
        }

LABEL_14:
        if (v12)
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        [v11 setPreferredFramesPerSecond:v15];
      }
    }
  }

  sub_100007214(v0[4], &qword_100612FC0);
  v0[16] = sub_1004BC464();
  v16 = sub_1003E22F8();
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_1003DF9B8;
  v18 = v0[4];
  v19 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v18, v19, v16);
}

uint64_t sub_1003DFE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_100003ABC(&qword_100612FC0);
  v4[7] = swift_task_alloc();
  v5 = sub_1004BCC44();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1004BC474();
  v4[12] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_1003DFF40, v7, v6);
}

uint64_t sub_1003DFF40()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1004BCC64();

  sub_1004BCC34();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled;
  v0[16] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  v0[17] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled;
  v0[18] = v3;
  swift_beginAccess();
  v0[19] = sub_1004BC464();
  v4 = sub_1003E22F8();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1003E008C;
  v6 = v0[7];
  v7 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_1003E008C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003E04B0;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1003E0224;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1003E0224()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1003E0288, v1, v2);
}

uint64_t sub_1003E0288()
{
  v1 = v0[7];
  v2 = sub_1004B65F4();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[15];
    v6 = v0[6];
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v8 = *(v6 + v5);
    *(v6 + v5) = IsReduceMotionEnabled;
    if (IsReduceMotionEnabled != v8)
    {
      v9 = IsReduceMotionEnabled;
      v10 = v0[16];
      v11 = v0[6];
      v12 = *(v11 + v10);
      if (v12)
      {
        v13 = ((v9 | *(v11 + v0[17])) & 1) != 0 ? 1 : *(v11 + v0[18]);
        [v12 setEnableSetNeedsDisplay:v13];
        v14 = *(v11 + v10);
        if (v14)
        {
          v15 = v0[6];
          if ((*(v15 + v0[17]) & 1) != 0 || *(v15 + v0[15]) == 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = *(v15 + v0[18]);
          }

          [v14 setPaused:v16];
        }
      }
    }

    sub_100007214(v0[7], &qword_100612FC0);
    v0[19] = sub_1004BC464();
    v17 = sub_1003E22F8();
    v18 = swift_task_alloc();
    v0[20] = v18;
    *v18 = v0;
    v18[1] = sub_1003E008C;
    v19 = v0[7];
    v20 = v0[8];

    return dispatch thunk of AsyncIteratorProtocol.next()(v19, v20, v17);
  }
}

uint64_t sub_1003E04B0()
{
  *(v0 + 40) = *(v0 + 168);
  sub_100003ABC(&qword_1006126C0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id ShaderFallback.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver])
  {

    sub_1004BC524();
  }

  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver])
  {

    sub_1004BC524();
  }

  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver])
  {

    sub_1004BC524();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShaderFallback();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003E071C()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  if (!*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView])
  {
    v2 = v0;
    if (qword_100611840 != -1)
    {
      swift_once();
    }

    v3 = xmmword_1006195C0;
    if (xmmword_1006195C0)
    {
      v4 = byte_1006195E8;
      v5 = qword_1006195D8;
      v25 = xmmword_1006195C0;
      v26 = unk_1006195D0;
      v27 = qword_1006195D8;
      v28 = unk_1006195E0;
      v29 = byte_1006195E8 & 1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6 = v5;
      [v2 bounds];
      v11 = [objc_allocWithZone(MTKView) initWithFrame:v3 device:{v7, v8, v9, v10}];
      [v11 setAutoresizingMask:18];
      v12 = [v11 layer];

      [v12 setAllowsDisplayCompositing:0];
      if ((v4 & 1) != 0 && *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor() == 1)
      {
        [v11 setColorPixelFormat:552];
      }

      v13 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v14 = v6;
      v15 = sub_1003D5DE0(&v25);
      *&v15[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_observer + 8] = &off_1005CD118;
      swift_unknownObjectWeakAssign();
      sub_1003D5D24(0, 0.5, 0.5, 0.5);
      sub_1003D5804([v11 colorPixelFormat]);
      [v11 setDelegate:v2];
      v31.value.super.isa = 0;
      v31.is_nil = 0;
      ShaderFallback.setImage(_:animated:)(v31, v16);
      v17 = [v11 delegate];
      if (v17)
      {
        v18 = v17;
        [v2 frame];
        [v18 mtkView:v11 drawableSizeWillChange:{v19, v20}];
        swift_unknownObjectRelease();
      }

      [v11 setPreferredFramesPerSecond:60];
      v21 = *&v2[v1];
      *&v2[v1] = v11;
      v22 = v11;

      v23 = *&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer];
      *&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer] = v15;
      v24 = v15;

      [v2 addSubview:v22];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

id sub_1003E0A8C()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  result = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled))
    {
      v3 = 1;
    }

    else
    {
      v4 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
      v5 = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
      swift_beginAccess();
      result = v5;
      v3 = *(v0 + v4);
    }

    [result setEnableSetNeedsDisplay:v3];
    result = *(v0 + v1);
    if (result)
    {
      if ((*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) == 1)
      {
        v6 = 1;
      }

      else
      {
        v7 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
        v8 = *(v0 + v1);
        swift_beginAccess();
        result = v8;
        v6 = *(v0 + v7);
      }

      return [result setPaused:v6];
    }
  }

  return result;
}

Swift::Void __swiftcall ShaderFallback.draw(in:)(MTKView in)
{
  v2 = v1;
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator);
  sub_1004B6CA4();
  sub_1003E12C0(v7);
  (*(v5 + 8))(v7, v4);
  v9 = *(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer);
  if (v9)
  {
    v10 = *&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_spectrumAnalysis];
    v11 = v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
    swift_beginAccess();
    v12 = *(v11 + 16);
    *(v10 + 64) = v12;
    *&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix] = *(v8 + 344);
    memmove(&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms], (v8 + 16), 0x170uLL);
    v13 = &v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor];
    *v13 = *(v8 + 400) / 786.0;
    *(v13 + 4) = 0;
  }

  [v9 drawInMTKView:in.super.super.super.isa];
}

void __swiftcall ShaderFallback.Configuration.init(fallbackImage:transitionSpeed:intensity:blur:pinchMix:speed:ySpeed:xSpeed:bassAmount:saturation:whiteScrim:blackScrim:)(ShaderFallbackKit::ShaderFallback::Configuration *__return_ptr retstr, ShaderFallbackKit::ShaderFallback::Configuration::FallbackImage fallbackImage, Swift::Double transitionSpeed, Swift::Double intensity, Swift::Double blur, Swift::Double pinchMix, Swift::Double speed, Swift::Double ySpeed, Swift::Double xSpeed, Swift::Double bassAmount, Swift::Double saturation, Swift::Double whiteScrim, Swift::Double blackScrim)
{
  retstr->fallbackImage = fallbackImage & 1;
  retstr->transitionSpeed = transitionSpeed;
  retstr->intensity = intensity;
  retstr->blur = blur;
  retstr->pinchMix = pinchMix;
  retstr->speed = speed;
  retstr->ySpeed = ySpeed;
  retstr->xSpeed = xSpeed;
  retstr->bassAmount = bassAmount;
  *&retstr->saturation = *&saturation;
  retstr->blackScrim = blackScrim;
}

double ShaderFallback.Configuration.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v13 = v2[2];
  v14 = v4;
  v5 = v2[5];
  v15 = v2[4];
  v16 = v5;
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  a1(&v11);
  v7 = v14;
  a2[2] = v13;
  a2[3] = v7;
  v8 = v16;
  a2[4] = v15;
  a2[5] = v8;
  result = *&v11;
  v10 = v12;
  *a2 = v11;
  a2[1] = v10;
  return result;
}

double sub_1003E0EC4()
{
  LOBYTE(static ShaderFallback.Configuration.zero) = 0;
  result = 0.0;
  *(&static ShaderFallback.Configuration.zero + 8) = 0u;
  *&algn_100619890[8] = 0u;
  *(&xmmword_1006198A0 + 8) = 0u;
  unk_1006198B8 = 0u;
  *(&xmmword_1006198C0 + 8) = 0u;
  qword_1006198D8 = 0;
  return result;
}

__int128 *ShaderFallback.Configuration.zero.unsafeMutableAddressor()
{
  if (qword_100611880 != -1)
  {
    swift_once();
  }

  return &static ShaderFallback.Configuration.zero;
}

double static ShaderFallback.Configuration.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_100611880 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1006198B0;
  a1[2] = xmmword_1006198A0;
  a1[3] = v1;
  v2 = unk_1006198D0;
  a1[4] = xmmword_1006198C0;
  a1[5] = v2;
  result = *&static ShaderFallback.Configuration.zero;
  v4 = *algn_100619890;
  *a1 = static ShaderFallback.Configuration.zero;
  a1[1] = v4;
  return result;
}

double sub_1003E0FB8()
{
  LOBYTE(static ShaderFallback.Configuration.default) = 0;
  *(&static ShaderFallback.Configuration.default + 8) = xmmword_1004E68F0;
  *&algn_1006198F0[8] = xmmword_1004E6900;
  *(&xmmword_100619900 + 8) = xmmword_1004E6910;
  unk_100619918 = xmmword_1004E6920;
  result = 2.0;
  *(&xmmword_100619920 + 8) = xmmword_1004E6930;
  qword_100619938 = 0x3FD6666666666666;
  return result;
}

__int128 *ShaderFallback.Configuration.default.unsafeMutableAddressor()
{
  if (qword_100611888 != -1)
  {
    swift_once();
  }

  return &static ShaderFallback.Configuration.default;
}

double static ShaderFallback.Configuration.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_100611888 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_100619910;
  a1[2] = xmmword_100619900;
  a1[3] = v1;
  v2 = unk_100619930;
  a1[4] = xmmword_100619920;
  a1[5] = v2;
  result = *&static ShaderFallback.Configuration.default;
  v4 = *algn_1006198F0;
  *a1 = static ShaderFallback.Configuration.default;
  a1[1] = v4;
  return result;
}

BOOL sub_1003E10DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s17ShaderFallbackKit0aB0C13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v10);
}

uint64_t sub_1003E1138()
{
  if (qword_100611878 != -1)
  {
    swift_once();
  }

  memmove((v0 + 16), &static Uniforms.standard, 0x170uLL);
  *(v0 + 384) = xmmword_1004E6940;
  *(v0 + 400) = xmmword_1004E6950;
  *(v0 + 416) = 1028443341;
  *(v0 + 424) = 0x3F50624DD2F1A9FCLL;
  *(v0 + 432) = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  *(v0 + 448) = xmmword_1004E6960;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 464) = _Q0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 0;
  sub_1004B6CA4();
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForXPan) = 0;
  sub_1004B6CA4();
  sub_1004B6CA4();
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBlur) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoWarp) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = 0x4024000000000000;
  return v0;
}

void sub_1003E12C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v27 = *(v5 + 16);
  v27(&v26 - v10, v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_startTime, v4, v9);
  sub_1004B6C04();
  v13 = v12;
  v14 = v5;
  v26 = v5;
  v15 = *(v5 + 8);
  v15(v11, v4);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) = v13;
  v16 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_currentTime;
  swift_beginAccess();
  (*(v14 + 24))(v2 + v16, a1, v4);
  swift_endAccess();
  v17 = v27;
  (v27)(v11, v2 + v16, v4);
  v18 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lastUpdateTime;
  swift_beginAccess();
  v17(v7, v2 + v18, v4);
  sub_1004B6C04();
  v20 = v19;
  v15(v7, v4);
  v15(v11, v4);
  v21 = v20 * v2[96];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTime) = v21;
  v22 = v20 * v2[97];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForPan) = v22;
  v23 = v20 * v2[98];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForXPan) = v23;
  v24 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed;
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed) = v21 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan) = v22 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan) = v23 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan);
  (v27)(v11, v2 + v16, v4);
  swift_beginAccess();
  (*(v26 + 40))(v2 + v18, v11, v4);
  swift_endAccess();
  v25 = *(v2 + v24);
  v2[4] = v25;
  sub_1003E1624();
  sub_1003E17E0();
}

double sub_1003E15D4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = *(a1 + 8);
  *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime);
  v3 = *(a1 + 24);
  result = *(a1 + 32);
  *(v1 + 448) = result;
  *(v1 + 456) = v3;
  v4 = *(a1 + 80);
  *(v1 + 464) = *(a1 + 64);
  *(v1 + 480) = v4;
  *(v1 + 424) = *(a1 + 40);
  *(v1 + 440) = *(a1 + 56);
  return result;
}

long double sub_1003E1624()
{
  v1 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed);
  *v2.i64 = sin(v1 * 0.1);
  v3.i64[0] = 1.0;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v15 = vnegq_f64(v4);
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBlur) = (fabs(*v2.i64) * *vbslq_s8(v15, v3, v2).i64 + 1.0) * 0.5 * 0.2 + 0.9;
  *v5.i64 = sin(v1 * 0.25);
  v6.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoWarp) = (fabs(*v5.i64) * *vbslq_s8(v15, v6, v5).i64 + 1.0) * 0.5 * 0.35 + 0.75;
  v7 = *(v0 + 404);
  *v8.i64 = sin(v1 * 0.5);
  v9.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass) = (fabs(*v8.i64) * *vbslq_s8(v15, v9, v8).i64 + 1.0) * 0.5 * (v7 + -0.1) + 0.1;
  *v10.i64 = sin(v1 * 0.75);
  v11.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid) = (*vbslq_s8(v15, v11, v10).i64 * fabs(sqrt(fabs(*v10.i64))) + 1.0) * 0.5 + 0.0;
  *v12.i64 = sin(v1);
  v13.i64[0] = 1.0;
  result = (*vbslq_s8(v15, v13, v12).i64 * pow(fabs(*v12.i64), 0.75) + 1.0) * 0.5 * 0.5 + 0.5;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi) = result;
  return result;
}

float sub_1003E17E0()
{
  v1 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass);
  v2 = *(v0 + 368);
  *v2.f64 = v1;
  *(v0 + 368) = v1;
  v3 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid);
  *(v2.f64 + 1) = v3;
  *(v0 + 368) = v2;
  v4 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi);
  *&v2.f64[1] = v4;
  *(v0 + 368) = v2;
  v5 = *(v0 + 408);
  *(v0 + 356) = v5;
  v2.f64[0] = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan);
  v2.f64[1] = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan);
  *(v0 + 24) = vmul_f32(vrev64_s32(*(v0 + 412)), vcvt_f32_f64(v2));
  v6 = (*(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) - *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime)) / *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration);
  v7 = 0.0;
  if (v6 >= 0.0)
  {
    v7 = (*(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) - *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime)) / *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration);
  }

  if (v6 >= 1.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 * v8 * (3.0 - (v8 + v8));
  v10 = vcvtq_f64_f32(*(v0 + 384));
  *(v0 + 384) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 424), v10), v9), v10));
  v11 = *(v0 + 448);
  *v10.f64 = v9 * (*(v0 + 440) - *(v0 + 392)) + *(v0 + 392);
  *(v0 + 392) = LODWORD(v10.f64[0]);
  *v10.f64 = v9 * (v11 - *(v0 + 344)) + *(v0 + 344);
  *(v0 + 344) = LODWORD(v10.f64[0]);
  v12 = vcvtq_f64_f32(*(v0 + 360));
  *(v0 + 360) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 480), v12), v9), v12));
  v13 = vcvtq_f64_f32(*(v0 + 400));
  *(v0 + 400) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 456), v13), v9), v13));
  result = v9 * (*(v0 + 472) - v5) + v5;
  *(v0 + 408) = result;
  return result;
}

uint64_t sub_1003E197C()
{
  v1 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_startTime;
  v2 = sub_1004B6CD4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lastUpdateTime, v2);
  v3(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_currentTime, v2);

  return swift_deallocClassInstance();
}

void sub_1003E1AC4(unsigned __int8 *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 accessibilityContrast];

  v4 = v3 == 1;
  v5 = a1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled];
  a1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled] = v4;
  if (v4 != v5)
  {
    sub_1003E0A8C();
  }
}

id sub_1003E1C08(char a1)
{
  if (a1)
  {
    if (qword_100611830 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_100611830 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v1 = qword_100619570;
  v2 = sub_1004BBE24();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  return v3;
}

uint64_t type metadata accessor for ShaderFallback.Calculator()
{
  result = qword_100612A88;
  if (!qword_100612A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003E1D90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000136EC;

  return sub_1003DED1C(a1, v4, v5, v6);
}

uint64_t sub_1003E1E44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_1003DF754(a1, v4, v5, v6);
}

uint64_t sub_1003E1EF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_1003DFE10(a1, v4, v5, v6);
}

unint64_t sub_1003E1FB0()
{
  result = qword_1006129A8;
  if (!qword_1006129A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006129A8);
  }

  return result;
}

__n128 sub_1003E2004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1003E2020(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[96])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003E2064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1003E20E8()
{
  result = sub_1004B6CD4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1003E21E4()
{
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer) = 0;
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator;
  type metadata accessor for ShaderFallback.Calculator();
  swift_allocObject();
  *(v0 + v1) = sub_1003E1138();
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel) = 0;
  sub_1004BD624();
  __break(1u);
}

unint64_t sub_1003E22F8()
{
  result = qword_100612FC8;
  if (!qword_100612FC8)
  {
    sub_1004BCC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100612FC8);
  }

  return result;
}

uint64_t sub_1003E2350(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100612968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E23C0()
{

  return swift_deallocObject();
}

uint64_t sub_1003E23F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_100109480(a1, v4);
}

uint64_t sub_1003E24B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_100109480(a1, v4);
}

uint64_t Array<A>.joined(separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v22 = a1;
  v25 = a6;
  v8 = sub_1004BD174();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(a3 - 8);
  __chkstk_darwin(v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = a2;
  sub_1004BC3B4();
  swift_getWitnessTable();
  sub_1004BC7B4();
  if ((*(v13 + 48))(v12, 1, a3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return (*(v24 + 8))(a3);
  }

  else
  {
    (*(v13 + 32))(v15, v12, a3);
    *&v26 = a2;

    v17 = sub_1004BC804();
    v21 = v28;
    v26 = v28;
    v27 = v29;
    __chkstk_darwin(v17);
    v18 = v23;
    v19 = v24;
    *(&v21 - 4) = a3;
    *(&v21 - 3) = v18;
    v20 = v22;
    *(&v21 - 2) = v19;
    *(&v21 - 1) = v20;
    sub_1004BD294();
    swift_getWitnessTable();
    sub_1004BC1C4();
    swift_unknownObjectRelease();
    return (*(v13 + 8))(v15, a3);
  }
}

uint64_t sub_1003E2874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  v13(v9, v14, v15, v12);
  v13(v11, a2, a4, a5);
  return (*(v8 + 8))(v11, a4);
}

id variable initialization expression of BrightnessManager.brightnessClient()
{
  v0 = objc_allocWithZone(BrightnessSystemClient);

  return [v0 init];
}

unint64_t sub_1003E2A0C(uint64_t a1)
{
  v1 = sub_1003E3250(a1);
  sub_100003ABC(&qword_100613050);
  swift_arrayDestroy();
  return v1;
}

unint64_t variable initialization expression of BrightnessManager.disableCBFeatures()
{
  v0 = sub_1003E3354(&off_1005CD430);
  sub_1003E3450(&unk_1005CD450);
  return v0;
}

unint64_t variable initialization expression of BrightnessManager.enableCBFeatures()
{
  v0 = sub_1003E3354(&off_1005CD468);
  sub_1003E3450(&unk_1005CD488);
  return v0;
}

uint64_t variable initialization expression of Datavault.logger@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B80B4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of WeakArray.items()
{
  type metadata accessor for WeakArray.WeakBox();

  return sub_1004BC304();
}

uint64_t variable initialization expression of WeakValuesDictionary.storage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1003E34B8();
  swift_getTupleTypeMetadata2();
  v6 = sub_1004BC304();
  v7 = sub_1003FB920(v6, a1, v5, a3);

  return v7;
}

uint64_t sub_1003E2C18(uint64_t a1, uint64_t a2)
{
  result = sub_1004BC604();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_1003E2C6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004BC614();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1003E2CC4@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1004BC624();
  *a1 = v3;
  return result;
}

Swift::Int sub_1003E2CEC()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1);
  return sub_1004BDBF4();
}

Swift::Int sub_1003E2D60()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1);
  return sub_1004BDBF4();
}

uint64_t sub_1003E2DCC()
{
  sub_1003E3CF0(&qword_100613158, _s3__C4NameVMa_0);
  sub_1003E3CF0(&qword_100613160, _s3__C4NameVMa_0);

  return sub_1004BD744();
}

uint64_t sub_1003E2E88()
{
  sub_1003E3CF0(&qword_100613168, _s3__C3KeyVMa_0);
  sub_1003E3CF0(&qword_100613170, _s3__C3KeyVMa_0);

  return sub_1004BD744();
}

_DWORD *sub_1003E2F44@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_1003E2F54@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1003E2F60()
{
  sub_1003E3CF0(&qword_100613148, type metadata accessor for UILayoutPriority);
  sub_1003E3CF0(&qword_100613150, type metadata accessor for UILayoutPriority);
  return sub_1004BD744();
}

uint64_t sub_1003E301C()
{
  sub_1003E3CF0(&qword_1006131F8, type metadata accessor for NSKeyValueChangeKey);
  sub_1003E3CF0(&qword_100613200, type metadata accessor for NSKeyValueChangeKey);

  return sub_1004BD744();
}

void sub_1003E30E0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004BDBD4(LODWORD(v1));
}

uint64_t sub_1003E311C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

unint64_t sub_1003E314C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_1006131B8);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003FB1BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003E3250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_1006131B0);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003FB1BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003E3354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_1006131A8);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003FB1BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1003E3450(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100613058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003E34B8()
{
  result = qword_100613060;
  if (!qword_100613060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100613060);
  }

  return result;
}

void *sub_1003E3504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100003ABC(&qword_1006131A0);
  v3 = sub_1004BD6F4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1003FB1E8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 24;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = sub_1003FB1E8(v4, v17);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003E3620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613198);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003FB1BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003E371C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613190);
    v3 = sub_1004BD6F4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1003FB2A8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003E37F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613188);
    v3 = sub_1004BD6F4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1003FB2EC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003E38D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613180);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1003FB1BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003E39EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613178);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      v9 = v8;

      result = sub_1003FB358(v5, v6, v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v9;
      *(v3[7] + 8 * result) = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 sub_1003E3B38(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1003E3BB4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1003E3CF0(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL static ApplicationRecordUtilities.isApplicationInstalled(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_1003E4774(a1, a2, 0);
  v6 = v5 != 0;

  return v6;
}

uint64_t static ApplicationRecordUtilities.openApplication(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1003E4270, 0, 0);
}

uint64_t sub_1003E4270()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004BBE24();
    v0[21] = v3;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_1003E43D4;
    v4 = swift_continuation_init();
    v0[17] = sub_100003ABC(&qword_100613208);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1003E45C4;
    v0[13] = &unk_1005CE010;
    v0[14] = v4;
    [v2 openApplicationWithBundleIdentifier:v3 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_1003E43D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1003E454C;
  }

  else
  {
    v2 = sub_1003E44E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E44E4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003E454C()
{
  v1 = v0[21];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003E45C4(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100009178((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003ABC(qword_100613210);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

NSString sub_1003E4690()
{
  result = sub_1004BBE24();
  static NSNotificationName.applicationRegistered = result;
  return result;
}

uint64_t *NSNotificationName.applicationRegistered.unsafeMutableAddressor()
{
  if (qword_100612FD0 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.applicationRegistered;
}

id static NSNotificationName.applicationRegistered.getter()
{
  if (qword_100612FD0 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.applicationRegistered;

  return v1;
}

id sub_1003E4774(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1004BBE24();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1004B69B4();

    swift_willThrow();
  }

  return v6;
}

uint64_t static ArrayBuilder.buildBlock(_:)()
{
  sub_1004BC3B4();
  sub_1004BC3B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1004BC1E4();
}

uint64_t static ArrayBuilder.buildExpression(_:)(uint64_t a1)
{
  v2 = sub_1004BD174();
  sub_1004BD944();
  v3 = *(v2 - 8);
  swift_allocObject();
  sub_1004BC2C4();
  (*(v3 + 16))(v4, a1, v2);
  v5.location = sub_1004BC3B4();
  CFRange.init(_:)(v5);
  swift_getWitnessTable();
  v6 = sub_1004BC144();

  return v6;
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(a1, a2, a3, a4);
  return v8;
}

{
  sub_100003ABC(&qword_1006132A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  sub_10001342C(a1, inited + 32);
  v9 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, a2, a3, a4);
  sub_100004C6C(a1);
  return v9;
}

{
  sub_100003ABC(&qword_1006132A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = a1;
  *(inited + 40) = 0;
  v9 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, a2, a3, a4);
  return v9;
}

uint64_t Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004BA8F4();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v33 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1004BA924();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 40) = &_swiftEmptyArrayStorage;
  v13 = (v5 + 40);
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v43 = &_swiftEmptyArrayStorage;
  v14 = *(a1 + 16);
  if (v14)
  {
    v29[0] = v5 + 40;
    v29[1] = a1;
    v30 = a2;
    v15 = a1 + 32;
    v37 = a4;

    v38 = &_swiftEmptyArrayStorage;
    do
    {
      sub_10001342C(v15, aBlock);
      v17 = v40;
      v16 = v41;
      sub_100009178(aBlock, v40);
      v18 = swift_allocObject();
      v19 = v5;
      swift_weakInit();
      v20 = *(v16 + 1);

      v20(sub_1003E69D4, v18, v17, v16);

      sub_100004C6C(aBlock);
      sub_1004BC274();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004BC2E4();
      }

      sub_1004BC334();
      v38 = v43;
      v5 = v19;
      v15 += 40;
      --v14;
    }

    while (v14);

    v21 = v38;
    LOBYTE(a2) = v30;
    v13 = v29[0];
  }

  else
  {

    v21 = &_swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  *v13 = v21;

  if (a2)
  {
    v22 = objc_opt_self();

    if (![v22 isMainThread])
    {
      sub_1003E53C4();
      v23 = sub_1004BCB44();
      v41 = sub_100009350;
      v42 = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D6C80;
      v40 = &unk_1005CE080;
      v24 = _Block_copy(aBlock);

      v25 = v31;
      sub_1004BA914();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_1003E5954();
      sub_100003ABC(&unk_1006143D0);
      sub_1003E59AC();
      v26 = v33;
      v27 = v36;
      sub_1004BD2D4();
      sub_1004BCB54();
      _Block_release(v24);

      (*(v35 + 8))(v26, v27);
      (*(v32 + 8))(v25, v34);
      return v5;
    }

    (*(v5 + 16))();
  }

  return v5;
}

Swift::Void __swiftcall Whitetail.Binding.setNeedsUpdate()()
{
  v1 = sub_1004BA8F4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BA924();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 32));
  swift_endAccess();
  if ((*(v0 + 36) & 1) == 0)
  {
    *(v0 + 36) = 1;
    sub_1003E53C4();
    v12 = v5;
    v9 = sub_1004BCB44();
    aBlock[4] = sub_1003E5A10;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005CE0A8;
    v10 = _Block_copy(aBlock);

    sub_1004BA914();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003E5954();
    sub_100003ABC(&unk_1006143D0);
    sub_1003E59AC();
    sub_1004BD2D4();
    sub_1004BCB54();
    _Block_release(v10);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v12);
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + 32));
  swift_endAccess();
}

uint64_t sub_1003E538C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_1003E53C4()
{
  result = qword_1006143C0;
  if (!qword_1006143C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006143C0);
  }

  return result;
}

uint64_t Whitetail.Binding.add(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100009178(a1, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(v4 + 8);

  v6(sub_1003E5A18, v5, v3, v4);
  if (v2)
  {
  }

  else
  {

    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1004BC274();
    if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004BC2E4();
    }

    sub_1004BC334();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1003E56E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Whitetail.Binding.setNeedsUpdate()();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Whitetail.Binding.add(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = a1._rawValue + 32;
    do
    {
      sub_10001342C(v3, v9);
      v5 = v10;
      v4 = v11;
      sub_100009178(v9, v10);
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = *(v4 + 8);

      v8 = v12;
      v7(sub_1003E69D4, v6, v5, v4);
      if (v8)
      {

        v12 = 0;
      }

      else
      {
        v12 = 0;

        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_1004BC274();
        if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004BC2E4();
        }

        sub_1004BC334();
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      sub_100004C6C(v9);
      v3 += 40;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1003E58D8(uint64_t a1)
{
  swift_beginAccess();
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 36) = 0;
  os_unfair_lock_unlock((a1 + 32));
  v2 = swift_endAccess();
  return (*(a1 + 16))(v2);
}

uint64_t sub_1003E593C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1003E5954()
{
  result = qword_100613298;
  if (!qword_100613298)
  {
    sub_1004BA8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613298);
  }

  return result;
}

unint64_t sub_1003E59AC()
{
  result = qword_1006132A0;
  if (!qword_1006132A0)
  {
    sub_100003B68(&unk_1006143D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006132A0);
  }

  return result;
}

uint64_t Whitetail.Binding.description.getter()
{
  sub_1004BD404(21);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  sub_1004BC024(v4);
  v5._countAndFlagsBits = sub_1004BDC84();
  sub_1004BC024(v5);

  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  sub_1004BC024(v6);
  sub_1004BD5C4();
  v7._countAndFlagsBits = 0x6576726573626F20;
  v7._object = 0xEB000000003D7372;
  sub_1004BC024(v7);
  swift_beginAccess();

  v0 = sub_1004BC2B4();
  v2 = v1;

  v8._countAndFlagsBits = v0;
  v8._object = v2;
  sub_1004BC024(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  sub_1004BC024(v9);
  return 0;
}

uint64_t Whitetail.Binding.deinit()
{

  return v0;
}

uint64_t Whitetail.Binding.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id DistributedNotificationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MusicDarwinNotificationObserver);
  v11[4] = sub_1000081FC;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000D6C80;
  v11[3] = &unk_1005CE0F8;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithNotificationName:a3 handler:v8];
  _Block_release(v8);

  return v9;
}

id sub_1003E5D28(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MusicDarwinNotificationObserver);
  v11[4] = sub_100009350;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000D6C80;
  v11[3] = &unk_1005CE3C8;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithNotificationName:v5 handler:v8];
  _Block_release(v8);

  return v9;
}

uint64_t NotificationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for NotificationObserver();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v7 + 16) = a3;
  swift_unknownObjectWeakAssign();
  *(v7 + 32) = 1;
  *(v7 + 48) = sub_1000081FC;
  *(v7 + 56) = v6;
  v8 = objc_opt_self();

  v9 = a3;

  v10 = [v8 defaultCenter];
  *(v7 + 40) = v10;
  v11 = *(v7 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = v10;

  v14 = v11;
  [v13 addObserver:v7 selector:"handleNotification:" name:v14 object:Strong];

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1003E5FA0()
{

  return swift_deallocObject();
}

uint64_t KeyValueObservationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a1;
  v11[5] = a2;
  v12 = a3;

  v13 = sub_1004B69E4();

  return v13;
}

uint64_t UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004BC244();
  (*(*(a4 - 8) + 8))(a3, a4);
  return a1;
}

uint64_t UserDefaultsKeyValueTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = sub_1003E6250(a5, a6, a3, a4, sub_100009350, v12);

  return v13;
}

uint64_t sub_1003E6250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v10 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  v11 = v10 - 8;
  v35 = *(v10 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v38 = a1;
  v39 = a2;

  v20 = sub_1004BC104();
  v22 = v21;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v23 = &v19[*(v11 + 28)];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v19[*(v11 + 32)];
  *v24 = v20;
  v24[1] = v22;
  v25 = qword_100613028;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_100614480;
  v27 = *(qword_100614480 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v27 + 16));
  v28 = v40;
  sub_1004277D4(v26, v19, v36, v37);
  os_unfair_lock_unlock(*(v27 + 16));
  if (v28)
  {
    return sub_1003E6734(v19);
  }

  sub_1003E6790(v19, v16);
  sub_1003E67F4(v19, v13);
  v30 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v31 = swift_allocObject();
  sub_1003E67F4(v13, v31 + v30);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v32 = swift_allocObject();
  sub_1003E67F4(v16, v32 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier);
  result = v32;
  v33 = (v32 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v33 = sub_1003E6954;
  v33[1] = v31;
  return result;
}

uint64_t sub_1003E64E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_1003E6250(v8, v7, v5, v6, sub_100009350, v9);

  return v10;
}

uint64_t sub_1003E6594()
{

  return swift_deallocObject();
}

uint64_t sub_1003E6648()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003E669C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003E66E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003E6734(uint64_t a1)
{
  v2 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003E6790(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E67F4(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E6858()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1004B6D14();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_1003E6954()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_100427504(v2);
}

uint64_t NotificationObserver.__allocating_init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v11 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = a3;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v11 + 40) = v15;
  v16 = *(v11 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v11 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v11;
}

uint64_t NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v6 + 32) = a3;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v6 + 40) = v15;
  v16 = *(v6 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v6 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t NotificationObserver.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_1001898C4(v0 + 24);

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_1001898C4(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1003E6DEC(uint64_t a1)
{
  v3 = sub_1004BA8F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1004BA924();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B65F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v15 = &v25 - v13;
  if (*(v1 + 32) != 1)
  {
    return (*(v1 + 48))(a1, v14);
  }

  v26 = v4;
  v27 = v3;
  v16 = *(v9 + 16);
  v16(&v25 - v13, a1, v8, v14);
  (v16)(v11, v15, v8);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  (*(v9 + 32))(v18 + v17, v15, v8);
  v19 = objc_opt_self();

  if ([v19 isMainThread])
  {
    (*(v1 + 48))(v11);
  }

  else
  {
    sub_100009130(0, &qword_1006143C0);
    v25 = sub_1004BCB44();
    aBlock[4] = sub_1003E7638;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005CE440;
    v21 = _Block_copy(aBlock);

    sub_1004BA914();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003E5954();
    sub_100003ABC(&unk_1006143D0);
    sub_1003E59AC();
    v22 = v29;
    v23 = v27;
    sub_1004BD2D4();
    v24 = v25;
    sub_1004BCB54();
    _Block_release(v21);

    (*(v26 + 8))(v22, v23);
    (*(v28 + 8))(v7, v30);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t NotificationObserver.debugDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  sub_1004BD404(65);
  v17._object = 0x800000010050C550;
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1004BC024(v17);
  v18._countAndFlagsBits = sub_1004BBE64();
  sub_1004BC024(v18);

  v19._countAndFlagsBits = 0x3D7463656A626F20;
  v19._object = 0xE800000000000000;
  sub_1004BC024(v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector:"description"])
    {
      v5 = [v4 description];
      swift_unknownObjectRelease();
      v2 = sub_1004BBE64();
      v7 = v6;

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0xE300000000000000;
LABEL_6:
  v20._countAndFlagsBits = v2;
  v20._object = v7;
  sub_1004BC024(v20);

  v21._countAndFlagsBits = 0x3D7265746E656320;
  v21._object = 0xE800000000000000;
  sub_1004BC024(v21);
  sub_100009130(0, &unk_1006143A0);
  v8 = *(v1 + 40);
  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_1004BCFA4();

  if (v10)
  {
    v11 = 0xE700000000000000;
    v12._countAndFlagsBits = 0x746C7561666564;
  }

  else
  {
    v13 = [v8 description];
    v14 = sub_1004BBE64();
    v11 = v15;

    v12._countAndFlagsBits = v14;
  }

  v12._object = v11;
  sub_1004BC024(v12);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  sub_1004BC024(v22);
  return 0;
}

uint64_t sub_1003E7574()
{
  v1 = sub_1004B65F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1003E76A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BrightnessManager.__allocating_init(windowScene:)(void *a1)
{
  v2 = swift_allocObject();
  BrightnessManager.init(windowScene:)(a1);
  return v2;
}

void *BrightnessManager.init(windowScene:)(void *a1)
{
  v1[2] = [objc_allocWithZone(BrightnessSystemClient) init];
  v3 = sub_1003E3250(&off_1005CD4A0);
  sub_100003ABC(&qword_100613050);
  swift_arrayDestroy();
  v1[3] = v3;
  v4 = sub_1003E3250(&off_1005CD4F0);
  swift_arrayDestroy();
  v1[4] = v4;
  v5 = sub_1003E3354(&off_1005CD540);
  sub_1003E3450(&unk_1005CD560);
  v1[5] = v5;
  v6 = sub_1003E3354(&off_1005CD578);
  sub_1003E3450(&unk_1005CD598);
  v1[6] = v6;
  v1[7] = _swiftEmptyArrayStorage;
  sub_100003ABC(&qword_1006134D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1004C51A0;
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 16) = UISceneWillDeactivateNotification;
  swift_unknownObjectWeakAssign();
  *(v8 + 32) = 1;
  *(v8 + 48) = sub_1003E7E34;
  *(v8 + 56) = v7;
  v9 = objc_opt_self();
  v10 = a1;

  swift_retain_n();
  v11 = UISceneWillDeactivateNotification;
  v12 = [v9 defaultCenter];
  *(v8 + 40) = v12;
  v13 = *(v8 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = v12;

  v16 = v13;
  [v15 addObserver:v8 selector:"handleNotification:" name:v16 object:Strong];

  swift_unknownObjectRelease();
  *(v27 + 32) = v8;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v10;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v19 + 16) = UISceneDidActivateNotification;
  swift_unknownObjectWeakAssign();
  *(v19 + 32) = 1;
  *(v19 + 48) = sub_1003E7E64;
  *(v19 + 56) = v17;
  swift_retain_n();
  v20 = UISceneDidActivateNotification;
  v21 = [v9 defaultCenter];
  *(v19 + 40) = v21;
  v22 = *(v19 + 16);
  v23 = swift_unknownObjectWeakLoadStrong();
  v24 = v21;

  v25 = v22;
  [v24 addObserver:v19 selector:"handleNotification:" name:v25 object:v23];

  swift_unknownObjectRelease();
  *(v27 + 40) = v19;

  v1[7] = v27;

  return v1;
}

Swift::Void __swiftcall BrightnessManager.resetBrightnessToSystemDefault()()
{
  v1 = *(v0 + 16);
  isa = sub_1004BBC24().super.isa;
  v3 = sub_1004BBE24();
  [v1 setProperty:isa forKey:v3];

  v4 = sub_1004BBC24().super.isa;
  v5 = sub_1004BBE24();
  [v1 setProperty:v4 forKey:v5];
}

uint64_t sub_1003E7BE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

Swift::Void __swiftcall BrightnessManager.increaseBrightnessIfNeeded()()
{
  v1 = *(v0 + 16);
  isa = sub_1004BBC24().super.isa;
  v3 = sub_1004BBE24();
  [v1 setProperty:isa forKey:v3];

  v4 = sub_1004BBC24().super.isa;
  v5 = sub_1004BBE24();
  [v1 setProperty:v4 forKey:v5];
}

uint64_t BrightnessManager.deinit()
{

  return v0;
}

uint64_t BrightnessManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003E7DFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Collection<>.compare<A>(with:comparator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v157 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v146 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v164 = &v121 - v17;
  v134 = swift_getAssociatedTypeWitness();
  v123 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v155 = &v121 - v20;
  v21 = *(a7 + 8);
  v128 = sub_1004BD694();
  __chkstk_darwin(v128);
  v127 = &v121 - v22;
  v129 = v21;
  v142 = sub_1004BD684();
  v125 = *(v142 - 1);
  __chkstk_darwin(v142);
  v138 = &v121 - v23;
  v24 = *(a6 + 8);
  v25 = swift_getAssociatedTypeWitness();
  v132 = *(v25 - 8);
  __chkstk_darwin(v25);
  v145 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v160 = &v121 - v28;
  v151 = type metadata accessor for CollectionComparisonOperation();
  __chkstk_darwin(v151);
  v140 = (&v121 - v29);
  v161 = v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v158 = sub_1004BD174();
  v136 = *(v158 - 1);
  __chkstk_darwin(v158);
  v137 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v152 = &v121 - v32;
  __chkstk_darwin(v33);
  v35 = (&v121 - v34);
  v131 = sub_1004BD694();
  __chkstk_darwin(v131);
  v130 = &v121 - v36;
  v141 = v24;
  v143 = sub_1004BD684();
  v126 = *(v143 - 1);
  __chkstk_darwin(v143);
  v149 = &v121 - v37;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v38[6] = a8;
  if (a2)
  {
    v38[7] = a2;
    v38[8] = a3;
    v39 = sub_1003EAAC4;
  }

  else
  {
    v39 = sub_1003E93D4;
  }

  v144 = v39;
  sub_10002F518(a2);
  v147 = v38;

  v153 = a4;
  v139 = a6;
  v40 = sub_1004BC734();
  v156 = a5;
  v41 = sub_1004BC734();
  result = sub_1004BC304();
  v168 = result;
  v135 = v41;
  v43 = __OFADD__(v41, 1);
  v44 = v41 + 1;
  if (v43)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v45 = sub_1004BC3B4();
  v46 = sub_1003EA964(&v168, v44, v45);

  v168 = v46;
  if (__OFADD__(v40, 1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v148 = v40;
  v154 = a7;
  v122 = a8;
  v163 = v45;
  v162 = sub_1004BC3B4();
  v47 = sub_1003EA964(&v168, v40 + 1, v162);

  v170 = v47;
  v169 = sub_1004BC304();
  sub_1004BC154();
  sub_1004BD664();
  v48 = v136 + 4;
  v49 = TupleTypeMetadata2;
  v141 = (v132 + 32);
  while (1)
  {
    v50 = v152;
    sub_1004BD674();
    v51 = *v48;
    (*v48)(v35, v50, v158);
    v52 = *(*(v49 - 8) + 48);
    if (v52(v35, 1, v49) == 1)
    {
      break;
    }

    v53 = *v35;
    v54 = *v141;
    v55 = v35 + *(v49 + 48);
    v56 = v160;
    v57 = v161;
    (*v141)(v160, v55, v161);
    v58 = v140;
    *v140 = 0;
    *(v58 + 8) = 1;
    v58[2] = v53;
    (v54)(v58 + *(v151 + 40), v56, v57);
    result = sub_1004BC364();
    v59 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v60 = v169;
    sub_1004BC3B4();

    sub_1004BC2F4();
    v61 = v170;
    sub_1003EA910(v59, v170);
    v62 = v61 + 8 * v59;
    sub_1004BC2F4();
    v63 = *(v62 + 32);
    result = _swift_isClassOrObjCExistentialType();
    v64 = v63 & 0xFFFFFFFFFFFFFF8;
    if ((result & 1) == 0)
    {
      v64 = v63;
    }

    if (!*(v64 + 16))
    {
      goto LABEL_51;
    }

    *(*(v62 + 32) + 32) = v60;

    v49 = TupleTypeMetadata2;
  }

  (*(v126 + 8))(v149, v143);

  v169 = sub_1004BC304();
  sub_1004BC154();
  sub_1004BD664();
  v65 = v152;
  v66 = TupleTypeMetadata2;
  sub_1004BD674();
  v67 = v137;
  v51(v137, v65, v158);
  if (v52(v67, 1, v66) != 1)
  {
    v149 = *v141;
    v136 = v48;
    do
    {
      v68 = *v67;
      v69 = v67 + *(v66 + 48);
      v70 = v160;
      v71 = v161;
      v72 = v149;
      (v149)(v160, v69, v161);
      v73 = v140;
      *v140 = 1;
      *(v73 + 8) = 1;
      v73[2] = v68;
      (v72)(v73 + *(v151 + 40), v70, v71);
      result = sub_1004BC364();
      v74 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_52;
      }

      v75 = v169;
      sub_1004BC3B4();

      sub_1004BC2F4();
      v76 = v170;
      result = _swift_isClassOrObjCExistentialType();
      v77 = v76 & 0xFFFFFFFFFFFFFF8;
      if ((result & 1) == 0)
      {
        v77 = v76;
      }

      if (!*(v77 + 16))
      {
        goto LABEL_53;
      }

      sub_1004BC2F4();
      sub_1003EA910(v74, *(v76 + 32));
      *(*(v76 + 32) + 8 * v74 + 32) = v75;

      v78 = v152;
      sub_1004BD674();
      v67 = v137;
      v51(v137, v78, v158);
      v66 = TupleTypeMetadata2;
    }

    while (v52(v67, 1, TupleTypeMetadata2) != 1);
  }

  (*(v125 + 8))(v138, v142);

  v79 = v148;
  if (!v148 || !v135)
  {
LABEL_48:

    sub_1004BC3C4();
    sub_1004BC3C4();

    return v167;
  }

  result = sub_1004BC724();
  if (v79 >= 1 && v135 >= 1)
  {
    v158 = (v132 + 16);
    v143 = (v132 + 8);
    v149 = (v124 + 8);
    v142 = (v124 + 32);
    v138 = (v123 + 8);
    v137 = (v123 + 32);
    v80 = 1;
    while (1)
    {
      sub_1004BC724();
      v152 = (v80 - 1);
      v81 = 1;
      TupleTypeMetadata2 = v80;
      while (1)
      {
        v82 = sub_1004BC844();
        v83 = *v158;
        v84 = v160;
        v85 = v161;
        (*v158)(v160);
        v82(&v168, 0);
        v86 = sub_1004BC844();
        v87 = v145;
        v83(v145);
        v86(&v168, 0);
        v144(&v168, v84, v87);
        v88 = *v143;
        (*v143)(v87, v85);
        v88(v84, v85);
        if (v168 == 1)
        {
          sub_1004BC3C4();
          sub_1004BC3C4();

          v89 = v167;
          sub_1004BC3B4();
          sub_1004BC2F4();
          v90 = v170;
          sub_1003EA910(v81, v170);
          v91 = v90 + 8 * v81;
          sub_1004BC2F4();
          v92 = TupleTypeMetadata2;
          sub_1003EA910(TupleTypeMetadata2, *(v91 + 32));
          *(*(v91 + 32) + 8 * v92 + 32) = v89;
        }

        else
        {
          v93 = (v81 - 1);
          sub_1004BC3C4();
          sub_1004BC3C4();

          sub_1004BC3C4();
          sub_1004BC3C4();

          sub_1004BC3C4();
          sub_1004BC3C4();

          v94 = sub_1004BC344();
          v95 = sub_1004BC344();
          v96 = sub_1004BC344();
          v97 = v95 >= v94 ? v94 : v95;
          v98 = v96 >= v97 ? v97 : v96;
          if (v94 == v98)
          {

            v99 = sub_1004BC844();
            v100 = v160;
            v101 = v161;
            v83(v160);
            v99(&v168, 0);
            v102 = v140;
            *v140 = 0;
            v103 = &v167;
          }

          else
          {

            if (sub_1004BC344() == v98)
            {

              v104 = sub_1004BC844();
              v100 = v160;
              v101 = v161;
              v83(v160);
              v104(&v168, 0);
              v102 = v140;
              *v140 = 1;
              v103 = &v166;
              v93 = v152;
            }

            else
            {

              v105 = sub_1004BC844();
              v100 = v160;
              v101 = v161;
              v83(v160);
              v105(&v168, 0);
              v102 = v140;
              *v140 = 2;
              v103 = &v165;
            }
          }

          v92 = TupleTypeMetadata2;
          *(v102 + 8) = 1;
          v102[2] = v93;
          (*v141)(v102 + *(v151 + 40), v100, v101);
          sub_1004BC364();
          v106 = *v103;
          sub_1004BC3B4();
          sub_1004BC2F4();
          v107 = v170;
          sub_1003EA910(v81, v170);
          v108 = v107 + 8 * v81;
          sub_1004BC2F4();
          sub_1003EA910(v92, *(v108 + 32));
          *(*(v108 + 32) + 8 * v92 + 32) = v106;
        }

        v109 = v146;
        v110 = v164;
        v111 = v153;
        sub_1004BC744();
        v112 = *v149;
        v113 = AssociatedTypeWitness;
        (*v149)(v110, AssociatedTypeWitness);
        result = (*v142)(v110, v109, v113);
        if (v81 == v148)
        {
          break;
        }

        v43 = __OFADD__(v81++, 1);
        if (v43)
        {
          __break(1u);
          goto LABEL_50;
        }
      }

      v114 = v133;
      v115 = v155;
      sub_1004BC744();
      v112(v164, AssociatedTypeWitness);
      v116 = *v138;
      v117 = v134;
      (*v138)(v115, v134);
      (*v137)(v115, v114, v117);
      if (v92 == v135)
      {
        break;
      }

      v43 = __OFADD__(v92, 1);
      v80 = v92 + 1;
      if (v43)
      {
        __break(1u);
        goto LABEL_48;
      }
    }

    sub_1004BC3C4();
    sub_1004BC3C4();

    v166 = sub_1004BBBF4();
    __chkstk_darwin(v166);
    v118 = v156;
    *(&v121 - 6) = v111;
    *(&v121 - 5) = v118;
    v119 = v154;
    *(&v121 - 4) = v120;
    *(&v121 - 3) = v119;
    *(&v121 - 2) = v122;
    swift_getWitnessTable();
    sub_1004BC1B4();

    v116(v155, v134);

    return v168;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1003E93D4@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_1004BBD84();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1003E9454@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for CollectionComparisonOperation();
  v10 = *(*(a5 - 8) + 32);
  v11 = a6 + *(v9 + 40);

  return v10(v11, a4, a5);
}

uint64_t sub_1003E94E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v41 = &v36 - v13;
  v14 = type metadata accessor for CollectionComparisonOperation();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v20 = __chkstk_darwin(v16);
  v21 = &v36 - v18;
  if (*(a2 + 8) != 1)
  {
    goto LABEL_5;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v36 = 1;
      v37 = v19;
      goto LABEL_8;
    }

LABEL_5:
    (*(v15 + 16))(&v36 - v18, a2, v14, v20);
    sub_1004BC3B4();
    return sub_1004BC364();
  }

  v36 = 0;
  v37 = v19;
LABEL_8:
  v39 = &v36;
  v40 = a1;
  v48 = *a1;
  __chkstk_darwin(v17);
  v38 = &v36 - 10;
  v24 = v43;
  v23 = v44;
  *(&v36 - 8) = a3;
  *(&v36 - 7) = v24;
  *(&v36 - 6) = a5;
  *(&v36 - 5) = v23;
  *(&v36 - 4) = a7;
  *(&v36 - 3) = v25;
  *(&v36 - 16) = v26;
  *(&v36 - 1) = a2;
  v27 = sub_1004BC3B4();

  swift_getWitnessTable();
  v28 = v45;
  sub_1004BC784();

  if (v47 == 1)
  {
    (*(v15 + 16))(v21, a2, v14);
    return sub_1004BC364();
  }

  else
  {
    v44 = v46;
    sub_1004BC3C4();
    v38 = *(v21 + 2);
    v39 = v27;
    v43 = *(v15 + 8);
    v43(v21, v14);
    v45 = v28;
    v29 = *(a2 + 16);
    v30 = v41;
    v31 = v42;
    (*(v42 + 16))(v41, a2 + *(v14 + 40), AssociatedTypeWitness);
    v32 = v37;
    v33 = v38;
    if (v36)
    {
      v34 = v38;
    }

    else
    {
      v34 = v29;
    }

    if (v36)
    {
      v33 = v29;
    }

    *v37 = v34;
    *(v32 + 8) = 0;
    v32[2] = v33;
    (*(v31 + 32))(v32 + *(v14 + 40), v30, AssociatedTypeWitness);
    sub_1004BC384();
    v35 = v43;
    v43(v21, v14);
    (*(v15 + 16))(v21, v32, v14);
    sub_1004BC364();
    return v35(v32, v14);
  }
}

BOOL static CollectionComparisonOperationType.__derived_enum_equals(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (!a1)
  {
    return (a4 & 1) != 0 && !a3;
  }

  if (a1 == 1)
  {
    return (a4 & 1) != 0 && a3 == 1;
  }

  return (a4 & 1) != 0 && a3 > 1;
}

uint64_t sub_1003E996C(uint64_t *a1, unint64_t a2, char a3)
{
  v3 = *a1;
  if (*(a1 + 8) != 1)
  {
    if ((a3 & 1) != 0 || v3 != a2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v3)
  {
    if ((a3 & 1) == 0 || a2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (v3 != 1)
  {
    if ((a3 & 1) == 0 || a2 < 2)
    {
      return 0;
    }

LABEL_15:
    swift_getAssociatedTypeWitness();
    type metadata accessor for CollectionComparisonOperation();
    return sub_1004BBD84() & 1;
  }

  if ((a3 & 1) != 0 && a2 == 1)
  {
    goto LABEL_15;
  }

  return 0;
}

BOOL sub_1003E9AF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t CollectionComparisonOperationType.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x747265736E69;
    if (a1 != 1)
    {
      v2 = 0x7574697473627573;
    }

    if (a1)
    {
      return v2;
    }

    else
    {
      return 0x6574656C6564;
    }
  }

  else
  {
    v4._countAndFlagsBits = sub_1004BD934();
    sub_1004BC024(v4);

    return 0x6F72662065766F6DLL;
  }
}

uint64_t UICollectionView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1003EAAF8;
  *(v17 + 24) = v16;
  v27 = sub_1000081FC;
  v28 = v17;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100008224;
  v26 = &unk_1005CE530;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100398C10;
    v26 = &unk_1005CE558;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E9E50(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v8 = sub_1004B7044();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v14 = v13;
  v15 = type metadata accessor for CollectionComparisonOperation();
  v47 = *(v15 - 8);
  v36 = *(v47 + 64);
  v16 = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  a1(v16);
  v48 = a3;
  result = sub_1004BC394();
  if (result)
  {
    v20 = 0;
    v45 = (v47 + 16);
    v43 = (v47 + 8);
    v38 = v42 + 16;
    v37 = xmmword_1004C50A0;
    v39 = v12;
    v40 = a4;
    v44 = (v42 + 8);
    do
    {
      v27 = sub_1004BC324();
      sub_1004BC2D4();
      if (v27)
      {
        result = (*(v47 + 16))(v18, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v20, v15);
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1004BD474();
        if (v36 != 8)
        {
          __break(1u);
          return result;
        }

        v49 = result;
        (*v45)(v18, &v49, v15);
        result = swift_unknownObjectRelease();
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v29 = v14;
      sub_1004B6FF4();
      v30 = *v18;
      v31 = v18[8];
      (*v43)(v18, v15);
      if (v31 == 1)
      {
        sub_100003ABC(&qword_100613620);
        v32 = v42;
        v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = v37;
        (*(v32 + 16))(v34 + v33, v12, v29);
        v26.super.isa = sub_1004BC284().super.isa;

        if (v30)
        {
          if (v30 == 1)
          {
            [v46 insertItemsAtIndexPaths:v26.super.isa];
          }

          else
          {
            [v46 reloadItemsAtIndexPaths:v26.super.isa];
          }
        }

        else
        {
          [v46 deleteItemsAtIndexPaths:v26.super.isa];
        }

        v12 = v39;
        a4 = v40;
        v14 = v29;
        v25 = v44;
      }

      else
      {
        v21 = v41;
        sub_1004B6FF4();
        v22 = v15;
        v23 = a4;
        isa = sub_1004B6FD4().super.isa;
        v14 = v29;
        v25 = v44;
        (*v44)(v21, v14);
        v26.super.isa = sub_1004B6FD4().super.isa;
        [v46 moveItemAtIndexPath:isa toIndexPath:v26.super.isa];

        a4 = v23;
        v15 = v22;
      }

      (*v25)(v12, v14);
      result = sub_1004BC394();
      ++v20;
    }

    while (v28 != result);
  }

  return result;
}

uint64_t UITableView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1003EAB74;
  *(v17 + 24) = v16;
  v27 = sub_100009350;
  v28 = v17;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100008224;
  v26 = &unk_1005CE5D0;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100398C10;
    v26 = &unk_1005CE5F8;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EA4B8(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v8 = sub_1004B7044();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v14 = v13;
  v15 = type metadata accessor for CollectionComparisonOperation();
  v47 = *(v15 - 8);
  v36 = *(v47 + 64);
  v16 = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  a1(v16);
  v48 = a3;
  result = sub_1004BC394();
  if (result)
  {
    v20 = 0;
    v45 = (v47 + 16);
    v43 = (v47 + 8);
    v38 = v42 + 16;
    v37 = xmmword_1004C50A0;
    v39 = v12;
    v40 = a4;
    v44 = (v42 + 8);
    do
    {
      v27 = sub_1004BC324();
      sub_1004BC2D4();
      if (v27)
      {
        result = (*(v47 + 16))(v18, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v20, v15);
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1004BD474();
        if (v36 != 8)
        {
          __break(1u);
          return result;
        }

        v49 = result;
        (*v45)(v18, &v49, v15);
        result = swift_unknownObjectRelease();
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v29 = v14;
      sub_1004B6FF4();
      v30 = *v18;
      v31 = v18[8];
      (*v43)(v18, v15);
      if (v31 == 1)
      {
        sub_100003ABC(&qword_100613620);
        v32 = v42;
        v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = v37;
        (*(v32 + 16))(v34 + v33, v12, v29);
        v26.super.isa = sub_1004BC284().super.isa;

        if (v30)
        {
          if (v30 == 1)
          {
            [v46 insertRowsAtIndexPaths:v26.super.isa withRowAnimation:100];
          }

          else
          {
            [v46 reloadRowsAtIndexPaths:v26.super.isa withRowAnimation:100];
          }
        }

        else
        {
          [v46 deleteRowsAtIndexPaths:v26.super.isa withRowAnimation:100];
        }

        v12 = v39;
        a4 = v40;
        v14 = v29;
        v25 = v44;
      }

      else
      {
        v21 = v41;
        sub_1004B6FF4();
        v22 = v15;
        v23 = a4;
        isa = sub_1004B6FD4().super.isa;
        v14 = v29;
        v25 = v44;
        (*v44)(v21, v14);
        v26.super.isa = sub_1004B6FD4().super.isa;
        [v46 moveRowAtIndexPath:isa toIndexPath:v26.super.isa];

        a4 = v23;
        v15 = v22;
      }

      (*v25)(v12, v14);
      result = sub_1004BC394();
      ++v20;
    }

    while (v28 != result);
  }

  return result;
}

uint64_t sub_1003EA910(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1003EA964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC304();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1004BC3B4();
    return v8;
  }

  return result;
}

uint64_t sub_1003EAA8C()
{

  return swift_deallocObject();
}

uint64_t sub_1003EAAC4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 56))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1003EAB10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003EAB2C()
{

  return swift_deallocObject();
}

uint64_t sub_1003EABB8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003EAC40(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
  }

  v8 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1003EADA4(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 24) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *(a1 + v9) = v14;
              }

              else
              {
                *(a1 + v9) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *(a1 + v9) = 0;
  }

  else if (v12)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 24) & ~v8;

  v18(v19);
}

uint64_t initializeBufferWithCopyOfBuffer for CollectionComparisonOperationType(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t ControlEventHandler.__allocating_init<A>(control:events:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ControlEventHandler.init<A>(control:events:handler:)(a1, a2, a3, a4, a5);
  return v10;
}

void *ControlEventHandler.init<A>(control:events:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5[3] = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v5[4] = sub_1003EB254;
  v5[5] = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    [v13 addTarget:v5 action:"handleActionFromControl:" forControlEvents:a2];
  }

  return v5;
}

void sub_1003EB198(void *a1, void (*a2)(uint64_t))
{
  v4 = swift_dynamicCastUnknownClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    a2(v5);
  }
}

uint64_t sub_1003EB21C()
{

  return swift_deallocObject();
}

uint64_t ControlEventHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t ControlEventHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void ControlEventHandling<>.on(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_100009130(0, &qword_100613628);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;

  v12 = sub_1004BCFD4();
  [v5 addAction:v12 forControlEvents:{a1, 0, 0, 0, sub_1003EB704, v11}];
}

void sub_1003EB4D0(void *a1, uint64_t a2, void (*a3)(void *))
{
  if ([a1 sender])
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_1003EB8DC(v8);
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_9;
  }

  sub_100009130(0, &qword_100613718);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  Strong = v5;
LABEL_9:
  a3(Strong);
}

void sub_1003EB5D0(void *a1, uint64_t a2, void (*a3)(void *))
{
  if ([a1 sender])
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_1003EB8DC(v8);
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  Strong = v5;
LABEL_9:
  a3(Strong);
}

uint64_t sub_1003EB6C4()
{

  return swift_deallocObject();
}

void sub_1003EB710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100009130(0, &qword_100613628);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;

  v10 = sub_1004BCFD4();
  [v7 addAction:v10 forControlEvents:{a1, 0, 0, 0, sub_1003EB8D0, v9}];
}

uint64_t sub_1003EB858()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1003EB890()
{

  return swift_deallocObject();
}

uint64_t sub_1003EB8DC(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006143E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Datavault.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v4 = sub_1004B6B04();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Datavault.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  return sub_1003EBA18(v1 + v3, a1);
}

uint64_t sub_1003EBA18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100613720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Datavault.logger.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_1003EBAE8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1003EBAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100613720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *Datavault.__allocating_init(url:storageClass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004B6B04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004B6AA4();
  v12 = v11;
  (*(v7 + 16))(v9, a1, v6);
  swift_allocObject();
  v13 = sub_1003EBE8C(v10, v12, v9, a2, a3);
  (*(v7 + 8))(a1, v6);
  return v13;
}

void *Datavault.__allocating_init(path:storageClass:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1004B6B04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  sub_1004B6A14();
  (*(v9 + 16))(v11, v14, v8);
  swift_allocObject();
  v15 = sub_1003EBE8C(a1, a2, v11, a3, a4);
  (*(v9 + 8))(v14, v8);
  return v15;
}

void *sub_1003EBE8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a5;
  v84 = a4;
  v85 = a1;
  v94 = a2;
  v86 = *v5;
  v7 = sub_1004B80B4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v76[-v13];
  __chkstk_darwin(v12);
  v16 = &v76[-v15];
  v17 = sub_1004B6B04();
  v90 = *(v17 - 8);
  v91 = v17;
  __chkstk_darwin(v17);
  v19 = &v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  v21 = *(v8 + 56);
  v93 = v5;
  v21(v5 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger, 1, 1, v7);
  v92 = a3;
  sub_1004B6A74();
  v22 = [objc_opt_self() defaultManager];
  v89 = v19;
  v23 = v87;
  NSFileManager.createDirectoryIfNeeded(at:)();
  v87 = v23;
  if (!v23)
  {
    v28 = v11;
    v29 = v16;
    v83 = v20;
    v81 = v14;
    v96[0] = 0;
    v30 = v85;
    v31 = v94;
    v32 = sub_1004BBE24();
    v82 = v22;
    [v22 fileExistsAtPath:v32 isDirectory:v96];

    if (v96[0] == 1)
    {
      sub_1004BBF54();
      sub_1004BBF54();
      v33 = rootless_check_datavault_flag();

      if (v33)
      {
        v34 = v83;
        v35 = v93;
        swift_beginAccess();
        v36 = v35 + v34;
        v24 = v35;
        v37 = v7;
        v80 = *(v8 + 48);
        if (!v80(v36, 1, v7))
        {
          v38 = v29;
          (*(v8 + 16))(v29, v24 + v83, v37);

          v78 = v37;
          v39 = sub_1004B8094();
          v40 = sub_1004BC9A4();

          v77 = v40;
          v79 = v39;
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v95[0] = v42;
            *v41 = 136315138;
            *(v41 + 4) = sub_10040CE44(v85, v94, v95);
            v43 = v79;
            _os_log_impl(&_mh_execute_header, v79, v77, "Found unsecure directory %s attempting to convert to datavault", v41, 0xCu);
            sub_100004C6C(v42);
          }

          else
          {
          }

          v37 = v78;
          (*(v8 + 8))(v38, v78);
        }

        v61 = v37;
        sub_1004BBF54();
        sub_1004BBF54();

        v62 = rootless_convert_to_datavault();

        if (v62)
        {

          v63 = sub_1004B8474();
          sub_1003ECD18();
          swift_allocError();
          *v64 = v63;
          *(v64 + 4) = 1;
          swift_willThrow();
          v22 = v82;
          goto LABEL_4;
        }

        v65 = v24;
        v66 = v83;
        swift_beginAccess();
        if (v80(v65 + v66, 1, v37))
        {
          v56 = v90;
          v57 = v91;
          (*(v90 + 8))(v89, v91);
          swift_endAccess();

          v31 = v94;
          v24 = v65;
        }

        else
        {
          v67 = v8;
          v68 = v81;
          (*(v8 + 16))(v81, v65 + v66, v37);
          swift_endAccess();
          v69 = v94;

          v70 = sub_1004B8094();
          v71 = sub_1004BC9A4();

          v24 = v65;
          if (os_log_type_enabled(v70, v71))
          {
            v72 = v68;
            v73 = v67;
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v95[0] = v75;
            *v74 = 136315138;
            *(v74 + 4) = sub_10040CE44(v85, v69, v95);
            _os_log_impl(&_mh_execute_header, v70, v71, "Datavault directory conversion successful %s", v74, 0xCu);
            sub_100004C6C(v75);

            (*(v73 + 8))(v72, v61);
          }

          else
          {

            (*(v67 + 8))(v68, v61);
          }

          v56 = v90;
          v57 = v91;
          (*(v90 + 8))(v89, v91);
          v31 = v69;
        }

LABEL_20:
        (*(v56 + 32))(v24 + OBJC_IVAR____TtC14MusicUtilities9Datavault_url, v92, v57);
        v24[2] = v85;
        v24[3] = v31;
        return v24;
      }

      v56 = v90;
      v57 = v91;
      (*(v90 + 8))(v89, v91);

      v31 = v94;
    }

    else
    {
      v44 = v83;
      v45 = v93;
      swift_beginAccess();
      v46 = v8;
      v47 = v7;
      if (!(*(v8 + 48))(&v45[v44], 1, v7))
      {
        v48 = v93 + v44;
        v49 = v28;
        (*(v8 + 16))(v28, v48, v7);

        v50 = sub_1004B8094();
        v51 = sub_1004BC9A4();

        v52 = v50;
        if (os_log_type_enabled(v50, v51))
        {
          v53 = v46;
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v95[0] = v55;
          *v54 = 136315138;
          *(v54 + 4) = sub_10040CE44(v30, v31, v95);
          _os_log_impl(&_mh_execute_header, v52, v51, "Creating DataVault directory %s", v54, 0xCu);
          sub_100004C6C(v55);

          (*(v53 + 8))(v49, v47);
        }

        else
        {

          (*(v46 + 8))(v28, v47);
        }
      }

      sub_1004B8494();
      sub_1004B84A4();
      sub_1004B84B4();
      sub_1004BBF54();
      sub_1004BBF54();

      v58 = rootless_mkdir_datavault();

      if (v58)
      {

        v59 = sub_1004B8474();
        sub_1003ECD18();
        swift_allocError();
        *v60 = v59;
        *(v60 + 4) = 0;
        swift_willThrow();
        v22 = v82;
        goto LABEL_3;
      }

      v56 = v90;
      v57 = v91;
      (*(v90 + 8))(v89, v91);
    }

    v24 = v93;
    goto LABEL_20;
  }

LABEL_3:
  v24 = v93;
LABEL_4:

  v25 = v91;
  v26 = *(v90 + 8);
  v26(v92, v91);
  v26(v89, v25);
  sub_1003EC998(v24 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t Datavault.deinit()
{

  v1 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v2 = sub_1004B6B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1003EC998(v0 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);
  return v0;
}

uint64_t sub_1003EC998(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100613720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Datavault.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v2 = sub_1004B6B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1003EC998(v0 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Datavault()
{
  result = qword_100613750;
  if (!qword_100613750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003ECB08()
{
  sub_1004B6B04();
  if (v0 <= 0x3F)
  {
    sub_1003ECBE0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003ECBE0()
{
  if (!qword_100613760)
  {
    sub_1004B80B4();
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_100613760);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Datavault.Error(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Datavault.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Datavault.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003ECCD8(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1003ECCF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

unint64_t sub_1003ECD18()
{
  result = qword_1006137F0;
  if (!qword_1006137F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006137F0);
  }

  return result;
}

id sub_1003ECE30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayLinkHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003ECE7C()
{
  result = swift_slowAlloc();
  qword_1006137F8 = result;
  return result;
}

id CADisplayLink.init(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayLinkHandler();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC14MusicUtilitiesP33_A1FC62D80C043A876151FA559C82DA5918DisplayLinkHandler__handler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v14.receiver = v5;
  v14.super_class = v4;

  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v7 selector:{"handleDisplayLinkFired:", v14.receiver, v14.super_class}];
  v9 = qword_100612FD8;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_1006137F8;
  v12 = v7;
  objc_setAssociatedObject(v10, v11, v12, 1);

  return v10;
}

uint64_t EdgePairSequence.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1004BD174();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - v7;
  v9 = *(v4 - 8);
  __chkstk_darwin(v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *v2;
  sub_1004BC3B4();
  swift_getWitnessTable();
  if (sub_1004BC7E4())
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    swift_getWitnessTable();
    v18[0] = v5;
    sub_1004BC854();
    swift_getWitnessTable();
    sub_1004BC864();
    v15 = v18[0];
    v16 = swift_getTupleTypeMetadata2();
    v17 = *(v16 + 48);
    (*(v9 + 32))(a2, v12, v4);
    (*(v6 + 32))(a2 + v17, v8, v15);
    return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }
}