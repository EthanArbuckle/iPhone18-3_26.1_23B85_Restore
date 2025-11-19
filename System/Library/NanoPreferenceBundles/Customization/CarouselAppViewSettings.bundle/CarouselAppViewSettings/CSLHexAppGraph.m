@interface CSLHexAppGraph
+ (id)unarchiveFromDictionaryRepresentation:(id)a3;
+ (id)unarchiveFromPropertyList:(id)a3;
- (BOOL)addNode:(id)a3;
- (BOOL)checkHexes:()unordered_set<CSL:()std:()std:(std:(id)a4 :(id)a5 allocator<CSL::Hex>> *)a3 :equal_to<CSL::Hex> :hash<CSL::Hex> :Hex connectedNodes:disconnectedNodes:;
- (BOOL)checkNode:(id)a3 connectedNodes:(id)a4 disconnectedNodes:(id)a5;
- (BOOL)integrityCheckIgnoringNode:(id)a3 shouldCheckNeighbors:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLonelyHex:(Hex)a3;
- (CSLHexAppGraph)init;
- (CSLHexAppGraph)initWithCoder:(id)a3;
- (CSLHexAppGraphDelegate)delegate;
- (Hex)firstGoodEmptyHex;
- (NSString)abbreviatedDescription;
- (id).cxx_construct;
- (id)_emplaceNodeAtHex:(Hex)a3 withBundleIdentifier:(id)a4;
- (id)addNodeWithBundleIdentifier:(id)a3;
- (id)archiveToPropertyList;
- (id)changeToMatch:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)disconnectedNodesCheckingHexes:()unordered_set<CSL:()std:()std:(std::allocator<CSL::Hex>> *)a3 :equal_to<CSL::Hex> :hash<CSL::Hex> :Hex;
- (id)initFromPropertyList:(id)a3;
- (id)initVerticalOnly:(BOOL)a3;
- (id)migrateToVerticalOnly;
- (id)nodeAtHex:(Hex)a3;
- (id)nodeWithBundleIdentifier:(id)a3;
- (id)removeNodeAtHex:(Hex)a3;
- (int64_t)neighborCountOfHex:(Hex)a3 upToMinimumNeighbors:(int64_t)a4 withinRange:(unint64_t)a5;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)calculateNeighborCounts;
- (void)collapseAll343Holes;
- (void)collapseLonelyNodes:(id)a3;
- (void)collapseLonelyNodes:(id)a3 connectedNodes:(id)a4 disconnectedNodes:(id)a5;
- (void)collapseToHex:(Hex)a3 ignoringNode:(id)a4;
- (void)commitMovedNode:(id)a3 withReason:(unint64_t)a4;
- (void)decrementNeighborCountsForHex:(Hex)a3;
- (void)encodeWithCoder:(id)a3;
- (void)incrementNeighborCountsForHex:(Hex)a3;
- (void)move343Node:(id)a3 toHex:(Hex)a4 final:(BOOL)a5;
- (void)moveNode:(id)a3 toHex:(Hex)a4;
- (void)moveNodesWithBundleIdentifiers:(id)a3 toStartingHex:(Hex)a4 forReason:(unint64_t)a5;
- (void)removeNode:(id)a3;
- (void)removeNodeObjectForKey:(Hex)a3;
- (void)removeNodeUsingIterator:()__hash_map_const_iterator<std:(CSLHexAppNode *)__unsafe_unretained> :(void *> *>>)a3 __hash_const_iterator<std::__hash_node<std::__hash_value_type<CSL::Hex;
- (void)removeNodeWithoutReflow:(id)a3;
- (void)removeNodeWithoutReflowUsingIterator:()__hash_map_const_iterator<std:(CSLHexAppNode *)__unsafe_unretained> :(void *> *>>)a3 __hash_const_iterator<std::__hash_node<std::__hash_value_type<CSL::Hex;
- (void)resetToDefaults:(id)a3;
- (void)revertMove;
- (void)setNode:(id)a3 toHex:(Hex)a4;
- (void)setNodeObject:(id)a3 forKey:(Hex)a4;
- (void)updateNormalizedRadius;
@end

@implementation CSLHexAppGraph

- (id)initVerticalOnly:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CSLHexAppGraph;
  v4 = [(CSLHexAppGraph *)&v10 init];
  if (v4)
  {
    v5 = +[NSMutableSet set];
    changedNodes = v4->_changedNodes;
    v4->_changedNodes = v5;

    v7 = +[NSMutableDictionary dictionary];
    nodesByBundle = v4->_nodesByBundle;
    v4->_nodesByBundle = v7;

    *&v4->_neighborCountValid = 257;
    v4->_isVerticalOnly = a3;
  }

  return v4;
}

- (CSLHexAppGraph)init
{
  v4 = [NSString stringWithFormat:@"bridge usage should be calling initVerticalOnly: not init"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"CSLHexAppGraph.mm";
    v18 = 1024;
    v19 = 107;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  sub_17E6C(v27, v4 + 32);
  if (self->_nodes.__table_.__size_ == v29)
  {
    v5 = [BSEqualsBuilder builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    isVerticalOnly = self->_isVerticalOnly;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_EFF8;
    v25[3] = &unk_3CB68;
    v7 = v4;
    v26 = v7;
    v8 = [v5 appendBool:isVerticalOnly counterpart:v25];
    lastReorderReason = self->_lastReorderReason;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_F000;
    v23[3] = &unk_3CB90;
    v24 = v7;
    v10 = [v5 appendUnsignedInteger:lastReorderReason counterpart:v23];
    next = self->_nodes.__table_.__first_node_.__next_;
    if (next)
    {
      for (i = v28; i; i = *i)
      {
        v13 = next[3];
        v14 = next[3];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_F008;
        v20[3] = &unk_3CBB8;
        v15 = v13;
        v21 = v15;
        v16 = v14;
        v22 = v16;
        v17 = [v5 appendEqualsBlocks:{v20, 0}];

        next = *next;
        if (!next)
        {
          break;
        }
      }
    }

    v18 = [v5 isEqual];
  }

  else
  {
    v18 = 0;
  }

  sub_4470(v27);

  return v18;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(BSHashBuilder);
  v4 = [v3 appendBool:self->_isVerticalOnly];
  v5 = [v3 appendUnsignedInteger:self->_lastReorderReason];
  for (i = self->_nodes.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = i[3];
    v8 = [v3 appendUnsignedInteger:{objc_msgSend(v7, "allPropertiesHash")}];
  }

  v9 = [v3 hash];

  return v9;
}

- (id)addNodeWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[CSLHexAppNode alloc] initWithBundleIdentifier:v4 hex:[(CSLHexAppGraph *)self firstGoodEmptyHex]];
  [(CSLHexAppNode *)v5 setDirectPlacementReason:7];
  [(CSLHexAppGraph *)self addNode:v5];

  return v5;
}

- (BOOL)addNode:(id)a3
{
  v4 = a3;
  v21 = [v4 hex];
  v5 = sub_40D8(&self->_nodes.__table_.__bucket_list_.__ptr_, &v21);
  if (v5)
  {
    v6 = cslprf_icon_field_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_23C38(v4, v5);
    }

    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = [v4 bundleIdentifier];
    v6 = [(CSLHexAppGraph *)self nodeWithBundleIdentifier:v8];

    v7 = v6 == 0;
    if (v6)
    {
      v9 = cslprf_icon_field_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_23CB0();
      }
    }

    else
    {
      if (![v4 placementReason])
      {
        [v4 setDirectPlacementReason:7];
      }

      neighborCountValid = self->_neighborCountValid;
      [(CSLHexAppGraph *)self setNodeObject:v4 forKey:v21];
      v11 = [(CSLHexAppGraph *)self nodesByBundle];
      v12 = [v4 bundleIdentifier];
      [v11 setObject:v4 forKey:v12];

      if (neighborCountValid)
      {
        [(CSLHexAppGraph *)self incrementNeighborCountsForHex:v21];
        self->_neighborCountValid = 1;
      }

      if ([(CSLHexAppGraph *)self isLonelyHex:v21])
      {
        v13 = [NSMutableSet setWithObject:v4];
        [(CSLHexAppGraph *)self collapseLonelyNodes:v13];

        v14 = [v4 savedHex];
        if (v21 != v14)
        {
          v15 = cslprf_icon_field_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v19 = [v4 savedHex];
            sub_F530(&v19, &__p);
            v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 138412546;
            v24 = v4;
            v25 = 2080;
            v26 = v18;
            _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%@ is dirty, saved hex: %s", buf, 0x16u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        [v4 commitHexForReason:objc_msgSend(v4 isDirect:{"placementReason"), 1}];
      }

      [(CSLHexAppGraph *)self integrityCheckIgnoringNode:0 shouldCheckNeighbors:1];
      v9 = [(CSLHexAppGraph *)self delegate];
      v22 = v4;
      v16 = [NSArray arrayWithObjects:&v22 count:1];
      [v9 hexAppGraph:self addedNodes:v16 removedNodes:0 movedNodes:0];
    }
  }

  return v7;
}

- (Hex)firstGoodEmptyHex
{
  v9 = 0u;
  v10 = 0x7FFFFFFFLL;
  *v11 = 1;
  *&v11[12] = 0;
  *&v11[4] = 0;
  *&v11[20] = 0x7FFFFFFF00000024;
  *&v11[28] = 0;
  v8 = 0xFFFFFFFE00000000;
  do
  {
    if (self->_isVerticalOnly)
    {
      v3 = sub_F8B4(&v8);
    }

    else
    {
      size = self->_nodes.__table_.__size_;
      if (!size)
      {
        v4 = 0;
        goto LABEL_7;
      }

      v3 = sub_F914(&v9);
    }

    size = HIDWORD(v3);
LABEL_7:
    v6 = (size | (v4 << 32));
  }

  while ([(CSLHexAppGraph *)self containsNodeAtHex:v6, v8, v9, v10, *v11, *&v11[16]]|| !self->_isVerticalOnly && [(CSLHexAppGraph *)self isLonelyHex:v6]);
  return v6;
}

- (void)removeNode:(id)a3
{
  v4 = a3;
  v5 = [v4 hex];
  [(CSLHexAppGraph *)self removeNodeUsingIterator:sub_40D8(&self->_nodes.__table_.__bucket_list_.__ptr_, &v5)];
}

- (id)removeNodeAtHex:(Hex)a3
{
  v6 = a3;
  v4 = sub_40D8(&self->_nodes.__table_.__bucket_list_.__ptr_, &v6);
  if (v4)
  {
    [(CSLHexAppGraph *)self removeNodeUsingIterator:v4];
  }

  return 0;
}

- (void)removeNodeUsingIterator:()__hash_map_const_iterator<std:(CSLHexAppNode *)__unsafe_unretained> :(void *> *>>)a3 __hash_const_iterator<std::__hash_node<std::__hash_value_type<CSL::Hex
{
  if (a3.var0.var0)
  {
    v5 = *(a3.var0.var0 + 3);
    v6 = v5;
    if (self->_isVerticalOnly || [v5 hex])
    {
      [(NSMutableSet *)self->_changedNodes removeAllObjects];
      v7 = [(CSLHexAppGraph *)self nodesByBundle];
      v8 = [v6 bundleIdentifier];
      [v7 removeObjectForKey:v8];

      v9 = [v6 hex];
      [(CSLHexAppGraph *)self removeNodeWithoutReflowUsingIterator:a3.var0.var0];
      [(CSLHexAppGraph *)self collapseToHex:v9 ignoringNode:0];
      v10 = [(CSLHexAppGraph *)self delegate];
      v13 = v6;
      v11 = [NSArray arrayWithObjects:&v13 count:1];
      v12 = [(NSMutableSet *)self->_changedNodes allObjects];
      [v10 hexAppGraph:self addedNodes:0 removedNodes:v11 movedNodes:v12];
    }

    else
    {
      v10 = cslprf_icon_field_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_23D24();
      }
    }
  }

  else
  {
    v6 = cslprf_icon_field_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_23D94();
    }
  }
}

- (void)removeNodeWithoutReflow:(id)a3
{
  v4 = a3;
  v6 = [v4 hex];
  v5 = sub_40D8(&self->_nodes.__table_.__bucket_list_.__ptr_, &v6);
  if (v5)
  {
    [(CSLHexAppGraph *)self removeNodeWithoutReflowUsingIterator:v5];
  }
}

- (void)removeNodeWithoutReflowUsingIterator:()__hash_map_const_iterator<std:(CSLHexAppNode *)__unsafe_unretained> :(void *> *>>)a3 __hash_const_iterator<std::__hash_node<std::__hash_value_type<CSL::Hex
{
  v5 = cslprf_icon_field_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_23DD4(a3.var0.var0, v5, v6, v7, v8, v9, v10, v11);
  }

  sub_4194(&self->_nodes.__table_.__bucket_list_.__ptr_, a3.var0.var0);
  *&self->_neighborCountValid = 256;
}

- (void)collapseToHex:(Hex)a3 ignoringNode:(id)a4
{
  v30 = a3;
  v6 = a4;
  if (self->_isVerticalOnly)
  {
    [(CSLHexAppGraph *)self collapse343ToHex:a3 ignoringNode:v6];
  }

  else
  {
    v7 = cslprf_icon_field_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_F530(&v30, &v29);
      sub_23E44(&v29);
    }

    v8 = v30;
    v28 = v30;
LABEL_6:
    v24 = v8;
    v25 = 0;
    v26 = sub_17490(v8, -v8 - HIDWORD(v8), SHIDWORD(v8));
    while (1)
    {
      *v27 = sub_104B4(&v24);
      *&v27[8] = v9;
      if ((v27[0] & 1) == 0)
      {
        break;
      }

      v10 = [(CSLHexAppGraph *)self nodeAtHex:*&v27[4]];
      if (v10)
      {
        v11 = cslprf_icon_field_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_F530(&v28, __p);
          if ((SBYTE7(v22) & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 138412546;
          *(buf.__r_.__value_.__r.__words + 4) = v10;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
          _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "[collapse] move %@ -> %s", &buf, 0x16u);
          if (SBYTE7(v22) < 0)
          {
            operator delete(__p[0]);
          }
        }

        [(CSLHexAppGraph *)self moveNode:v10 toHex:v28];
        v28 = *&v27[4];

        v8 = v28;
        goto LABEL_6;
      }
    }

    v13 = cslprf_icon_field_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_F530(&v28, &buf);
      sub_23E9C(&buf);
    }

    *__p = 0u;
    v22 = 0u;
    v23 = 1065353216;
    v14 = +[NSMutableSet set];
    v24 = v28;
    v25 = 0;
    while (1)
    {
      *v27 = sub_106DC(&v24);
      *&v27[8] = v15;
      if ((v27[0] & 1) == 0)
      {
        break;
      }

      v16 = [(CSLHexAppGraph *)self nodeAtHex:*&v27[4]];
      if (v16)
      {
        sub_17570(__p, &v27[4]);
        if ([(CSLHexAppGraph *)self isLonelyHex:*&v27[4]])
        {
          v17 = cslprf_icon_field_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *v31 = 138412290;
            v32 = v16;
            _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "[lonely] add %@", v31, 0xCu);
          }

          [v14 addObject:v16];
        }
      }
    }

    v18 = +[NSMutableSet set];
    v19 = +[NSMutableSet set];
    sub_1811C(v20, __p);
    [(CSLHexAppGraph *)self checkHexes:v20 connectedNodes:v18 disconnectedNodes:v19];
    sub_4470(v20);
    [v14 unionSet:v19];
    [(CSLHexAppGraph *)self integrityCheckIgnoringNode:v6 shouldCheckNeighbors:0];
    [(CSLHexAppGraph *)self collapseLonelyNodes:v14 connectedNodes:v18 disconnectedNodes:v19];
    [(CSLHexAppGraph *)self integrityCheckIgnoringNode:v6 shouldCheckNeighbors:1];

    sub_4470(__p);
  }
}

- (id)disconnectedNodesCheckingHexes:()unordered_set<CSL:()std:()std:(std::allocator<CSL::Hex>> *)a3 :equal_to<CSL::Hex> :hash<CSL::Hex> :Hex
{
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableSet set];
  for (i = a3->var0.__first_node_.__next_; i; i = *i)
  {
    v8 = [(CSLHexAppGraph *)self nodeAtHex:i[2]];
    if (v8)
    {
      [(CSLHexAppGraph *)self checkNode:v8 connectedNodes:v6 disconnectedNodes:v5];
    }
  }

  return v5;
}

- (BOOL)checkHexes:()unordered_set<CSL:()std:()std:(std:(id)a4 :(id)a5 allocator<CSL::Hex>> *)a3 :equal_to<CSL::Hex> :hash<CSL::Hex> :Hex connectedNodes:disconnectedNodes:
{
  v8 = a4;
  v9 = a5;
  next = a3->var0.__first_node_.__next_;
  if (next)
  {
    v11 = 0;
    do
    {
      v12 = [(CSLHexAppGraph *)self nodeAtHex:next[2]];
      if (v12)
      {
        v11 |= [(CSLHexAppGraph *)self checkNode:v12 connectedNodes:v8 disconnectedNodes:v9];
      }

      next = *next;
    }

    while (next);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

- (BOOL)checkNode:(id)a3 connectedNodes:(id)a4 disconnectedNodes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 hex];
  v12 = +[NSMutableSet set];
  v31 = 0;
  v32 = v11;
  __p = 0;
  __src = 0;
  sub_18194(&__p, &v32, v33, 1uLL);
  v14 = __p;
  v13 = __src;
  if (__p == __src)
  {
LABEL_16:
    v25 = 0;
    goto LABEL_20;
  }

  while (1)
  {
    v15 = *v14;
    v16 = v13 - (v14 + 1);
    if (v13 != (v14 + 1))
    {
      memmove(v14, v14 + 1, v13 - (v14 + 1));
    }

    __src = v14 + v16;
    v17 = [(CSLHexAppGraph *)self nodeAtHex:v15];
    if (!v17 || ([v12 containsObject:v17] & 1) != 0)
    {
      goto LABEL_15;
    }

    if (!v15 || [v9 containsObject:v17])
    {
      [v9 unionSet:v12];
      [v12 removeAllObjects];
      v25 = 1;
      goto LABEL_19;
    }

    if ([v10 containsObject:v17])
    {
      break;
    }

    [v12 addObject:v17];
    v18 = (v15 & 0xFFFFFFFF00000000) + 0x100000000;
    v19 = (v15 - 1);
    v20 = v18 | v19;
    v21 = (v15 + 1);
    v32 = v18 & 0xFFFFFFFF00000000 | v15;
    v33[0] = v21 | v15 & 0xFFFFFFFF00000000;
    v22 = (v15 & 0xFFFFFFFF00000000) - 0x100000000;
    v33[1] = v22 | v21;
    v33[2] = v22 & 0xFFFFFFFF00000000 | v15;
    v33[3] = v19 | v15 & 0xFFFFFFFF00000000;
    v33[4] = v20;
    sub_174F8(v27, &v32, 6);
    if (v28)
    {
      v23 = 0;
      v24 = v28;
      do
      {
        ++v23;
        v24 = *v24;
      }

      while (v24);
    }

    else
    {
      v23 = 0;
    }

    sub_182A4(&__p, __src, v28, 0, v23);
    sub_4470(v27);
LABEL_15:

    v14 = __p;
    v13 = __src;
    if (__p == __src)
    {
      goto LABEL_16;
    }
  }

  v25 = 0;
LABEL_19:

LABEL_20:
  [v10 unionSet:v12];
  if (__p)
  {
    __src = __p;
    operator delete(__p);
  }

  return v25;
}

- (BOOL)isLonelyHex:(Hex)a3
{
  if (self->_isVerticalOnly)
  {
    return 0;
  }

  r = a3.r;
  v6 = a3.r + a3.q;
  if (a3.q >= 0)
  {
    q = a3.q;
  }

  else
  {
    q = -a3.q;
  }

  if (v6 < 0)
  {
    v6 = -v6;
  }

  if (a3.r < 0)
  {
    r = -a3.r;
  }

  v8 = q <= r ? r : q;
  v9 = v6 >= r && v6 >= q;
  v10 = v9 ? v6 : v8;
  return v10 >= 2 && [(CSLHexAppGraph *)self neighborCountOfHex:v3 upToMinimumNeighbors:v4 withinRange:?]< 2;
}

- (void)collapseLonelyNodes:(id)a3
{
  v6 = a3;
  v4 = +[NSMutableSet set];
  v5 = +[NSMutableSet set];
  [(CSLHexAppGraph *)self collapseLonelyNodes:v6 connectedNodes:v4 disconnectedNodes:v5];
}

- (void)collapseLonelyNodes:(id)a3 connectedNodes:(id)a4 disconnectedNodes:(id)a5
{
  v90 = a3;
  v91 = a4;
  v92 = a5;
  v8 = +[NSMutableSet set];
  *&v9 = 138412290;
  v87 = v9;
  while ([v90 count])
  {
    v10 = [v90 anyObject];
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v11 = v90;
    v12 = [v11 countByEnumeratingWithState:&v103 objects:v109 count:16];
    if (v12)
    {
      v13 = *v104;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v104 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v103 + 1) + 8 * i);
          v16 = [v15 hex];
          v17 = HIDWORD(v16);
          v18 = HIDWORD(v16) + v16;
          if ((v16 & 0x80000000) == 0)
          {
            v19 = v16;
          }

          else
          {
            v19 = -v16;
          }

          if (v18 < 0)
          {
            v18 = -v18;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            LODWORD(v17) = -HIDWORD(v16);
          }

          if (v19 <= v17)
          {
            v20 = v17;
          }

          else
          {
            v20 = v19;
          }

          if (v18 >= v17 && v18 >= v19)
          {
            v22 = v18;
          }

          else
          {
            v22 = v20;
          }

          v23 = [v10 hex];
          v24 = HIDWORD(v23);
          v25 = HIDWORD(v23) + v23;
          if ((v23 & 0x80000000) == 0)
          {
            v26 = v23;
          }

          else
          {
            v26 = -v23;
          }

          if (v25 < 0)
          {
            v25 = -v25;
          }

          if ((v23 & 0x8000000000000000) != 0)
          {
            LODWORD(v24) = -HIDWORD(v23);
          }

          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          if (v25 >= v24 && v25 >= v26)
          {
            v29 = v25;
          }

          else
          {
            v29 = v27;
          }

          if (v22 < v29 || v22 == v29 && [v8 containsObject:v15])
          {
            v30 = v15;

            v10 = v30;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v103 objects:v109 count:16];
      }

      while (v12);
    }

    [v11 removeObject:v10];
    [v8 addObject:v10];
    [(CSLHexAppGraph *)self checkNode:v10 connectedNodes:v91 disconnectedNodes:v92];
    if (([v92 containsObject:v10] & 1) == 0 && !-[CSLHexAppGraph isLonelyHex:](self, "isLonelyHex:", objc_msgSend(v10, "hex")))
    {
      goto LABEL_173;
    }

    v89 = [v10 hex];
    [(CSLHexAppGraph *)self removeNodeWithoutReflow:v10];
    [v91 removeObject:v10];
    [v92 removeObject:v10];
    v101 = 0;
    v102 = 0;
    *v110 = [v10 hex];
    buf.__r_.__value_.__r.__words[0] = 0;
    sub_179FC(v100, v110, &buf);
    v99[0] = 0;
    *&v99[4] = 0;
    v31 = 1;
    while (1)
    {
      v32 = v31;
      *v99 = sub_11A2C(v100);
      *&v99[8] = v33;
      if ((v99[0] & 1) == 0)
      {
        break;
      }

      v31 = 0;
      if ((v32 & 1) == 0)
      {
        v34 = [(CSLHexAppGraph *)self nodeAtHex:*&v99[4]];
        if (v34)
        {
          [(CSLHexAppGraph *)self checkNode:v34 connectedNodes:v91 disconnectedNodes:v92];
          v37 = cslprf_icon_field_log();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            *v110 = v87;
            *&v110[4] = v34;
            _os_log_debug_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "[less lonely] %@ fall complete", v110, 0xCu);
          }

          break;
        }

        v101 = 1;
        v102 = *&v99[4];
        v35 = cslprf_icon_field_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          sub_F530(&v99[4], v110);
          v36 = v110;
          if (v110[23] < 0)
          {
            v36 = *v110;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v36;
          _os_log_debug_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "[less lonely] %s unoccupied", &buf, 0xCu);
          if ((v110[23] & 0x80000000) != 0)
          {
            operator delete(*v110);
          }
        }

        v31 = 0;
      }
    }

    if (v101 == 1)
    {
      v38 = cslprf_icon_field_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_F530(&v102, v110);
        v83 = v110;
        if (v110[23] < 0)
        {
          v83 = *v110;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 138412546;
        *(buf.__r_.__value_.__r.__words + 4) = v10;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v83;
        _os_log_debug_impl(&dword_0, v38, OS_LOG_TYPE_DEBUG, "[less lonely] move %@ -> %s", &buf, 0x16u);
        if ((v110[23] & 0x80000000) != 0)
        {
          operator delete(*v110);
        }
      }

      [(CSLHexAppGraph *)self setNode:v10 toHex:v102];
      [v91 removeAllObjects];
      [v92 removeAllObjects];
    }

    else
    {
      -[CSLHexAppGraph setNode:toHex:](self, "setNode:toHex:", v10, [v10 hex]);
    }

    v39 = [(CSLHexAppGraph *)self checkNode:v10 connectedNodes:v91 disconnectedNodes:v92];
    v40 = [v10 hex];
    v41 = HIDWORD(v40);
    v42 = HIDWORD(v40) + v40;
    if ((v40 & 0x80000000) == 0)
    {
      v43 = v40;
    }

    else
    {
      v43 = -v40;
    }

    if (v42 < 0)
    {
      v42 = -v42;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      LODWORD(v41) = -HIDWORD(v40);
    }

    if (v43 <= v41)
    {
      v44 = v41;
    }

    else
    {
      v44 = v43;
    }

    if (v42 >= v41 && v42 >= v43)
    {
      v46 = v42;
    }

    else
    {
      v46 = v44;
    }

    if (v46 < 2)
    {
      goto LABEL_164;
    }

    [(CSLHexAppGraph *)self removeNodeWithoutReflow:v10];
    [v91 removeObject:v10];
    [v92 removeObject:v10];
    v97 = 0;
    v98 = 0;
    if (!v39)
    {
      v76 = 1;
LABEL_155:
      [(CSLHexAppGraph *)self removeNodeWithoutReflow:v10];
      [v91 removeAllObjects];
      [v92 removeAllObjects];
      if (v97 == 1)
      {
        [(CSLHexAppGraph *)self setNode:v10 toHex:v98];
        if (v76)
        {
          [v11 addObject:v10];
        }

        v77 = cslprf_icon_field_log();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          sub_F530(&v98, &buf);
          v85 = "final";
          if (v76)
          {
            v85 = "intermediate";
          }

          p_buf = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v110 = 136315650;
          *&v110[4] = v85;
          *&v110[12] = 2112;
          *&v110[14] = v10;
          *&v110[22] = 2080;
          *&v110[24] = p_buf;
          _os_log_debug_impl(&dword_0, v77, OS_LOG_TYPE_DEBUG, "[lonely %s] move %@ -> %s", v110, 0x20u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v107.__r_.__value_.__r.__words[0] = [(CSLHexAppGraph *)self firstGoodEmptyHex];
        v78 = cslprf_icon_field_log();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          sub_F530(&v107, v110);
          v84 = v110;
          if (v110[23] < 0)
          {
            v84 = *v110;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 138412546;
          *(buf.__r_.__value_.__r.__words + 4) = v10;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v84;
          _os_log_debug_impl(&dword_0, v78, OS_LOG_TYPE_DEBUG, "[should not happen - searched from center] move %@ -> %s", &buf, 0x16u);
          if ((v110[23] & 0x80000000) != 0)
          {
            operator delete(*v110);
          }
        }

        [(CSLHexAppGraph *)self setNode:v10 toHex:v107.__r_.__value_.__r.__words[0]];
      }

      goto LABEL_164;
    }

    v47 = 0;
    v48 = 0;
    v95 = [v10 hex];
    v96 = 0;
    while (1)
    {
      *v99 = sub_106DC(&v95);
      *&v99[8] = v49;
      if ((v99[0] & 1) == 0)
      {
        break;
      }

      v50 = [(CSLHexAppGraph *)self nodeAtHex:*&v99[4]];
      if (v50)
      {
        v51 = cslprf_icon_field_log();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v107.__r_.__value_.__r.__words[0] = [v10 hex];
          sub_F530(&v107, v110);
          v71 = v110;
          if (v110[23] < 0)
          {
            v71 = *v110;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 138412546;
          *(buf.__r_.__value_.__r.__words + 4) = v50;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v71;
          _os_log_debug_impl(&dword_0, v51, OS_LOG_TYPE_DEBUG, "[less lonely] %@ occupied (neighbors of %s)", &buf, 0x16u);
          if ((v110[23] & 0x80000000) != 0)
          {
            operator delete(*v110);
          }
        }

        if (v47 >= 1)
        {

          goto LABEL_163;
        }

        ++v47;
      }

      else
      {
        v52 = (*&v99[4] & 0xFFFFFFFF00000000) + 0x100000000;
        v53 = (*&v99[4] - 1);
        v54 = (*&v99[4] + 1);
        *v110 = v52 & 0xFFFFFFFF00000000 | *&v99[4];
        *&v110[8] = v54 | *&v99[4] & 0xFFFFFFFF00000000;
        *&v110[16] = ((*&v99[4] & 0xFFFFFFFF00000000) - 0x100000000) | v54;
        *&v110[24] = ((*&v99[4] & 0xFFFFFFFF00000000) - 0x100000000) & 0xFFFFFFFF00000000 | *&v99[4];
        v111 = v53 | *&v99[4] & 0xFFFFFFFF00000000;
        v112 = v52 | v53;
        sub_174F8(v94, v110, 6);
        v55 = [(CSLHexAppGraph *)self checkHexes:v94 connectedNodes:v91 disconnectedNodes:v92];
        sub_4470(v94);
        if (v55)
        {
          v56 = [(CSLHexAppGraph *)self directNeighborCountOfHex:*&v99[4]];
          v57 = cslprf_icon_field_log();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            sub_F530(&v99[4], &buf);
            v74 = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v74 = buf.__r_.__value_.__r.__words[0];
            }

            v88 = v74;
            v93 = [v10 hex];
            sub_F530(&v93, &v107);
            v75 = &v107;
            if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v75 = v107.__r_.__value_.__r.__words[0];
            }

            *v110 = 136315650;
            *&v110[4] = v88;
            *&v110[12] = 1024;
            *&v110[14] = v56;
            *&v110[18] = 2080;
            *&v110[20] = v75;
            _os_log_debug_impl(&dword_0, v57, OS_LOG_TYPE_DEBUG, "[less lonely] %s has %d neighbors (neighbors of %s)", v110, 0x1Cu);
            if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v107.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          if (v56 >= 1)
          {
            if (v56 > v48)
            {
              goto LABEL_93;
            }

            if (v56 == v48)
            {
              if (v97 != 1)
              {
                goto LABEL_93;
              }

              v59 = *&v99[4];
              v60 = *&v99[8];
              v61 = *&v99[8] + *&v99[4];
              if (*&v99[4] < 0)
              {
                v59 = -*&v99[4];
              }

              if (v61 < 0)
              {
                v61 = -v61;
              }

              if (*&v99[8] < 0)
              {
                v60 = -*&v99[8];
              }

              if (v59 <= v60)
              {
                v62 = v60;
              }

              else
              {
                v62 = v59;
              }

              if (v61 >= v60 && v61 >= v59)
              {
                v64 = v61;
              }

              else
              {
                v64 = v62;
              }

              v65 = v98;
              v66 = HIDWORD(v98);
              v67 = HIDWORD(v98) + v98;
              if (v98 < 0)
              {
                v65 = -v98;
              }

              if (v67 < 0)
              {
                v67 = -v67;
              }

              if (v98 < 0)
              {
                v66 = -HIDWORD(v98);
              }

              v68 = v65 <= v66 ? v66 : v65;
              v69 = v67 >= v66 && v67 >= v65;
              v70 = v69 ? v67 : v68;
              if (v64 < v70)
              {
LABEL_93:
                v97 = 1;
                v98 = *&v99[4];
                goto LABEL_97;
              }
            }
          }
        }

        else
        {
          v58 = cslprf_icon_field_log();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            sub_F530(&v99[4], v110);
            if (v110[23] >= 0)
            {
              v72 = v110;
            }

            else
            {
              v72 = *v110;
            }

            v93 = [v10 hex];
            sub_F530(&v93, &buf);
            v73 = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v73 = buf.__r_.__value_.__r.__words[0];
            }

            LODWORD(v107.__r_.__value_.__l.__data_) = 136315394;
            *(v107.__r_.__value_.__r.__words + 4) = v72;
            WORD2(v107.__r_.__value_.__r.__words[1]) = 2080;
            *(&v107.__r_.__value_.__r.__words[1] + 6) = v73;
            _os_log_debug_impl(&dword_0, v58, OS_LOG_TYPE_DEBUG, "[less lonely] %s not connected (neighbors of %s)", &v107, 0x16u);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            if ((v110[23] & 0x80000000) != 0)
            {
              operator delete(*v110);
            }
          }
        }
      }

      v56 = v48;
LABEL_97:

      v48 = v56;
    }

    v76 = v48 < 2;
    if (v47 <= 1)
    {
      goto LABEL_155;
    }

LABEL_163:
    -[CSLHexAppGraph setNode:toHex:](self, "setNode:toHex:", v10, [v10 hex]);
LABEL_164:
    *v110 = v89;
    *&v110[8] = 0;
    while (1)
    {
      *v99 = sub_106DC(v110);
      *&v99[8] = v79;
      if ((v99[0] & 1) == 0)
      {
        break;
      }

      v80 = [(CSLHexAppGraph *)self nodeAtHex:*&v99[4]];
      v81 = v80;
      if (v80)
      {
        v82 = v80 == v10;
      }

      else
      {
        v82 = 1;
      }

      if (!v82 && [(CSLHexAppGraph *)self isLonelyHex:*&v99[4]])
      {
        [v11 addObject:v81];
      }
    }

LABEL_173:
  }
}

- (void)move343Node:(id)a3 toHex:(Hex)a4 final:(BOOL)a5
{
  v5 = a5;
  v52 = a4;
  v8 = a3;
  v9 = cslprf_icon_field_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_F530(&v52, &buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v40 = &stru_3D170;
    LODWORD(__p.__r_.__value_.__l.__data_) = 138412802;
    if (v5)
    {
      v40 = @"(final)";
    }

    *(__p.__r_.__value_.__r.__words + 4) = v8;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = p_buf;
    HIWORD(__p.__r_.__value_.__r.__words[2]) = 2112;
    v54 = v40;
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "[343 move] consider move %@ -> %s %@", &__p, 0x20u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  [(NSMutableSet *)self->_changedNodes removeAllObjects];
  v10 = [v8 hex];
  if (*&v52 != v10 && v52.r >= -2 && (v52.r + 2 * v52.q + 3) <= 6)
  {
    [(CSLHexAppGraph *)self revertMove];
    v11 = [v8 hex];
    [(CSLHexAppGraph *)self removeNodeWithoutReflow:v8];
    v12 = cslprf_icon_field_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_F530(&v52, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &buf;
      }

      else
      {
        v41 = buf.__r_.__value_.__r.__words[0];
      }

      v42 = &stru_3D170;
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412802;
      if (v5)
      {
        v42 = @"(final)";
      }

      *(__p.__r_.__value_.__r.__words + 4) = v8;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v41;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2112;
      v54 = v42;
      _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "[343 move] WILL move %@ -> %s %@", &__p, 0x20u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    v13 = self;
    v51 = v13;
    q = v52.q;
    r = v52.r;
    v16 = [v8 hex];
    if (r == HIDWORD(v11))
    {
      v17 = q > v11;
    }

    else
    {
      v17 = r > SHIDWORD(v11);
    }

    v50 = v52;
    v18 = v8;
    v19 = v18;
    if (v17)
    {
      v49 = v52;
      v20 = v18;
      do
      {
        v21 = sub_121AC(&v49);
        if (v21)
        {
          v50 = __PAIR64__(v22, HIDWORD(v21));
          v23 = [(CSLHexAppGraph *)v13 nodeAtHex:__PAIR64__(v22, HIDWORD(v21))];
          sub_12230(&v51, v20, v50, v23);
        }

        else
        {
          v24 = cslprf_icon_field_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            sub_F530(&v50, &__p);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = p_p;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v20;
            _os_log_debug_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "[343 move] reverse enumerator ended after:%s unplacedNode:%@", &buf, 0x16u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          v23 = 0;
          if (v20 && v20 != v19)
          {
            v43 = [NSString stringWithFormat:@"integrity error, reverse iterator reached end with unplaced node:%@", v20];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v44 = NSStringFromSelector(a2);
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              LODWORD(__p.__r_.__value_.__l.__data_) = 138544642;
              *(__p.__r_.__value_.__r.__words + 4) = v44;
              WORD2(__p.__r_.__value_.__r.__words[1]) = 2114;
              *(&__p.__r_.__value_.__r.__words[1] + 6) = v46;
              HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
              v54 = v13;
              v55 = 2114;
              v56 = @"CSLHexAppGraph.mm";
              v57 = 1024;
              v58 = 771;
              v59 = 2114;
              v60 = v43;
              _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__p, 0x3Au);
            }

            v47 = v43;
            [v43 UTF8String];
            v48 = _bs_set_crash_log_message();
            sub_23EF4(v48);
          }
        }

        v25 = SHIDWORD(v50) > SHIDWORD(v16);
        if (HIDWORD(v50) == HIDWORD(v16))
        {
          v25 = v50 > v16;
        }

        v26 = !v25 || v23 == 0;
        v20 = v23;
      }

      while (!v26);
    }

    else
    {
      v28 = [v18 hex];
      v29 = v28;
      v30 = HIDWORD(v28);
      __p.__r_.__value_.__l.__data_ = v52;
      do
      {
        v31 = sub_F8B4(&__p);
        v50 = __PAIR64__(v32, HIDWORD(v31));
        v23 = [(CSLHexAppGraph *)v13 nodeAtHex:__PAIR64__(v32, HIDWORD(v31))];
        sub_12230(&v51, v19, v50, v23);

        v33 = SHIDWORD(v50) < v30;
        if (HIDWORD(v50) == v30)
        {
          v33 = v50 < v29;
        }

        v34 = !v33 || v23 == 0;
        v19 = v23;
      }

      while (!v34);
    }
  }

  if (v5)
  {
    v35 = 0;
  }

  else
  {
    v35 = v8;
  }

  [(CSLHexAppGraph *)self integrityCheckIgnoringNode:v35 shouldCheckNeighbors:0];
  [(CSLHexAppGraph *)self collapseAll343Holes];
  [(CSLHexAppGraph *)self integrityCheckIgnoringNode:v35 shouldCheckNeighbors:1];
  if ([(NSMutableSet *)self->_changedNodes count])
  {
    v36 = cslprf_icon_field_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [(NSMutableSet *)self->_changedNodes count];
      [(CSLHexAppGraph *)self delegate];
      objc_claimAutoreleasedReturnValue();
      sub_23EFC();
    }

    v37 = [(CSLHexAppGraph *)self delegate];
    v38 = [(NSMutableSet *)self->_changedNodes allObjects];
    [v37 hexAppGraph:self addedNodes:0 removedNodes:0 movedNodes:v38];
  }
}

- (void)commitMovedNode:(id)a3 withReason:(unint64_t)a4
{
  v10 = a3;
  for (i = self->_nodes.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = i[3];
    if ([v7 moved])
    {
      if (v10)
      {
        v8 = v7 == v10;
      }

      else
      {
        v8 = 1;
      }

      v9 = v8;
      [v7 commitHexForReason:a4 isDirect:v9];
    }
  }

  if (v10)
  {
    [(CSLHexAppGraph *)self setLastReorderReason:a4];
  }

  [(CSLHexAppGraph *)self integrityCheckIgnoringNode:0 shouldCheckNeighbors:1];
}

- (void)revertMove
{
  v17 = +[NSMutableArray array];
  for (i = self->_nodes.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i[3];
    if ([v4 moved])
    {
      [v17 addObject:v4];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v17;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (j = 0; j != v6; j = j + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(CSLHexAppGraph *)self removeNodeWithoutReflow:*(*(&v24 + 1) + 8 * j)];
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = cslprf_icon_field_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v13 savedHex];
          sub_F530(&v18, &__p);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 138412546;
          v29 = v13;
          v30 = 2080;
          v31 = p_p;
          _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "reverted %@ -> %s", buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        -[CSLHexAppGraph setNode:toHex:](self, "setNode:toHex:", v13, [v13 savedHex]);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v16 = [v9 countByEnumeratingWithState:&v20 objects:v32 count:16];
      v10 = v16;
    }

    while (v16);
  }

  [(CSLHexAppGraph *)self integrityCheckIgnoringNode:0 shouldCheckNeighbors:1];
}

- (id)nodeWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSLHexAppGraph *)self nodesByBundle];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)nodeAtHex:(Hex)a3
{
  v5 = a3;
  v3 = sub_40D8(&self->_nodes.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (void)calculateNeighborCounts
{
  sub_18508(&self->_neighborCounts.__table_.__bucket_list_.__ptr_);
  self->_neighborCountValid = 0;
  for (i = self->_nodes.__table_.__first_node_.__next_; i; i = *i)
  {
    [(CSLHexAppGraph *)self incrementNeighborCountsForHex:i[2]];
  }

  self->_neighborCountValid = 1;
}

- (void)incrementNeighborCountsForHex:(Hex)a3
{
  v9 = a3;
  v10 = 0;
  v7 = sub_106DC(&v9);
  for (i = v4; (v7 & 1) != 0; i = v6)
  {
    v5 = sub_40D8(&self->_neighborCounts.__table_.__bucket_list_.__ptr_, &v7 + 1);
    if (v5)
    {
      ++*(v5 + 6);
    }

    else
    {
      sub_18574(&self->_neighborCounts.__table_.__bucket_list_.__ptr_, &v7 + 1);
    }

    v7 = sub_106DC(&v9);
  }
}

- (void)decrementNeighborCountsForHex:(Hex)a3
{
  v9 = a3;
  v10 = 0;
  v7 = sub_106DC(&v9);
  for (i = v4; (v7 & 1) != 0; i = v6)
  {
    v5 = sub_40D8(&self->_neighborCounts.__table_.__bucket_list_.__ptr_, &v7 + 1);
    if (v5)
    {
      --*(v5 + 6);
    }

    v7 = sub_106DC(&v9);
  }
}

- (void)resetToDefaults:(id)a3
{
  v4 = a3;
  [v4 allNodes];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v5 = v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        v11 = [(CSLHexAppGraph *)self nodeWithBundleIdentifier:v10];
        v12 = v11 == 0;

        if (v12)
        {
          [v4 removeNode:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  [(CSLHexAppGraph *)self allNodes];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v13 = v23 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [*(*(&v22 + 1) + 8 * j) bundleIdentifier];
        v18 = [v4 nodeWithBundleIdentifier:v17];
        v19 = v18 == 0;

        if (v19)
        {
          v20 = [v4 addNodeWithBundleIdentifier:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v21 = [(CSLHexAppGraph *)self changeToMatch:v4];
}

- (id)changeToMatch:(id)a3
{
  v4 = a3;
  if ([v4 integrityCheck])
  {
    self->_isVerticalOnly = [v4 isVerticalOnly];
    v40 = +[NSMutableArray array];
    v41 = +[NSMutableArray array];
    v39 = +[NSMutableArray array];
    [(CSLHexAppGraph *)self allNodes];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    obj = v57 = 0u;
    v5 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v5)
    {
      v6 = *v57;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v57 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v56 + 1) + 8 * i);
          v9 = [v8 bundleIdentifier];
          v10 = [v4 nodeWithBundleIdentifier:v9];
          v11 = v10 == 0;

          if (v11)
          {
            v12 = [(CSLHexAppGraph *)self nodesByBundle];
            v13 = [v8 bundleIdentifier];
            [v12 removeObjectForKey:v13];

            -[CSLHexAppGraph removeNodeObjectForKey:](self, "removeNodeObjectForKey:", [v8 hex]);
            [v41 addObject:v8];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v5);
    }

    [v4 allNodes];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v42 = v53 = 0u;
    v14 = [v42 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v14)
    {
      v15 = *v53;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(v42);
          }

          v17 = *(*(&v52 + 1) + 8 * j);
          v18 = [v17 bundleIdentifier];
          v19 = [(CSLHexAppGraph *)self nodeWithBundleIdentifier:v18];

          if (v19)
          {
            v20 = [v19 hex];
            if (v20 != [v17 hex])
            {
              -[CSLHexAppGraph removeNodeObjectForKey:](self, "removeNodeObjectForKey:", [v19 hex]);
              [v19 setHex:{objc_msgSend(v17, "hex")}];
              [v39 addObject:v19];
            }
          }

          else
          {
            v21 = [v17 copy];
            [v40 addObject:v21];
          }
        }

        v14 = [v42 countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v14);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v22 = v39;
    v23 = [v22 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v23)
    {
      v24 = *v49;
      do
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(v22);
          }

          -[CSLHexAppGraph setNodeObject:forKey:](self, "setNodeObject:forKey:", *(*(&v48 + 1) + 8 * k), [*(*(&v48 + 1) + 8 * k) hex]);
        }

        v23 = [v22 countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v23);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = v40;
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v27)
    {
      v28 = *v45;
      do
      {
        for (m = 0; m != v27; m = m + 1)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v44 + 1) + 8 * m);
          -[CSLHexAppGraph setNodeObject:forKey:](self, "setNodeObject:forKey:", v30, [v30 hex]);
          v31 = [(CSLHexAppGraph *)self nodesByBundle];
          v32 = [v30 bundleIdentifier];
          [v31 setObject:v30 forKey:v32];
        }

        v27 = [v26 countByEnumeratingWithState:&v44 objects:v60 count:16];
      }

      while (v27);
    }

    [(CSLHexAppGraph *)self integrityCheckIgnoringNode:0 shouldCheckNeighbors:1];
    -[CSLHexAppGraph setLastReorderReason:](self, "setLastReorderReason:", [v4 lastReorderReason]);
    if ([v26 count] || objc_msgSend(v41, "count") || objc_msgSend(v22, "count"))
    {
      v33 = [(CSLHexAppGraph *)self delegate];
      [v33 hexAppGraph:self addedNodes:v26 removedNodes:v41 movedNodes:v22];
    }

    v34 = [v26 firstObject];

    v35 = v41;
    goto LABEL_45;
  }

  v36 = cslprf_icon_field_log();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    [v4 abbreviatedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_24190();
  }

  v37 = CSLDiagnosticFilename(@"InvalidIconGraph");
  v26 = CSLDiagnosticFileURLWithFilename(v37);

  if (v26)
  {
    v35 = [v4 description];
    v34 = 0;
    [v35 writeToURL:v26 atomically:1 encoding:4 error:0];
LABEL_45:

    goto LABEL_46;
  }

  v34 = 0;
LABEL_46:

  return v34;
}

- (void)updateNormalizedRadius
{
  if (self->_normalizedRadiusDirty)
  {
    self->_normalizedHorizontalRadius = 0.0;
    self->_normalizedVerticalRadius = 0.0;
    next = self->_nodes.__table_.__first_node_.__next_;
    if (next)
    {
      v3 = 0;
      v4 = 0;
      normalizedVerticalTop = self->_normalizedVerticalTop;
      normalizedVerticalBottom = self->_normalizedVerticalBottom;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v9 = next[5];
        v10 = fabsf((vcvts_n_f32_s32(v9, 1uLL) + next[4]) * 1.7321);
        if (v10 > v8)
        {
          self->_normalizedHorizontalRadius = v10;
          v8 = v10;
        }

        v11 = v9 * 1.5;
        v12 = fabsf(v11);
        if (v12 > v7)
        {
          self->_normalizedVerticalRadius = v12;
          v7 = v12;
        }

        if (v11 < normalizedVerticalTop)
        {
          self->_normalizedVerticalTop = v11;
          normalizedVerticalTop = v9 * 1.5;
        }

        if (v11 > normalizedVerticalBottom)
        {
          self->_normalizedVerticalBottom = v11;
          normalizedVerticalBottom = v9 * 1.5;
        }

        if (v9 < v3)
        {
          v3 = v9;
        }

        if (v9 > v4)
        {
          v4 = v9;
        }

        next = *next;
      }

      while (next);
      v13 = v4 - v3 + 1;
    }

    else
    {
      v13 = 1;
    }

    self->_rowCount = v13;
    self->_normalizedRadiusDirty = 0;
  }
}

- (int64_t)neighborCountOfHex:(Hex)a3 upToMinimumNeighbors:(int64_t)a4 withinRange:(unint64_t)a5
{
  v20 = a3;
  if (a5 == 1 && self->_neighborCountValid)
  {
    v7 = sub_40D8(&self->_neighborCounts.__table_.__bucket_list_.__ptr_, &v20);
    if (v7)
    {
      return *(v7 + 6);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = a3;
    v15 = 3 * (a5 + a5 * a5);
    v16 = 0x100000000;
    v17 = 0;
    v18 = a3;
    v19 = 0;
    v12 = sub_2B2C(&v14);
    v13 = v9;
    for (i = 0; (v12 & 1) != 0; v13 = v10)
    {
      if (sub_40D8(&self->_nodes.__table_.__bucket_list_.__ptr_, &v12 + 1))
      {
        if (++i >= a4)
        {
          break;
        }
      }

      v12 = sub_2B2C(&v14);
    }
  }

  return i;
}

- (void)moveNode:(id)a3 toHex:(Hex)a4
{
  v6 = a3;
  -[CSLHexAppGraph removeNodeObjectForKey:](self, "removeNodeObjectForKey:", [v6 hex]);
  [v6 setHex:a4];
  [(CSLHexAppGraph *)self setNodeObject:v6 forKey:a4];
  [(NSMutableSet *)self->_changedNodes addObject:v6];
}

- (void)setNode:(id)a3 toHex:(Hex)a4
{
  v6 = a3;
  [v6 setHex:a4];
  [(CSLHexAppGraph *)self setNodeObject:v6 forKey:a4];
  [(NSMutableSet *)self->_changedNodes addObject:v6];
}

- (void)setNodeObject:(id)a3 forKey:(Hex)a4
{
  v6[0] = a4;
  v5 = a3;
  v6[2] = v6;
  sub_187C0(&self->_nodes.__table_.__bucket_list_.__ptr_, v6)[3] = v5;
  *&self->_neighborCountValid = 256;
}

- (void)removeNodeObjectForKey:(Hex)a3
{
  v4 = a3;
  sub_189FC(&self->_nodes.__table_.__bucket_list_.__ptr_, &v4);
  *&self->_neighborCountValid = 256;
}

- (BOOL)integrityCheckIgnoringNode:(id)a3 shouldCheckNeighbors:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSMutableSet set];
  v46 = +[NSMutableSet set];
  v47 = +[NSMutableSet set];
  next = self->_nodes.__table_.__first_node_.__next_;
  if (!next)
  {
LABEL_36:
    *v55 = 0;
    *&v55[8] = v55;
    *&v55[16] = 0x2020000000;
    v55[24] = 1;
    v25 = [(CSLHexAppGraph *)self nodesByBundle];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_14AA0;
    v48[3] = &unk_3CBE0;
    v49 = v7;
    v26 = v6;
    v50 = v26;
    v51 = v55;
    [v25 enumerateKeysAndObjectsUsingBlock:v48];

    if (*(*&v55[8] + 24))
    {
      size = self->_nodes.__table_.__size_;
      v28 = [(CSLHexAppGraph *)self nodesByBundle];
      v29 = [v28 count];

      if (size == v29 || v26 && (size + 1) == v29)
      {
        v30 = 1;
LABEL_55:

        _Block_object_dispose(v55, 8);
        goto LABEL_59;
      }

      v33 = cslprf_icon_field_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v41 = self->_nodes.__table_.__size_;
        v42 = [(CSLHexAppGraph *)self nodesByBundle];
        v43 = [v42 count];
        *buf = 67109376;
        *&buf[4] = v41;
        LOWORD(v57[0]) = 1024;
        *(v57 + 2) = v43;
        _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "nodes count:%d != nodesByBundleCount:%d", buf, 0xEu);
      }
    }

    v30 = 0;
    goto LABEL_55;
  }

  while (1)
  {
    v54 = next[1];
    v9 = *(&v54 + 1);
    if (self->_isVerticalOnly && (SDWORD1(v54) < -2 || (DWORD1(v54) + 2 * v54 + 3) >= 7))
    {
      v14 = cslprf_icon_field_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_F530(&v54, v55);
        sub_241D8(v55);
      }

      goto LABEL_58;
    }

    if ([v7 containsObject:v9])
    {
      v14 = cslprf_icon_field_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_243D0();
      }

      goto LABEL_58;
    }

    [v7 addObject:v9];
    v11 = [v9 hex];
    if (v54 != v11)
    {
      v14 = cslprf_icon_field_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_F530(&v54, v55);
        sub_24228(v55);
      }

      goto LABEL_58;
    }

    v12 = [(CSLHexAppGraph *)self nodesByBundle];
    v13 = [v9 bundleIdentifier];
    v14 = [v12 objectForKey:v13];

    if (v14 != v9)
    {
      v32 = cslprf_icon_field_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_24278();
      }

      goto LABEL_50;
    }

    if (v4 && ([v9 isEqual:v6]& 1) == 0)
    {
      break;
    }

LABEL_35:

    next = *next;
    if (!next)
    {
      goto LABEL_36;
    }
  }

  if (!self->_isVerticalOnly)
  {
    v19 = v54;
    v20 = DWORD1(v54);
    v21 = DWORD1(v54) + v54;
    if (v54 < 0)
    {
      v19 = -v54;
    }

    if (v21 < 0)
    {
      v21 = -v21;
    }

    if (SDWORD1(v54) < 0)
    {
      v20 = -DWORD1(v54);
    }

    if (v19 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    if (v21 >= v20 && v21 >= v19)
    {
      v24 = v21;
    }

    else
    {
      v24 = v22;
    }

    if (v24 >= 2 && ![(CSLHexAppGraph *)self hex:v54 hasAtLeastNNearbyNodes:2 withinRange:1])
    {
      v35 = [NSMutableArray arrayWithCapacity:6];
      *buf = v54;
      v57[0] = 0;
      while (1)
      {
        *v52 = sub_106DC(buf);
        *&v52[8] = v36;
        if ((v52[0] & 1) == 0)
        {
          break;
        }

        v37 = [(CSLHexAppGraph *)self nodeAtHex:*&v52[4]];
        v38 = v37;
        if (v37)
        {
          v39 = [v37 description];
          [v35 addObject:v39];
        }
      }

      v40 = cslprf_icon_field_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v44 = [v35 count];
        v45 = [v35 componentsJoinedByString:{@", "}];
        *v55 = 138543874;
        *&v55[4] = v9;
        *&v55[12] = 1024;
        *&v55[14] = v44;
        *&v55[18] = 2114;
        *&v55[20] = v45;
        _os_log_error_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "neighbor check failed %{public}@ has only %d neighbors: %{public}@", v55, 0x1Cu);
      }

      goto LABEL_58;
    }

    if (![(CSLHexAppGraph *)self checkNode:v9 connectedNodes:v47 disconnectedNodes:v46])
    {
      v32 = cslprf_icon_field_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_242EC();
      }

LABEL_50:

      goto LABEL_58;
    }

    goto LABEL_35;
  }

  v15 = [(CSLHexAppGraph *)self count];
  *v52 = 0xFFFFFFFE00000000;
  if (!v15)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v16 = sub_F8B4(v52);
    v53 = __PAIR64__(v17, HIDWORD(v16));
    v18 = [(CSLHexAppGraph *)self nodeAtHex:__PAIR64__(v17, HIDWORD(v16))];
    if (!v18)
    {
      break;
    }

    if (!--v15)
    {
      goto LABEL_35;
    }
  }

  v31 = cslprf_icon_field_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_F530(&v53, v55);
    sub_2435C();
  }

LABEL_58:
  v30 = 0;
LABEL_59:

  return v30;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initVerticalOnly:", self->_isVerticalOnly}];
  v5 = v4;
  if (v4)
  {
    [v4 setLastReorderReason:self->_lastReorderReason];
    for (i = self->_nodes.__table_.__first_node_.__next_; i; i = *i)
    {
      v7 = [i[3] copy];
      v12 = v7;
      v8 = v5[17];
      v9 = [v7 bundleIdentifier];
      [v8 setObject:v7 forKey:v9];

      v11 = [v12 hex];
      sub_18A34(v5 + 4, &v11);
    }

    *(v5 + 8) = 0;
  }

  return v5;
}

- (CSLHexAppGraph)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSSet setWithObject:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"Version"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 intValue];
    v8 = v7 < 2;
    if (v7 >= 2)
    {
      v9 = cslprf_icon_field_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_244B0();
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  if ([v4 containsValueForKey:@"verticalOnly"])
  {
    v10 = [v4 decodeBoolForKey:@"verticalOnly"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CSLHexAppGraph *)self initVerticalOnly:v10];
  if (v11)
  {
    if (v8)
    {
      if ([v4 containsValueForKey:@"lastReason"])
      {
        [v11 setLastReorderReason:{objc_msgSend(v4, "decodeIntegerForKey:", @"lastReason"}];
      }

      v12 = objc_opt_class();
      v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"Nodes"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_15020;
        v19[3] = &unk_3CC08;
        v15 = v11;
        v20 = v15;
        v6 = v14;
        [v6 enumerateObjectsUsingBlock:v19];

        [(CSLHexAppGraph *)v15 calculateNeighborCounts];
        if ([(CSLHexAppGraph *)v15 integrityCheck])
        {
          goto LABEL_24;
        }
      }

      else
      {
        v16 = cslprf_icon_field_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_24534();
        }

        v6 = v14;
      }
    }

    v17 = cslprf_icon_field_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [v11 abbreviatedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_245A4();
    }

    v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_24:

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeObject:&off_3E080 forKey:@"Version"];
  if (self->_isVerticalOnly)
  {
    [v7 encodeBool:1 forKey:@"verticalOnly"];
  }

  lastReorderReason = self->_lastReorderReason;
  if (lastReorderReason)
  {
    [v7 encodeInteger:lastReorderReason forKey:@"lastReason"];
  }

  v5 = objc_alloc_init(NSMutableSet);
  for (i = &self->_nodes.__table_.__first_node_; ; [v5 addObject:i[3].__next_])
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  [v7 encodeObject:v5 forKey:@"Nodes"];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v9 = [(CSLHexAppGraph *)self nodesByBundle];
  v10 = [v9 countByEnumeratingWithState:a3 objects:a4 count:a5];

  var1 = a3->var1;
  a3->var1 = a4;
  if (v10)
  {
    v12 = v10;
    do
    {
      v13 = [(CSLHexAppGraph *)self nodesByBundle];
      v14 = [v13 objectForKey:*var1];
      ++var1;
      *a4++ = v14;

      --v12;
    }

    while (v12);
  }

  return v10;
}

- (id)description
{
  v3 = [(NSMutableDictionary *)self->_nodesByBundle allValues];
  v4 = [v3 sortedArrayUsingComparator:&stru_3CC28];
  v5 = [NSString stringWithFormat:@"graph<%p>: %@", self, v4];

  return v5;
}

- (NSString)abbreviatedDescription
{
  v2 = [(NSMutableDictionary *)self->_nodesByBundle allValues];
  v3 = CSLHexNodesAbbreviatedDescription(v2);

  return v3;
}

+ (id)unarchiveFromDictionaryRepresentation:(id)a3
{
  v3 = [a1 unarchiveFromPropertyList:a3];

  return v3;
}

- (id)archiveToPropertyList
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInteger:self->_lastReorderReason];
  [v3 setValue:v4 forKey:@"lastReason"];

  if (self->_isVerticalOnly)
  {
    v5 = [NSNumber numberWithBool:1];
    [v3 setValue:v5 forKey:@"verticalOnly"];
  }

  v6 = [NSMutableArray arrayWithCapacity:self->_nodes.__table_.__size_];
  for (i = self->_nodes.__table_.__first_node_.__next_; i; i = *i)
  {
    v8 = i[3];
    v9 = [v8 archiveToDictionary];
    [v6 addObject:v9];
  }

  [v3 setObject:v6 forKey:@"nodes"];

  return v3;
}

- (id)initFromPropertyList:(id)a3
{
  v4 = a3;
  v5 = [(CSLHexAppGraph *)self initVerticalOnly:0];
  if (v5)
  {
    v6 = v4;
    if ([v6 count])
    {
      v43 = 0;
      v44[0] = &v43;
      v44[1] = 0x2020000000;
      v44[2] = 0;
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 1;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_15A6C;
      v25[3] = &unk_3CC50;
      v27 = &v31;
      v28 = &v39;
      v7 = v5;
      v26 = v7;
      v29 = &v35;
      v30 = &v43;
      [v6 enumerateKeysAndObjectsUsingBlock:v25];
      if (*(v32 + 24) != 1)
      {
        goto LABEL_19;
      }

      v8 = *(v7 + 7);
      v9 = [*(v7 + 17) count];
      v10 = v32;
      *(v32 + 24) = v8 == v9;
      v11 = (v10 + 3);
      if (v8 != v9)
      {
        v12 = cslprf_icon_field_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_24608(v51, *(v7 + 7), [*(v7 + 17) count], v12);
        }

        v11 = (v32 + 3);
        if ((v32[3] & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (*(v36 + 24) == 1)
      {
        v13 = *(v7 + 7) == *(v44[0] + 24);
        *v11 = v13;
        if (!v13)
        {
          v14 = cslprf_icon_field_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_24654(v7 + 7, v44, v14);
          }

          if ((v32[3] & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      if ((v36[3] & 1) == 0)
      {
        v15 = *(v7 + 7);
        v16 = *(v40 + 24);
        v17 = [v6 count];
        *(v32 + 24) = v15 + v16 == v17;
        if ((v15 + v16) != v17)
        {
          v18 = cslprf_icon_field_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v22 = *(v7 + 7);
            v23 = *(v40 + 24);
            v24 = [v6 count];
            *buf = 134218496;
            v46 = v22;
            v47 = 1024;
            v48 = v23;
            v49 = 2048;
            v50 = v24;
            _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "invalid count (%ld + %d != %ld)", buf, 0x1Cu);
          }

          if ((v32[3] & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      [v7 calculateNeighborCounts];
      v19 = [v7 integrityCheck];
      *(v32 + 24) = v19;
      if ((v19 & 1) == 0)
      {
LABEL_19:
        v20 = cslprf_icon_field_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_246D8();
        }

        v7 = 0;
      }

      _Block_object_dispose(&v31, 8);
      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v43, 8);
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)unarchiveFromPropertyList:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(objc_opt_class()) initFromPropertyList:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_emplaceNodeAtHex:(Hex)a3 withBundleIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v9 = [[CSLHexAppNode alloc] initWithBundleIdentifier:v6 hex:a3];
  [(NSMutableDictionary *)self->_nodesByBundle setObject:v9 forKey:v6];
  sub_18A34(&self->_nodes.__table_.__bucket_list_.__ptr_, &v10);
  v7 = v9;

  return v7;
}

- (id)migrateToVerticalOnly
{
  v3 = [[CSLHexAppGraph alloc] initVerticalOnly:1];
  sub_17E6C(v44, &self->_nodes);
  v42 = 0;
  v43 = 0xFFFFFFFE00000000;
  v40 = 0;
  v41 = 0;
  while (1)
  {
    LODWORD(__p) = sub_F8B4(&v43) >> 32;
    HIDWORD(__p) = v4;
    if (v4 > 2)
    {
      break;
    }

    *&v36 = __p;
    if (!v4 && !self->_isVerticalOnly && !__p)
    {
      *&v36 = 4294967294;
      if (!sub_40D8(v44, &v36))
      {
        *&v36 = 2;
      }
    }

    v5 = sub_40D8(v44, &v36);
    v6 = v5;
    if (v5)
    {
      v7 = __p;
      v8 = [v5[3] bundleIdentifier];
      v9 = [(CSLHexAppGraph *)v3 _emplaceNodeAtHex:v7 withBundleIdentifier:v8];

      if (![v9 directPlacementReason])
      {
        [v9 setDirectPlacementReason:3];
      }

      sub_4194(v44, v6);
    }

    else
    {
      sub_1697C(&v40, &__p);
    }
  }

  v10 = v45;
  if (self->_isVerticalOnly && v45 != 0)
  {
    do
    {
      while (1)
      {
        v27 = *(v10 + 16);
        v28 = SHIDWORD(v27) < -2 || (HIDWORD(v27) + 2 * v27 + 3) > 6;
        if (!v28 && ![(CSLHexAppGraph *)v3 containsNodeAtHex:*(v10 + 16)])
        {
          break;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_18;
        }
      }

      v29 = [*(v10 + 24) bundleIdentifier];
      v30 = [(CSLHexAppGraph *)v3 _emplaceNodeAtHex:v27 withBundleIdentifier:v29];

      if (![v30 directPlacementReason])
      {
        [v30 setDirectPlacementReason:3];
      }

      v10 = sub_4194(v44, v10);
    }

    while (v10);
  }

LABEL_18:
  __p = 0;
  v38 = 0;
  v39 = 0;
  sub_16A50(&__p, v46);
  for (i = v45; i; i = *i)
  {
    v36 = *(i + 16);
    sub_1697C(&__p, &v36);
  }

  v13 = 126 - 2 * __clz((v38 - __p) >> 3);
  if (v38 == __p)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  sub_18C7C(__p, v38, v14, 1);
  v15 = __p;
  v16 = v38;
  while (v15 != v16)
  {
    *&v36 = *v15;
    v17 = sub_40D8(v44, &v36);
    if (v17)
    {
      v19 = v40;
      v18 = v41;
      if (v40 == v41)
      {
        v22 = sub_F8B4(&v43);
        v21 = v23;
        v20 = HIDWORD(v22);
        v19 = v40;
        v18 = v41;
      }

      else
      {
        v20 = *v40;
        v21 = *(v40 + 1);
      }

      if (v19 != v18)
      {
        v24 = v18 - (v19 + 8);
        if (v18 != v19 + 8)
        {
          memmove(v19, v19 + 8, v18 - (v19 + 8));
        }

        v41 = &v19[v24];
      }

      v25 = [v17[3] bundleIdentifier];
      v26 = [(CSLHexAppGraph *)v3 _emplaceNodeAtHex:v20 | (v21 << 32) withBundleIdentifier:v25];

      if (![v26 directPlacementReason])
      {
        [v26 setDirectPlacementReason:3];
      }
    }

    v15 += 8;
  }

  v31 = [(CSLHexAppGraph *)self lastReorderReason];
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = 3;
  }

  [(CSLHexAppGraph *)v3 setLastReorderReason:v32, v36];
  if (![(CSLHexAppGraph *)v3 integrityCheckIgnoringNode:0 shouldCheckNeighbors:0]|| ([(CSLHexAppGraph *)v3 collapseAll343Holes], ![(CSLHexAppGraph *)v3 integrityCheckIgnoringNode:0 shouldCheckNeighbors:1]))
  {
    v33 = self;

    v3 = v33;
  }

  v34 = v3;
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  sub_4470(v44);

  return v34;
}

- (void)moveNodesWithBundleIdentifiers:(id)a3 toStartingHex:(Hex)a4 forReason:(unint64_t)a5
{
  v30 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a3;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v7)
  {
    v9 = *v27;
    *&v8 = 138412546;
    v22 = v8;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [(CSLHexAppGraph *)self nodeWithBundleIdentifier:v11, v22];
        if (v12)
        {
          LODWORD(v25) = sub_F8B4(&v30) >> 32;
          HIDWORD(v25) = v13;
          v14 = cslprf_icon_field_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            sub_F530(&v25, &__p);
            v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v16 = __p.__r_.__value_.__r.__words[0];
            v17 = NSStringFromCSLHexAppPlacementReason(a5);
            v18 = v17;
            *buf = 138543874;
            p_p = &__p;
            if (v15 < 0)
            {
              p_p = v16;
            }

            v32 = v12;
            v33 = 2082;
            v34 = p_p;
            v35 = 2114;
            v36 = v17;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "moving node:%{public}@ to hex:%{public}s for reason:%{public}@", buf, 0x20u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          [(CSLHexAppGraph *)self moveNode:v12 toHex:v25 final:1];
          [(CSLHexAppGraph *)self commitMovedNode:v12 withReason:a5];
        }

        else
        {
          v20 = cslprf_icon_field_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = NSStringFromCSLHexAppPlacementReason(a5);
            *buf = v22;
            v32 = v11;
            v33 = 2114;
            v34 = v21;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "node not found : %@ cannot move to top for reason:%{public}@", buf, 0x16u);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v7);
  }
}

- (void)collapseAll343Holes
{
  if (!self->_isVerticalOnly)
  {
    v21 = sub_24AF4(self, buf);
    v22 = *buf;
    if (v21)
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      *&buf[4] = v23;
      v33 = 2114;
      v34 = v25;
      v35 = 2048;
      v36 = self;
      v37 = 2114;
      v38 = @"CSLHexAppGraph.mm";
      v39 = 1024;
      v40 = 2010;
      v41 = 2114;
      v42 = v22;
      _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    v27 = _bs_set_crash_log_message();
    sub_23EF4(v27);
  }

  size = self->_nodes.__table_.__size_;
  v30 = 0xFFFFFFFE00000000;
  v31 = 0xFFFFFFFE00000000;
  if (size >= 1)
  {
    v4 = 16 * size;
    do
    {
      v5 = sub_F8B4(&v31);
      *(&v7 + 1) = v6;
      *&v7 = v5;
      v8 = [(CSLHexAppGraph *)self nodeAtHex:(v7 >> 32)];
      if (v8)
      {
        LODWORD(v29) = sub_F8B4(&v30) >> 32;
        HIDWORD(v29) = v9;
        v10 = [v8 hex];
        if (v29 != v10 || HIDWORD(v29) != HIDWORD(v10))
        {
          v12 = cslprf_icon_field_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            sub_F530(&v29, &__p);
            v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v15 = __p.__r_.__value_.__r.__words[0];
            v16 = [(CSLHexAppGraph *)self nodeAtHex:v29];
            v17 = v16;
            *buf = 138412802;
            p_p = &__p;
            if (v14 < 0)
            {
              p_p = v15;
            }

            *&buf[4] = v8;
            v33 = 2080;
            v34 = p_p;
            v35 = 2112;
            v36 = v16;
            _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "[343 collapse] move %@ -> %s; displaced:%@; ", buf, 0x20u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          [(CSLHexAppGraph *)self moveNode:v8 toHex:v29];
        }

        --size;
      }

      if (size < 1)
      {
        break;
      }
    }

    while (v4-- > 1);
    if (size >= 1)
    {
      v19 = cslprf_icon_field_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(CSLHexAppGraph *)self description];
        objc_claimAutoreleasedReturnValue();
        sub_24B50();
      }
    }
  }
}

- (CSLHexAppGraphDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  return self;
}

@end