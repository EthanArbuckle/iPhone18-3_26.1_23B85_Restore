@interface HKLinkSetWrapper
- (HKLinkSetWrapper)init;
- (HKLinkSetWrapper)initWithLinks:(id)a3;
- (HKLinkSetWrapper)initWithSerializedData:(id)a3 error:(id *)a4;
- (NSArray)elements;
- (NSString)description;
- (id)appendingElement:(id)a3;
- (id)insertingElement:(id)a3 index:(int64_t)a4;
- (id)mergingLinkSet:(id)a3;
- (id)movingElementFrom:(int64_t)a3 to:(int64_t)a4;
- (id)removingAll;
- (id)removingAtIndex:(int64_t)a3;
- (id)removingLinksWithUUID:(id)a3;
- (id)replacingElementAt:(int64_t)a3 withElement:(id)a4;
- (id)retargetingLinksWithUUID:(id)a3 newUUID:(id)a4;
- (id)serializedDataWithError:(id *)a3;
- (id)swappingElementsAt:(int64_t)a3 andAt:(int64_t)a4;
- (int64_t)count;
- (int64_t)hash;
@end

@implementation HKLinkSetWrapper

- (HKLinkSetWrapper)initWithLinks:(id)a3
{
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  v3 = sub_191CC68E8();
  return LinkSetWrapper.init(_:)(v3);
}

- (HKLinkSetWrapper)initWithSerializedData:(id)a3 error:(id *)a4
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3;
  v15 = sub_191CC6048();
  v17 = v16;

  sub_191C0492C(v15, v17);
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C);
  sub_191CC6568();
  (*(v9 + 32))(self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v13, v8);
  v21.receiver = self;
  v21.super_class = ObjectType;
  v18 = [(HKLinkSetWrapper *)&v21 init];
  sub_191C049D8(v15, v17);
  return v18;
}

- (id)serializedDataWithError:(id *)a3
{
  v4 = sub_191CC6548();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1EADCA120;
  v11 = self;
  if (v10 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v9, *MEMORY[0x1E6995288], v4);
  sub_191C0E22C(0);
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C);
  v12 = sub_191CC6558();
  v14 = v13;

  (*(v5 + 8))(v9, v4);
  v15 = sub_191CC6028();
  sub_191C049D8(v12, v14);

  return v15;
}

- (NSArray)elements
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  v3 = self;
  sub_191CC6428();

  v4 = sub_191CC68D8();

  return v4;
}

- (int64_t)count
{
  sub_191C0E22C(0);
  v3 = self;
  v4 = sub_191CC6438();

  return v4;
}

- (id)appendingElement:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x1EEE9AC00](v5, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v24 - v14;
  v16 = v7[2];
  v16(&v24 - v14, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v6);
  v17 = a3;
  v18 = self;
  sub_191CC6458();
  v16(v12, v15, v6);
  v19 = ObjectType;
  v20 = objc_allocWithZone(ObjectType);
  v16(&v20[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v12, v6);
  v26.receiver = v20;
  v26.super_class = v19;
  v21 = [(HKLinkSetWrapper *)&v26 init];

  v22 = v7[1];
  v22(v12, v6);
  v22(v15, v6);

  return v21;
}

- (id)insertingElement:(id)a3 index:(int64_t)a4
{
  v25 = a4;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = v8[8];
  v11 = MEMORY[0x1EEE9AC00](v6, v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v25 - v15;
  v17 = v8[2];
  v17(&v25 - v15, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v7);
  v18 = a3;
  v19 = self;
  sub_191CC6468();
  v17(v13, v16, v7);
  v20 = ObjectType;
  v21 = objc_allocWithZone(ObjectType);
  v17(&v21[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v13, v7);
  v27.receiver = v21;
  v27.super_class = v20;
  v22 = [(HKLinkSetWrapper *)&v27 init];

  v23 = v8[1];
  v23(v13, v7);
  v23(v16, v7);

  return v22;
}

- (id)movingElementFrom:(int64_t)a3 to:(int64_t)a4
{
  v6 = self;
  v7 = LinkSetWrapper.movingElement(from:to:)(a3, a4);

  return v7;
}

- (id)removingAtIndex:(int64_t)a3
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x1EEE9AC00](v5, v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22 - v14;
  v16 = v7[2];
  v16(&v22 - v14, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v6);
  v17 = self;
  sub_191CC6478();
  v16(v12, v15, v6);
  v18 = objc_allocWithZone(ObjectType);
  v16(&v18[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v12, v6);
  v22.receiver = v18;
  v22.super_class = ObjectType;
  v19 = [(HKLinkSetWrapper *)&v22 init];

  v20 = v7[1];
  v20(v12, v6);
  v20(v15, v6);

  return v19;
}

- (id)removingLinksWithUUID:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = v6[8];
  v9 = MEMORY[0x1EEE9AC00](v4, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v26 - v13;
  v29 = sub_191CC61A8();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v29, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191CC6188();
  v20 = v6[2];
  v20(v14, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v5);
  v30 = v19;
  v27 = self;
  sub_191CC64C8();
  v20(v11, v14, v5);
  v21 = ObjectType;
  v22 = objc_allocWithZone(ObjectType);
  v20(&v22[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v11, v5);
  v31.receiver = v22;
  v31.super_class = v21;
  v23 = [(HKLinkSetWrapper *)&v31 init];
  v24 = v6[1];
  v24(v11, v5);
  v24(v14, v5);

  (*(v15 + 8))(v19, v29);

  return v23;
}

- (id)removingAll
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = v6[8];
  v9 = MEMORY[0x1EEE9AC00](v4, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v21 - v13;
  v15 = v6[2];
  v15(&v21 - v13, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v5);
  v16 = self;
  sub_191CC64D8();
  v15(v11, v14, v5);
  v17 = objc_allocWithZone(ObjectType);
  v15(&v17[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v11, v5);
  v21.receiver = v17;
  v21.super_class = ObjectType;
  v18 = [(HKLinkSetWrapper *)&v21 init];

  v19 = v6[1];
  v19(v11, v5);
  v19(v14, v5);

  return v18;
}

- (id)replacingElementAt:(int64_t)a3 withElement:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = LinkSetWrapper.replacingElementAt(_:withElement:)(a3, v6);

  return v8;
}

- (id)retargetingLinksWithUUID:(id)a3 newUUID:(id)a4
{
  v5 = sub_191CC61A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19 - v13;
  sub_191CC6188();
  sub_191CC6188();
  v15 = self;
  v16 = LinkSetWrapper.retargetingLinksWithUUID(_:newUUID:)(v14, v11);

  v17 = *(v6 + 8);
  v17(v11, v5);
  v17(v14, v5);

  return v16;
}

- (id)swappingElementsAt:(int64_t)a3 andAt:(int64_t)a4
{
  v23[1] = a4;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = v8[8];
  v11 = MEMORY[0x1EEE9AC00](v6, v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v23 - v15;
  v17 = v8[2];
  v17(v23 - v15, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v7);
  v18 = self;
  sub_191CC6498();
  v17(v13, v16, v7);
  v19 = objc_allocWithZone(ObjectType);
  v17(&v19[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v13, v7);
  v24.receiver = v19;
  v24.super_class = ObjectType;
  v20 = [(HKLinkSetWrapper *)&v24 init];

  v21 = v8[1];
  v21(v13, v7);
  v21(v16, v7);

  return v20;
}

- (id)mergingLinkSet:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x1EEE9AC00](v5, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v24 - v14;
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C);
  v16 = a3;
  v17 = self;
  sub_191CC6578();
  v18 = v7[2];
  v18(v12, v15, v6);
  v19 = ObjectType;
  v20 = objc_allocWithZone(ObjectType);
  v18(&v20[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v12, v6);
  v26.receiver = v20;
  v26.super_class = v19;
  v21 = [(HKLinkSetWrapper *)&v26 init];

  v22 = v7[1];
  v22(v12, v6);
  v22(v15, v6);

  return v21;
}

- (NSString)description
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  v3 = self;
  sub_191CC6428();
  MEMORY[0x193B02090]();

  v4 = sub_191CC6778();

  return v4;
}

- (int64_t)hash
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  v3 = self;
  sub_191CC6428();
  sub_191C0DD28(&qword_1EADCACC8, type metadata accessor for UserDomainConceptLinkStructWrapper);
  v4 = sub_191CC6998();

  return v4;
}

- (HKLinkSetWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end