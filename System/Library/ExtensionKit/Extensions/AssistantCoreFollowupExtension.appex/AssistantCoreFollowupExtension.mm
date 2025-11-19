uint64_t FollowUpViewController.processFollowUpItem(_:selectedAction:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a3)
  {
    return a3(1);
  }

  __break(1u);
  return result;
}

id FollowUpViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1000014AC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FollowUpViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FollowUpViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}